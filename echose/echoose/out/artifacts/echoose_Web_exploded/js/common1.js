
//涓嬫媺鑿滃崟

    function Menu(nav){
      var $menu = $(nav);
      $menu.children('li').each(function(){
        var $this = $(this);
        var a;
        var $div = $this.children('div');
        if($(this).find("a").hasClass('hover')){
            a=$(this).index();
        };
        $this.bind('mouseenter',function(){
          $this.children().addClass('hover');
          $div.stop(true,true).hide();
          $div.stop().slideDown(300);
        }).bind('mouseleave',function(){
          $this.children().removeClass('hover');
          $menu.children('li').eq(a).addClass('hover').children('a').css({'color':'#fff'});
          $div.stop(true,true).hide();
          
        });
      });
    }




///
function Focus(focusBox,focusPic,focusTxt,focusNum,focusOn){
	$(focusPic).children('li').eq(0).show();
	$(focusTxt).children().eq(0).show();
	var len = $(focusNum).children().length;
	var index= 0;

	$(focusNum).children().mouseover(function(){
		index = $(focusNum).children().index(this);
		showImg(index);
	});

	$(focusBox).hover(function(){
		if(palyImg){
			clearInterval(palyImg);
		}
	},function(){
		palyImg = setInterval(function(){
			showImg(index);
			index++;
			if(index==len) {index=0}
		},5000);	
	});

	var palyImg = setInterval(function(){
		showImg(index);
		index++;
		if(index==len) {index=0}
	},5000);
	function showImg(i){
		$(focusPic).children('li').eq(i).stop(true,true).fadeIn().siblings('li').fadeOut();
		$(focusTxt).children().eq(i).stop(true,true).fadeIn().siblings().fadeOut();
		$(focusNum).children().eq(i).addClass(focusOn).siblings().removeClass(focusOn);
	}
}
///
function Hover(hoverDiv,showDiv,on){
	$(showDiv).each(function(){$(this).hide()});
	$(hoverDiv).children().hover(function(){
		$(this).addClass(on);
		$(this).find(showDiv).show();
	},function(){
		$(this).removeClass(on);
		$(this).find(showDiv).hide();
	});
}

function dropDown(moreArea,moreOn){
	$(moreArea).hover(function(){
		$(this).addClass(moreOn);
	},function(){
		$(this).removeClass(moreOn);
	});
}
///
function tabs(tabTit,tabCon,on){
	var _on=$(tabTit).find('.'+on);
	var _i=$(tabTit).children().index(_on[0]);
	$(tabCon).each(function(){
		$(this).children().eq(_i).show().siblings().hide();
	});
	$(tabTit).children().hover(function(){
		$(this).addClass(on).siblings().removeClass(on);
		var index = $(tabTit).children().index(this);
		$(tabCon).children().eq(index).show().siblings().hide();
	});	
}

//
function tabsClick(tabT,tabC,on){
	var _on=$(tabT).find('.'+on);
	var _i=$(tabT).children().index(_on[0]);
	$(tabC).each(function(){
		$(this).children().eq(_i).show().siblings().hide();
	});
	$(tabT).children().click(function(){
		$(this).addClass(on).siblings().removeClass(on);
		var index = $(tabT).children().index(this);
		$(tabC).children().eq(index).show().siblings().hide();
	});
}
function tabsC(tabT,tabC,on){
	var _on=$(tabT).find('.'+on);
	var _i=$(tabT).children().index(_on[0]);
	$(tabC).each(function(){
		$(this).children().eq(_i).show().siblings().hide();
	});
	$(tabT).children().click(function(){
		$(this).addClass(on).siblings().removeClass(on);
		var index = $(tabT).children().index(this);
		$(tabC).children().eq(index).show().siblings().hide();
	});
}
//placeholder
$(function($){
    function placeholderSupport() {
        return 'placeholder' in document.createElement('input');
    }

    if (!placeholderSupport()) {   
        $('[placeholder]').focus(function() {
            var input = $(this);
           
            if (input.val() == input.attr('placeholder')) {
                input.val('');
                input.removeClass('placeholder');
            }
        }).blur(function() {
        	
            var input = $(this);
            if (input.val() == '' || input.val() == input.attr('placeholder')) {
                input.addClass('placeholder');
                input.val(input.attr('placeholder'));
            }
        }).blur();
    };
});


//璁块棶璁惧鍒ゆ�?
function browserRedirect(dir) {
	var sUserAgent = navigator.userAgent.toLowerCase();
	var bIsIpad = sUserAgent.match(/ipad/i) == "ipad";
	var bIsIphoneOs = sUserAgent.match(/iphone os/i) == "iphone os";
	var bIsMidp = sUserAgent.match(/midp/i) == "midp";
	var bIsUc7 = sUserAgent.match(/rv:1.2.3.4/i) == "rv:1.2.3.4";
	var bIsUc = sUserAgent.match(/ucweb/i) == "ucweb";
	var bIsAndroid = sUserAgent.match(/android/i) == "android";
	var bIsCE = sUserAgent.match(/windows ce/i) == "windows ce";
	var bIsWM = sUserAgent.match(/windows mobile/i) == "windows mobile";
	if ((bIsIphoneOs || bIsMidp || bIsUc7 || bIsUc || bIsAndroid || bIsCE || bIsWM) ){
	   var host=window.location.host;
	   var reHost=window.location.host+'/'+dir;
		//鑾峰彇椤甸潰瀹屾暣鍦板潃
		url = window.location.href;
		dumpUrl=url.replace(host,reHost);
		window.location.href=dumpUrl;
	}
}
//鏂扮増璁块棶璁惧鍒ゆ柇20140604
function browserRedirect_new() {
    var sUserAgent = navigator.userAgent.toLowerCase();

	if( /spider|bot|slurp/.test(sUserAgent) ){
		return;
	}

    if(/AppleWebKit.*Mobile/i.test(sUserAgent) || (/MIDP|SymbianOS|NOKIA|SAMSUNG|LG|NEC|TCL|Alcatel|BIRD|DBTEL|Dopod|PHILIPS|HAIER|LENOVO|MOT-|Nokia|SonyEricsson|SIE-|Amoi|ZTE/i.test(sUserAgent)) || /ipad|iphone os|rv:1.2.3.4|ucweb|android|windows ce|windows mobile/.test(sUserAgent)){

       var host=window.location.host;
	   var url = window.location.href;

       if(host.substr(0,4)=='www.'){
            var reHost=host.replace('www.','m.');
       }else{
            var frist = host.indexOf('.');
            var tmp = host.substr(0,frist);
            var reHost=host.replace(host.substr(0,frist)+'.','m.')+'/'+tmp;
       }
        dumpUrl=url.replace(host,reHost);
		if(reHost) window.location.href=dumpUrl;
    }
}

