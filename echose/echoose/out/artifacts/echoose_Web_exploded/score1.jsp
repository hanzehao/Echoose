<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="com.ef.entity.School" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
		String path = request.getContextPath();
		String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel='stylesheet' type='text/css' href="<%=basePath %>css/style.css" />
<script type='text/javascript' src='<%=basePath%>js/jquery-1.8.2.min.js' ></script>
<script type='text/javascript' src='<%=basePath%>js/web.js' ></script>
<script type='text/javascript' src='<%=basePath%>js/gundong.js' ></script>
<script>
$(function(){
	web_obj.slide('.gundong_',{
		items   :   '.ly_item',
		seenum  :   5,
		slidenum:   5,
		leftbtn :   '.ly_left_btn',
		rightbtn:   '.ly_right_btn' 
	}); 
})
</script>
<style type="text/css">
	.divcss{padding-left:280px;font-size:15px;}
	.divcss1{padding-left:450px;margin-top:20px;}
	.divcss2{padding-left:280px;margin-top:15px;}
	.div1{float:left;padding-left:350px;}
	.div2{margin-top:45px;float:left;}
	.div3{color:#8e8e8e; margin-top:10px;}
	.div4{margin-top:-30px;margin-left:140px;}
	.div5{height:20px;}
	.exitlogin{font-size:15px;font-weight:bold;}
	#schsli{padding-left:100px;padding-right:100px;}
	#spesli{padding-right:100px;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>高校推荐</title>
<link href="http://www.gaokao.com/favicon.ico" rel="shortcut icon"/>
<link href="css/base2.css" rel="stylesheet" type="text/css" />
<link href="css/base3.css" rel="stylesheet" type="text/css" />
<link href="css/base4.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery2.js"></script>
<script type="text/javascript" src="js/common2.js"></script>
<script type="text/javascript" src="js/s1.js"></script>
<link rel="stylesheet" type="text/css" href="css/new_base.css"/> 
<link rel="stylesheet" type="text/css" href="css/common.css"/>
<script type="text/javascript" src="js/jquery-1.9.1.min1.js"></script>
<script type="text/javascript" src="js/common3.js"></script>

</head>
<body>
	<div id="ly_header" class="ly_min">
  <div class="ly_wrap">
    <div class="ly_lbar ly_fl">
      <div id="ly_logo"><a href="<%=basePath %>index.jsp"> <img src="<%=basePath%>images/tubiao.png" /> <span></span> </a></div>
    </div>
    
    <div class="div1">
      <div class="ly_top">
        <div id="ly_search">
          <form action="school/list" method="post">
            <input class="ly_txt" type="text" name="keyword" placeholder="请输入搜索内容" value="" />
            <input class="ly_btn" type="submit" value="搜索" />
          </form>
        </div>
      </div>
      <div class="div3">
       <div class="ly_hot"> 热门搜索： <a href="<%=basePath %>major.jsp">热门专业&emsp;</a><a href="<%=basePath %>school/list1">高校分数线&emsp;</a><a href="<%=basePath %>score1.jsp">高校推荐</a></div>
      </div>
    </div>
    
    <div class="div2">
      <div class="div5"><a href="<%=basePath %>regist.jsp">免费注册&nbsp;&nbsp;</a> | <a href="<%=basePath %>login.jsp">&nbsp;&nbsp;登录&nbsp;&nbsp;</a><a href="<%=basePath %>">&nbsp;&nbsp;</a>
      &emsp;&emsp;<a href="<%=basePath %>adminLogin.jsp">管理员登录</a></div>

    </div>
    <div class="lyg_clear"></div>
  </div>
</div>
<!--导航-->
<div id="ly_menu">
  <div class="ly_wrap">
<div class="lyg_fir lyg_current"><a href="<%=basePath %>index.jsp">网站首页</a></div>
    <div class="lyg_fir"><a href="<%=basePath %>school.jsp">院校库</a></div>
    <div class="lyg_fir"><a href="<%=basePath %>">专业库</a></div>
    <div class="lyg_fir"><a href="<%=basePath %>news.jsp">新闻中心</a></div>
    <div class="lyg_fir"><a href="<%=basePath %>school/list1">院校推荐</a></div>
    <div class="lyg_fir"><a href="<%=basePath %>">在线咨询</a></div>
    <div class="lyg_fir"><a href="<%=basePath %>">我的收藏</a></div>
    <div class="lyg_fir"><a href="<%=basePath %>notice.jsp">高考须知</a></div>
    <div class="lyg_fir"><a href="<%=basePath %>">常见问题</a></div>
    <div class="lyg_fir"><a href="<%=basePath %>significance.jsp">关于我们</a></div>
    <div class="lyg_clear"></div>
  </div>
</div>
<div class="wrap">
    <div class="bg_sez">
    <div class="hr_10"></div>
        <div class="ind_fom bk_ind">
            <div class="main mainc1">
              <ul class="newsSearch clearfix">
              	<form action="<%=basePath %>score/list" method="post">
                    <li id="schsli">
                        <b>高校搜索</b>
                        <input id="schname" type="text" onfocus="this.value=''" onblur="if(!this.value) this.value='请输入高校名称'" value="请输入分数" name="csscore" class="input141" />
                        <select id="scharea" class="select79">
                            <option value="">所在地 </option>
                        </select>
                        <select id="schcategory" class="select60">
                            <option value="">高校类型 </option>
                        </select>
                        <select id="schstyle" class="select114">
                            <option value="">高校性质 </option>
                        </select>
                        <input id="schselect" type="submit" value="搜索" class="inputImg" />
                    </li>
                </form> 
                    <li  id="spesli">
                        <b>专业搜索</b>
                        <input id="spename" type="text" onfocus="this.value=''" onblur="if(!this.value) this.value='请输入专业名称'" value="请输入专业名称" class="input141" />
                        <select id="big_category" class="select145">
                            <option value="">查询中 </option>
                        </select>
                        <select id="sub_category" class="select145">
                            <option value="">专业小类 </option>
                        </select>
                        <input id="speselect" type="button" value="搜索" class="inputImg" />
                    </li>
                    <li id="schpli">
                        <b>高校分数线</b>
                        <select id="spstuarea" class="select80">
                            <option value="">查询中 </option>
                        </select>
                        <select id="spsubject" class="select57">
                            <option value="">查询中 </option>
                        </select>
                        <select id="spscharea" class="select114">
                            <option value="">查询中 </option>
                        </select>
                        <select id="spschid" class="select144">
                            <option value="高校名称" name="sname">高校名称 </option>
                        </select>
                        <input id="schpoint" type="button" value="搜索" class="inputImg" />
                    </li>
                  </ul>
            </div>
        </div>
        <script type="text/javascript" language="javascript">

    //回车事件 最后点击id
    var lastclick = '';
    function gotourl(type){
        if(type!=''){
            lastclick = type;
        }

        switch(lastclick){
            case 'schsli':
                schselect();
                break;
            case 'spesli':
                speselect();
                break;
            case 'schpli':
                schpselect();
                break;
            case 'spepli':
                spepselect();
                break;
            case 'areapli':
                areapselect();
                break;
            case 'stusli':
                stupselect();
                break;
        }
    }

    //新窗口打开
    function CreateA(url){ 
        $('#newWindows').attr('action',url);
        $('#newWindows').submit();
    }

    //搜索高校
    function schselect(){

        if($("#schname").val() == "请输入高校名称"){
            var name = "";
        }else{
            var name = $("#schname").val();
        }

        var area = $("#scharea").val();
        var category = $("#schcategory").val();
        var style = $("#schstyle").val();

        if(area!=''){
            area = '/a'+area;
        }
        if(category!=''){
            category = '/c'+category;
        }
        if(style!=''){
            style = '/s'+style;
        }
        if(name!=''){
            name = '/n'+name;
        }
        var url = "http://college.gaokao.com/schlist"+area+category+style+name+"/";
        CreateA(url);
    }

    //加载专业
    function speciality(){
        if($('#big_category').val()!=0){
            $.getJSON("http://college.gaokao.com/json/speciality?id=&pid="+$('#big_category').val()+"&callback=?",function(data){ 
                $("#sub_category").html(data.json);
            });
        }else{
            $("#sub_category").html('<option value="0">专业小类</option>');
        }

    }

    //搜索专业
    function speselect(){
        if($("#spename").val() == "请输入专业名称"){
            var name = "";
        }else{
            var name = $("#spename").val();
        }
        var big = $("#big_category").val();
        var sub = $("#sub_category").val();

        if(big!=''){
            big = '/b'+big;
        }
        if(sub!=''){
            sub = '/s'+sub;
        }
        if(name!=''){
            name = '/n'+name;
        }
        var url = "http://college.gaokao.com/spelist"+big+sub+name+"/";
        CreateA(url);
    }

    //按地区取得高校
    function getschool(){
        $.getJSON("http://college.gaokao.com/json/school?aid="+$('#spscharea').val()+"&callback=?",function(data){ 
            $("#spschid").html(data.json);
        });
    }

    //搜索高校分数线
    function schpselect(){
        var stuarea = $("#spstuarea").val();
        var subject = $("#spsubject").val();
        var schid = $("#spschid").val();
        var scharea = $("#spscharea").val();

        if(stuarea!=''){
            stuarea = '/a'+stuarea;
        }
        if(subject!=''){
            subject = '/s'+subject;
        }
        if(schid!=''){
            schid = '/c'+schid;
        }
        if(scharea!=''){
            scharea = '/b'+scharea;
        }
        var url = "http://college.gaokao.com/schpoint"+stuarea+subject+schid+scharea+"/";
        CreateA(url);
    }

    //搜索专业分数线
    function spepselect(){
        if($("#spepname").val() == "请输入专业名称"){
            var spename = "";
        }else{
            var spename = $("#spepname").val();
        }
        var stuarea = $("#spestuarea").val();
        var subject = $("#spesubject").val();
        var year = $("#speyear").val();

        if(stuarea!=''){
            stuarea = '/a'+stuarea;
        }
        if(subject!=''){
            subject = '/s'+subject;
        }
        if(year!=''){
            year = '/y'+year;
        }
        if(spename!=''){
            spename = '/n'+spename;
        }
        var url = "http://college.gaokao.com/spepoint"+stuarea+subject+year+spename+"/";
        CreateA(url);
    }

    //搜索地区批次线
    function areapselect(){
        var stuarea = $("#astuarea").val();
        var subject = $("#asubject").val();
        var year = $("#ayear").val();

        if(stuarea!=''){
            stuarea = '/a'+stuarea;
        }
        if(subject!=''){
            subject = '/s'+subject;
        }
        if(year!=''){
            year = '/y'+year;
        }
        var url = "http://college.gaokao.com/areapoint"+stuarea+subject+year+"/";
        CreateA(url);
    }

    //估分选大学
    function stupselect(t){
        if($("#stupoint").val() == "请输入所估分数"){
            var stupoint = "";
        }else{
            var stupoint = $("#stupoint").val();
        }
        var stuarea = $("#stuparea").val();
        var subject = $("#stupsubject").val();
        var batch = $("#stupbatch").val();

        if(stuarea!=''){
            stuarea = '/a'+stuarea;
        }
        if(subject!=''){
            subject = '/s'+subject;
        }
        if(batch!=''){
            batch = '/b'+batch;
        }
        if(stupoint!=''){
            stupoint = '/f'+stupoint;
        }
        var url = "http://college.gaokao.com/schselect"+stuarea+subject+batch+stupoint+"/";
        CreateA(url);
    }

    $(document).ready(function(){

        //取得select框内数据
        //高校
        $.getJSON("http://college.gaokao.com/json/area?callback=?",function(data){ 
            $("#scharea").html(data.json);
        });
        $.getJSON("http://college.gaokao.com/json/category?callback=?",function(data){ 
            $("#schcategory").html(data.json);
        });
        $.getJSON("http://college.gaokao.com/json/style?callback=?",function(data){ 
            $("#schstyle").html(data.json);
        });
        //专业
        $.getJSON("http://college.gaokao.com/json/speciality?callback=?",function(data){ 
            $("#big_category").html(data.json);
        });
        $('#big_category').change(function(){
            speciality();
        });
        //高校分数线
        $.getJSON("http://college.gaokao.com/json/area?str=1&callback=?",function(data){ 
            $("#spstuarea").html(data.json);
        });
        $.getJSON("http://college.gaokao.com/json/area?str=2&callback=?",function(data){ 
            $("#spscharea").html(data.json);
        });
        $.getJSON("http://college.gaokao.com/json/subject?callback=?",function(data){ 
            $("#spsubject").html(data.json);
        });
        $('#spscharea').change(function(){
            getschool();
        });
        //专业分数线
        $.getJSON("http://college.gaokao.com/json/area?str=1&callback=?",function(data){ 
            $("#spestuarea").html(data.json);
        });
        $.getJSON("http://college.gaokao.com/json/subject?callback=?",function(data){ 
            $("#spesubject").html(data.json);
        });
        //地区批次线
        $.getJSON("http://college.gaokao.com/json/area?str=1&callback=?",function(data){ 
            $("#astuarea").html(data.json);
        });
        $.getJSON("http://college.gaokao.com/json/subject?callback=?",function(data){ 
            $("#asubject").html(data.json);
        });
        //估分选大学
        $.getJSON("http://college.gaokao.com/json/area?str=1&callback=?",function(data){ 
            $("#stuparea").html(data.json);
        });
        $.getJSON("http://college.gaokao.com/json/subject?callback=?",function(data){ 
            $("#stupsubject").html(data.json);
        });
        $.getJSON("http://college.gaokao.com/json/batch?callback=?",function(data){ 
            $("#stupbatch").html(data.json);
        });

        //搜索高校
        $("#schselect").click(function(){
            _gaq.push(['_trackEvent', 'College', 'search', 'schsli']);
            gotourl('schsli');
        });

        //搜索专业
        $("#speselect").click(function(){
            _gaq.push(['_trackEvent', 'College', 'search', 'spesli']);
            gotourl('spesli');
        });

        //搜索高校分数线
        $("#schpoint").click(function(){
            _gaq.push(['_trackEvent', 'College', 'search', 'schpli']);
            gotourl('schpli');
        });

        //搜索专业分数线
        $("#spepselect").click(function(){
            _gaq.push(['_trackEvent', 'College', 'search', 'spepli']);
            gotourl('spepli');
        });

        //搜索地区批次线
        $("#areapselect").click(function(){
            _gaq.push(['_trackEvent', 'College', 'search', 'areapli']);
            gotourl('areapli');
        });

        //估分选大学
        $("#stupselect").click(function(){
            _gaq.push(['_trackEvent', 'College', 'search', 'stusli']);
            gotourl('stusli');
        });

        //回车事件 最后点击
        $("#schsli").click(function(){
            lastclick = 'schsli';
        });
        $("#spesli").click(function(){
            lastclick = 'spesli';
        });
        $("#schpli").click(function(){
            lastclick = 'schpli';
        });
        $("#spepli").click(function(){
            lastclick = 'spepli';
        });
        $("#areapli").click(function(){
            lastclick = 'areapli';
        });
        $("#stusli").click(function(){
            lastclick = 'stusli';
        });

        //回车事件 回车触发
        $('body').bind('keydown', function (e) {
            var key = e.which;
            if(key==13 && lastclick!=''){
                _gaq.push(['_trackEvent', 'College', 'search', lastclick]);
                gotourl('');
            }
        });

    });

</script>
    </div>
</div>
<!--底部-->
<div id="ly_footer" class="ly_min">
  <div class="ly_wrap">
    <div class="divcss">
    	<a href="<%=basePath %>school/list1">院校库</a>&emsp;&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath %>major.jsp">专业库</a>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath %>score1.jsp">院校推荐</a>&emsp;&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath %>school.jsp">专业对比</a>&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath %>">招生计划</a><br>
		<a href="<%=basePath %>">报考流程</a>&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath %>">历年分数线</a>&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath %>">高考月历表</a>&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath %>notice.jsp">高考须知</a>&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath %>significance.jsp">高校选择</a><br>
		<a href="<%=basePath %>">专业选择</a>&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath %>">报考误区</a>&emsp;&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath %>">新闻资讯</a>&emsp;&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath %>">最新热点</a>&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath %>">高招动态</a><br>
		<a href="<%=basePath %>introduce.jsp">系统介绍</a>&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath %>">购卡详情</a>&emsp;&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath %>">使用指南</a>&emsp;&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath %>">成功案例</a>&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath %>">常见问题</a>
    </div>
    
    <div class="divcss1">
    	<a href="<%=basePath %>">关于我们&nbsp;&nbsp;</a> | <a href="<%=basePath %>">&nbsp;&nbsp;帮助中心&nbsp;&nbsp;</a> | <a href="<%=basePath %>">&nbsp;&nbsp;版权声明&nbsp;&nbsp;</a> | <a href="<%=basePath %>">&nbsp;&nbsp;合作伙伴</a>
    </div>
    

    
  </div>
</div>
</body>
</html>