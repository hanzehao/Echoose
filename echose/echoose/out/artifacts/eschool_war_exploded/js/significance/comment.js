define(function(require,exports,module){var a=require("/static/page/discovery/common.js"),c=null,h=function(c,h,g){$.ajax({url:a.API.comment,type:"post",data:h,dataType:"json",success:function(c){if($(g).removeClass("disabled"),$(g).parents(".feed-list").find(".js-publish-textarea").removeClass("cur"),0===c.result){var v=$("[data-id='"+h.id+"']").find(".js-comment-btn span");v.html(v.html()-0+1),c.data.OP_CONFIG=OP_CONFIG,$(".js-comment-wrap").prepend(juicer(a.Template.commentTpl,c.data)),$(".js-commentnum")[0]&&$(".js-commentnum").html($(".js-commentnum").html()-0+1),$(".js-publish-textarea").val(""),a.emit("resize"),$.prompt("评论成功",{callback:function(){}})}else $.prompt(c.msg,{icon:"error"})},error:function(){$(g).removeClass("disabled"),$.prompt("评论失败",{icon:"error"})}})},g=function(c,h,g){$.post(a.API.saveReply,h,function(h){c.find(".js-recomment").append(v([h.data])),c.find(".feed-comment").hide(),a.emit("resize"),$(g).removeClass("disabled")},"json")},v=function(c){return juicer(a.Template.recommentTpl,{reply:c,OP_CONFIG:OP_CONFIG})},j=function(c,h,g){var j="";$.post(a.API.getcomment,h,function(b){0==b.result&&(b.data.comment.length>0&&($.each(b.data.comment,function(c,h){return"detail"!=OP_CONFIG.page&&c>=5?!1:(h.OP_CONFIG=OP_CONFIG,h.reply.length>0&&(h.recomment=v(h.reply)),void(j+=juicer(a.Template.commentTpl,h)))}),1==h.page?$(c).html(j):$(c).append(j)),g&&g(b.data.total,b.data))},"json")},b=function(g){var v=g.find(".js-publish-textarea").focus(),j=g.find(".js-isforward");g.find(".js-comment-submit").on("click",function(){if(!isLogin)return $("#js-signin-btn").trigger("click"),!1;var g=v.val();return $.getLength(g)>a.MaxLength?void $.prompt("最多"+a.MaxLength+"个字符",{icon:"error"}):""==g?($.prompt("评论内容不能为空",{icon:"error"}),!1):$(this).hasClass("disabled")?!1:($(this).addClass("disabled"),void h(c,{id:$(this).parents(".feed-list").attr("data-id"),content:g,transmit:j[0].checked?1:0},this))})},O=function(){var h=$(this).closest(".feed-list"),g=a.Template.DetailTpl.replace("{$content}",h.html()),v=h.data("id");g=g.replace("{$link}","/discovery/detail/?id="+v),g=g.replace("{$id}",v);var O='<img src="https://img.mukewang.com/images/avatar_default.png" width="40" height="40" alt="{$nickname}">';OP_CONFIG.userInfo&&(O='<a href="/u/'+OP_CONFIG.userInfo.uid+'" target="_blank"><img src="'+OP_CONFIG.userInfo.head+'" width="40" height="40" alt="'+OP_CONFIG.userInfo.nickname+'"></a>'),g=g.replace("{$head}",O),c=$.dialog(g,{modal:!0}),j(".js-comment-wrap",{id:v,page:1},function(c){a.emit("resize"),c>5&&($(".feed-detail-view").css("display","block"),a.emit("resize"))}),b(c.boxy)},C=function(){$(document).on("click",".js-reply-show",function(){if(!isLogin)return $("#js-signin-btn").trigger("click"),!1;var c=$(this).parents(".feed-comment-list"),h=$.parseJSON($(this).siblings("input[type=hidden]").val()),g=c.find(".feed-comment"),v=g.find("textarea");v.val("").attr({placeholder:"回复@"+h.nickname+":",uid:h.uid?h.uid:""}),g.show(),v.focus(),a.emit("resize")}),$(document).on("click",".js-reply-cancel",function(){var c=$(this).parents(".feed-comment-list");c.find(".feed-comment").hide(),a.emit("resize")}),$(document).on("click",".js-reply-submit",function(){if(!isLogin)return $("#js-signin-btn").trigger("click"),!1;var c=$(this).parents(".feed-comment-list"),h=c.find("textarea"),v=$.trim(h.val());return v.length<=0?($.prompt("回复内容不能为空",{icon:"error"}),!1):v.length>a.MaxLength?($.prompt("最多"+a.MaxLength+"个字符",{icon:"error"}),!1):$(this).hasClass("disabled")?!1:($(this).addClass("disabled"),void g(c,{comment_id:c.attr("data-id"),content:v,from_uid:h.attr("uid")},this))}),$(document).on("click",".feed-recomment-more",function(){var c=this,h=$(this).parents(".feed-comment-list").find(".js-recomment");return $(this).hasClass("disabled")?!1:($(this).addClass("disabled"),void $.post(a.API.getReply,{page:2,comment_id:$(this).attr("data-id")},function(g){0==g.result&&g.data.length>0&&($(c).remove(),h.append(v(g.data)),a.emit("resize"))},"json"))}),a.on("resize",function(){c&&c.resize()})};C(),module.exports={getcomment:j,commentSubmit:b,render:O}});