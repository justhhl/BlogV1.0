package com.servlet;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.ArtReviewDao;
import com.dao.MediaDao;
import com.dao.MediaRevDao;
import com.dao.WordDao;
import com.toolsBean.Change;
import com.valueBean.MediaSingle;
import com.valueBean.UserSingle;

public class WordServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		doPost(request,response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String action=request.getParameter("action");
		if("linkTo".equals(action))
			doShowPage(request,response);
		else if("listShow".equals(action))
			doListShow(request,response);
		else if("review".equals(action))
			doReview(request,response);
		else if("delete".equals(action))
			doDelete(request,response);
		else
			doOther(request,response);
	}
	protected void doShowPage(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		request.setAttribute("mainPage",getInitParameter("leaveWordPage"));
		
		HttpSession session=request.getSession();
		UserSingle callMaster=(UserSingle)session.getAttribute("callBlogMaster");
		int userid=callMaster.getId();
		
		List wordList=null;
		WordDao wordDao=new WordDao();		
		try {
			wordList=wordDao.getNewWord(userid);
		} catch (SQLException e) {
			System.out.println("获取最新留言失败！");
			e.printStackTrace();			
		}
		request.setAttribute("wordList",wordList);
		
		String forward=this.getServletContext().getInitParameter("indexTemp");
		RequestDispatcher rd=request.getRequestDispatcher(forward);
		rd.forward(request,response);
	}
	protected void doListShow(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		HttpSession session=request.getSession();
		UserSingle callMaster=(UserSingle)session.getAttribute("callBlogMaster");

		int userid=callMaster.getId();
		String showPage=request.getParameter("showPage");
		String goWhich="my/guest/word?action=listShow";
		
		List wordList=null;
		WordDao wordDao=new WordDao();		
		try {
			wordList=wordDao.getMoreWord(userid,showPage, goWhich);
		} catch (SQLException e) {
			System.out.println("获取留言列表失败！");
			e.printStackTrace();			
		}
		request.setAttribute("wordList",wordList);
		request.setAttribute("createPage",wordDao.getPage());
		
		String forward=getInitParameter("listShowPage");
		RequestDispatcher rd=request.getRequestDispatcher(forward);
		rd.forward(request,response);
	}
	 public static final String UTF_8 = "UTF-8";
	 public String toUTF_8(String str) throws UnsupportedEncodingException{
		  return this.changeCharset(str, UTF_8);
		 }
	 public String changeCharset(String str, String newCharset)
			   throws UnsupportedEncodingException {
			  if (str != null) {
			   //用默认字符编码解码字符串。
			   byte[] bs = str.getBytes();
			   //用新的字符编码生成字符串
			   return new String(bs, newCharset);
			  }
			  return null;
			 }
	protected void doReview(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String forward="";
		String message=validateInsert(request);			//进行表单验证
		if(!"".equals(message))							//表单验证失败
			forward=this.getServletContext().getInitParameter("messagePage");
		else{											//表单验证成功
			HttpSession session=request.getSession();
			UserSingle callMaster=(UserSingle)session.getAttribute("callBlogMaster");
			
			int userid=callMaster.getId();			
			//String content=request.getParameter("wordContent");
			String content=new String(request.getParameter("wordContent").getBytes("iso-8859-1"),"UTF-8");
			//content=changeCharset(content,"UTF-8" );
			String time=Change.dateTimeChange(new Date());
			String author="";
			String noname=request.getParameter("noname");
			noname=changeCharset(noname,"UTF-8" );
			if("true".equals(noname))					//匿名发表
				author="BLOG游客";
			else										//不是匿名发表
				author=((UserSingle)session.getAttribute("logoner")).getUserName();

			try {
				WordDao wordDao=new WordDao();
				wordDao.insert(new Object[]{userid,content,author,time});
				message="<li>留言成功！</li>";
				forward="/my/guest/word?action=linkTo";		
			} catch (SQLException e) {			
				message="<li>留言失败！</li>";
				forward=this.getServletContext().getInitParameter("messagePage");
				e.printStackTrace();				
			}			
		}
		request.setAttribute("message",message);
		
		RequestDispatcher rd=request.getRequestDispatcher(forward);
		rd.forward(request,response);
	}	
	protected void doModify(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
	
	}
	protected void doDelete(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String message="";
		String forward="";
		int rootId=Change.strToInt(request.getParameter("rootId"));
		int id=Change.strToInt(request.getParameter("id"));
		
		int i=0;
		try {
			WordDao wordDao=new WordDao();
			i=wordDao.delete(id);
		} catch (SQLException e) {
			i=-1;
			e.printStackTrace();
		}
		if(i<=0){
			message="<li>删除留言失败！</li><a href='javascript:window.history.go(-1)'>【返回】</a>";
			forward=getServletContext().getInitParameter("messagePage");
		}
		else{
			message="<li>删除留言成功！</li>";
			forward="/my/guest/word?action=review&id="+rootId;
		}
		
		request.setAttribute("message",message);		
		RequestDispatcher rd=request.getRequestDispatcher(forward);
		rd.forward(request,response);
	}
	protected void doOther(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		
	}
	private String validateInsert(HttpServletRequest request) throws ServletException, IOException{
		String message="";
		String content=request.getParameter("wordContent");
		if(content==null||content.equals(""))
			message="<li>请输入 <b>留言内容！</b></li><a href='javascript:window.history.go(-1)'>【返回】</a>";
		return message; 
	}
}