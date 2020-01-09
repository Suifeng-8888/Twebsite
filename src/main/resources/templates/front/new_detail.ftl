<! DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <#import "/spring.ftl" as spring>
    <#assign arg = ["Taiwan Technology Co. Ltd","台湾科技有限公司"]>
    <title><@spring.messageArgs "title" ,arg /></title>

    <link type="text/css" rel="stylesheet" href="/static/js/layui/css/layui.css"  media="all">
    <link type="text/css" rel="stylesheet" href="/static/js/layui/css/main.css"  media="all">
    <link type="text/css" rel="stylesheet" href="/static/js/layui/css/search.css"  media="all">
    <link type="text/css" rel="stylesheet" href="/static/mycss/mine.css"  media="all">

</head>
<body>
<div class="container">
    <div class="layui-header" >
        <div class="layui-main top" >
            <div class="layui-logo">
                <img src="/static/imgs/logo.jpg"  class="layui-nav-img">
                <span>
                    <@spring.message "main.logo"/>
                </span>
            </div>
            <ul class="layui-nav layui-layout-right">
                <li class="layui-nav-item " >
                    <a href="javascript:;"><@spring.message "main.font"/>
                        <span class="layui-nav-more"></span>
                    </a>
                    <dl class="layui-nav-child" >
                        <dd><a class="changeLang" href="javascript:void(0);">繁体中文</a></dd>
                        <dd><a class="changeLang" href="javascript:void(0);">English</a></dd>
                    </dl>
                </li>
            </ul>
        </div>
        <div class="layui-main btm">
            <div class="nav-list">
                <a href="/front/index"><@spring.message "main.index"/></a>
                <a href="/front/download"><@spring.message "main.download"/></a>
                <a href="/front/handbook"><@spring.message "main.handbook"/></a>
                <a href="/front/news"><@spring.message "main.news"/></a>
            </div>
        </div>
    </div >

    <!--新闻详情-->
    <div id="only" style="display:none">${news.id}</div>
    <div id="page" style="display:none">${news.page}</div>
    <!--详情展示-->
    <div class="newsDetail">
        <div class="layui-container">
            <h2>${news.title}</h2>
            <div class="note">
            <span>
                <label><@spring.message "news.author"/>:</label>
                <span >${news.author}</span>
            </span>
                <span>
                <label><@spring.message "news.date"/>:</label>
                <span >${news.ntime}</span>
            </span>
            </div>
            <hr>
            <div class="content">
                <div>${news.content}</div>
            </div>
        </div>
        <button class="layui-btn layui-btn-warm" onclick="goBack()">返回列表</button>

    </div>

    <!--底部内容-->
    <div class="layui-footer">
        <div class="layui-row">
            <a href="#" >&copy; 2019 <@spring.messageArgs "title" ,arg /></a>
            <a href="" target="_blank" ><@spring.message "main.record"/></a>
        </div>
        <div class="layui-row">
            <a href="/contact" target="_blank"><@spring.message "main.contact" /></a>
        </div>
    </div>
</div>
<script src="/static/js/jquery-1.7.2.js"></script>
<#--<script src="/static/js/layui/layui.js" ></script>-->
<script src="/static/js/layui/layui.all.js" ></script>
<script src="/static/js/changeNavColor.js" ></script>
<script>

    var pg=$("#page").html();
    var p_id=$("#only").html();
     function goBack(){
         window.location.href="/front/news?page="+pg;
     }

     //中英文切换
     $(".changeLang").on("click", function () {
         switch ($(this).text()) {
             case "繁体中文": {
                 window.location.href = "/front/detail?_lang=zh_CN&&id="+p_id+"&&page="+pg;
                 break;
             }
             case "English": {
                 window.location.href = "/front/detail?_lang=en_US&&id="+p_id+"&&page="+pg;
                 break;
             }
         }
     })

</script>

</body>
</html>
