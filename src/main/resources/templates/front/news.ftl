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
                <a href="/front/index" onclick="changeNavedColor(0)" ><@spring.message "main.index"/></a>
                <a href="/front/download" onclick="changeNavedColor(1)"><@spring.message "main.download"/></a>
                <a href="/front/handbook" onclick="changeNavedColor(2)"><@spring.message "main.handbook"/></a>
                <a href="/front/news" onclick="changeNavedColor(3)"><@spring.message "main.news"/></a>
            </div>
        </div>
    </div >
    <#--隐藏值，处理从新闻详情重新到列表的-->
    <div id="page" style="display:none">
        <#if (news.page)??>
            ${news.page}
        </#if>
    </div>
    <#--新闻资讯主页展示-->
    <div id="itemList">

    </div>
    <!--每一个新增资讯对象-->
    <div class="items" style="display: none">
        <div class="layui-container item">
            <a href="#">
                <h2><span class="hniois-data" name="title"></span></h2>
                <span class="hniois-data" name="summary"></span>
                <span class="more">【查看更多】</span>
            </a>
        </div>
    </div>

    <#--分页容器-->
    <div class="pageFoot-container">
        <div id="pageFoot"></div>
    </div>

    <!--底部内容-->
    <div class="layui-footer">
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
<#--<script src="/static/js/layui/layui.js" ></script>-->
<script src="/static/js/layui/layui.all.js" ></script>
<script src="/static/js/qh.js" ></script>
<script src="/static/js/config.js" ></script>
<script src="/static/js/changeNavColor.js" ></script>
<script>

    //中英文切换
    $(".changeLang").bind("click", function () {
        switch ($(this).text()) {
            case "繁体中文": {
                window.location.href = "/front/news?_lang=zh_CN";
                break;
            }
            case "English": {
                window.location.href = "/front/news?_lang=en_US";
                break;
            }
        }
    })


</script>

</body>
</html>
