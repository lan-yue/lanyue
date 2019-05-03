function footer() {
    var hezuo=$("#hezuo");
    var lianxi=$("#lianxi");
    var url="/footer";
    $.post(url,function (data) {
        hezuo.html("");
        lianxi.html("");
        for(i=0;i<data.hezuo.length;i++){
            hezuo.append("<li><a href='javascript:void(0);' class='py-2 d-block'>"+data.hezuo[i].cname+"</a></li>")
        }
        lianxi.html("<li><span class='icon icon-map-marker'></span><span class='text'>"+data.lianxi.address+"</span></li><li><a href='#'><span class='icon icon-phone'></span><span class='text'>"+data.lianxi.tel+"</span></a></li><li><a href='#'><span class='icon icon-envelope'></span><span class='text'>"+data.lianxi.email+"</span></a></li>")
    })
}