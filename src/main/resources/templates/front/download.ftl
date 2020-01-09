<! DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <#import "/spring.ftl" as spring>
    <#assign arg = ["Taiwan Technology Co. Ltd","台湾科技有限公司"]>
    <title><@spring.messageArgs "title" ,arg /></title>

    <link type="text/css" rel="stylesheet" href="/static/js/layui/css/layui.css"  media="all">
    <link type="text/css" rel="stylesheet" href="/static/js/layui/css/main.css"  media="all">
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


    <!--中间内容  栅格系统布局-->
    <div class="layui-container download-first" >
        <div class="layui-row">
            <img src="/static/imgs/window.jpg">
        </div>
        <div class="layui-row">
            <div><@spring.message "down.address"/>:<a href="#">https://www.xmr-zh.com/download.html</a></div>
        </div>
    </div>

    <!--中间内容  栅格系统布局-->
    <div class="layui-container download-second" >
        <div class="layui-row">
            <img src="/static/imgs/mac.jpg">
        </div>
        <div class="layui-row">
            <div><@spring.message "down.address"/>:<a href="#">https://www.mac-zh.com/download.html</a></div>
        </div>
    </div>

    <div class="layui-container download-third" >
        <div class="layui-row">
            <h1><@spring.message "down.app"/></h1>
        </div>
        <div class="layui-row">
            <div class="layui-col-md4 layui-col-md-offset2">
                <img src="/static/imgs/android.jpg" >
                <div>android</div>
                <div><@spring.message "down.tip"/></div>
            </div>
            <div class="layui-col-md4" >
                <img src="/static/imgs/ios.jpg" >
                <div>ios</div>
                <div><@spring.message "down.tip"/></div>
            </div>
        </div>
    </div>

    <!--底部内容-->
    <div class="layui-footer ">
        <div class="layui-row" >
            <a href="#" >&copy; 2019 <@spring.messageArgs "title" ,arg /></a>
            <a href="" target="_blank" ><@spring.message "main.record"/></a>
        </div>
        <div class="layui-row">
            <a href="/contact" target="_blank"><@spring.message "main.contact" /></a>
        </div>
    </div>
</div>
<script src="/static/js/jquery-1.7.2.js"></script>
<script src="/static/js/layui/layui.all.js" ></script>
<script src="/static/js/changeNavColor.js" ></script>
<script>

    //中英文切换
    $(".changeLang").on("click", function () {
        switch ($(this).text()) {
            case "繁体中文": {
                window.location.href = "/front/download?_lang=zh_CN";
                break;
            }
            case "English": {
                window.location.href = "/front/download?_lang=en_US";
                break;
            }
        }
    })
</script>

</body>
</html>
