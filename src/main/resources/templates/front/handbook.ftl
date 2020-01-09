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
    <div class="layui-container handbook-first" >
        <div class="layui-row">
            <h1>1: 如何獲得和使用忠義幣</h1>
            <p >首先了解完“忠義幣”之後，獲取<span class='handbook-red'>app下載</span>方式，註冊完成我們的app以後，即可在<span class='handbook-red'>聊天頻道</span>向其他
                玩家發出組隊<span class='handbook-red'>邀請</span>，對方同意以後即完成組隊，等待排隊進場收益！
            </p>
            <h1 >2: 如何實現推薦共同收益</h1>
            <p>（1）戰隊之間相互打款的資金不會進入平臺，平臺實現了<span class='handbook-red'>“全自動托管”</span>，讓所有玩家更好的體驗到
                自動隨機進場的樂趣，保證了<span class='handbook-red'>資金安全</span>。
            </p>
            <p>（2）<span class='handbook-red'>直推3個</span>下級成為小將軍可獲得下級每次組隊消耗忠義幣的15%收益，<span class='handbook-red'>直推9個</span>個下級即可成為大帥，可獲得下級每次組隊消耗忠義幣的50%收益。
            </p>
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
                window.location.href = "/front/handbook?_lang=zh_CN";
                break;
            }
            case "English": {
                window.location.href = "/front/handbook?_lang=en_US";
                break;
            }
        }
    })
</script>

</body>
</html>
