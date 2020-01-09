<! DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <#import "/spring.ftl" as spring>
    <#assign arg = ["Taiwan Technology Co. Ltd","台湾科技有限公司"]>
    <title><@spring.messageArgs "title" ,arg /></title>
<#--    <title>台湾公司网站</title>-->

    <link  rel="stylesheet" href="/static/js/layui/css/layui.css"  media="all">
    <link  rel="stylesheet" href="/static/js/layui/css/main.css"  media="all">
    <link  rel="stylesheet" href="/static/mycss/mine.css"  media="all">
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
    <div class="layui-container first" >
        <div class="layui-row">
            <div class="layui-col-md4 layui-col-md-offset2">
                <div class="content">
                    <h1>忠義幣（ZYB)</h1>
                    <p >忠義幣是基于數年來各國數字貨幣層出不窮的情況下，由美國海外匿名華人團體于“2019年12月1”日聯合發行，
                        是為了實現華人資金不流失，保護華人在全球利益共享，忠義體現源于三國，“關羽”衆所周知關羽以忠義二字立世，
                        是華人彰顯忠義的精神領袖！
                    </p>
                </div>
            </div>
            <div class="layui-col-md4">
                <img src="/static/imgs/dragon.jpg">
            </div>
        </div>

    </div>

    <!--中间内容  栅格系统布局-->
    <div class="layui-container second" >
        <div class="layui-row">
            <div class="layui-col-md8 layui-col-md-offset2">
                <h1>忠義幣發布</h1>
                <p>忠義幣1.0社區將于2019年12月1日全球上線，項目計劃用三年的時間分三個時間節點分別完成不同階段的開發目標（2019.12.1--2020.12.1第一階段；2020.12.1.--2021.12.1是第二階段；2021.12.1--2022.12.1是第三階段；）</p>
                <img src="/static/imgs/history.jpg">
            </div>
        </div>
    </div>

    <!--中间内容  栅格系统布局-->
    <div class="layui-container third" >
        <div class="layui-row">
            <div class="layui-col-md3 layui-col-md-offset2">
                <img src="/static/imgs/chat.jpg" >
            </div>
            <div class="layui-col-md5">
                <div class="content">
                    <h1>忠義币模式</h1>
                    <p >忠義幣采用兩個人組戰隊的眾籌捐贈模式，在全球範圍內，自願參加忠義幣眾籌的華人，可以在忠義APP的聊天室裏和任意的隊員組成壹個戰隊，（每兩個人只能組壹次戰隊），捐贈者也可以推薦好友壹起參與捐贈，成為將軍或者大帥，為了忠義項目的成功， 團隊設計了推薦享受收益的模式，並且在app的聊天室裏，組戰隊越多的人將獲得越多的忠義幣</p>
                </div>
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
<#--<script src="/static/js/layui/layui.js" ></script>-->
<script src="/static/js/layui/layui.all.js" ></script>
<script src="/static/js/changeNavColor.js" ></script>
<script>

    //中英文切换
    $(".changeLang").on("click", function () {
        switch ($(this).text()) {
            case "繁体中文": {
                window.location.href = "/front/index?_lang=zh_CN";
                break;
            }
            case "English": {
                window.location.href = "/front/index?_lang=en_US";
                break;
            }
        }
    })

</script>

</body>
</html>
