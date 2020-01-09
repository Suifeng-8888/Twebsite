// 獲取導航a標籤
var navList = $('.nav-list a')
console.log('navlist: ', navList)
for (let i=0; i < navList.length; i++) {
    // navList[i].click(function () {
    //     // $(this).css('color','#996E30')
    // })
}

function changeNavedColor(item) {
    for (var i=0; i < navList.length; i++) {
        if (i === item) {
            navList[i].css('color','#996E30')
        } else {
            navList[i].css('color','black')
        }
    }
}
