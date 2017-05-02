<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<link rel="stylesheet" type="text/css" href="../../static/h-ui/css/H-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="../../static/h-ui.admin/css/H-ui.admin.css" />
    <link rel="stylesheet" type="text/css" href="../../lib/Hui-iconfont/1.0.8/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="../../static/h-ui.admin/skin/default/skin.css" id="skin" />


  


<aside class="Hui-aside">

    <div class="menu_dropdown bk_2">
        <dl id="menu-article">
            <dt><i class="Hui-iconfont">&#xe616;</i> 文章管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="my/admin/article?action=adminList" title="浏览文章">浏览文章</a></li>
                    <li><a href="my/admin/article?action=insert" title="发表文章">发表文章</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-picture">
            <dt><i class="Hui-iconfont">&#xe613;</i> 相册管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="my/admin/photo?action=adminList" title="浏览相册">浏览相册</a></li>
                    <li><a href="my/admin/photo?action=insert" title="上传图片">上传图片</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-product">
            <dt><i class="Hui-iconfont">&#xe620;</i> 影音管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>

                    <li><a href="my/admin/media?action=adminList" title="浏览影音">浏览影音</a></li>
                    <li><a href="my/admin/media?action=insert" title="上传影音">上传影音</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-comments">
            <dt><i class="Hui-iconfont">&#xe622;</i> 推荐文章<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="my/admin/elect?action=adminList" title="浏览推荐文章">浏览推荐文章</a></li>
                    <li><a href="my/admin/elect?action=insert" title="添加推荐文章">添加推荐文章</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-member">
            <dt><i class="Hui-iconfont">&#xe60d;</i> 好友管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="my/admin/friend?action=adminList" title="浏览好友">浏览好友</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-admin">
            <dt><i class="Hui-iconfont">&#xe62d;</i> 友情链接<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="my/admin/link?action=adminList" title="浏览友情链接">浏览友情链接</a></li>
                    <li><a href="my/admin/link?action=insert" title="添加友情链接">添加友情链接</a></li>

                </ul>
            </dd>
        </dl>
    </div>
</aside>
<div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>
<!--/_menu 作为公共模版分离出去-->
