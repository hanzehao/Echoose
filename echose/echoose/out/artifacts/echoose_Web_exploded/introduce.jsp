<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
		String path = request.getContextPath();
		String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	%>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel='stylesheet' type='text/css' href='css/style.css'/>
	<script type='text/javascript' src='js/jquery-1.8.2.min.js'></script>
	<script type='text/javascript' src='js/web.js'></script>
	<script type='text/javascript' src='js/gundong.js'></script>
	<script>
		$(function () {
			web_obj.slide('.gundong_', {
				items: '.ly_item',
				seenum: 5,
				slidenum: 5,
				leftbtn: '.ly_left_btn',
				rightbtn: '.ly_right_btn'
			});
		})
	</script>
	<style type="text/css">
		.divcss {
			padding-left: 280px;
			font-size: 15px;
		}

		.divcss1 {
			padding-left: 450px;
			margin-top: 20px;
		}

		.divcss2 {
			padding-left: 280px;
			margin-top: 15px;
		}

		.div1 {
			float: left;
			padding-left: 350px;
		}

		.div2 {
			margin-top: 45px;
			float: left;
		}

		.div3 {
			color: #8e8e8e;
			margin-top: 10px;
		}
		#imgs{
			width:700px;
			height:400px;
		}
	</style>
	<!--[if IE 6]>
	<script type='text/javascript' src='js/dd_belatedpng.js'></script>
	<![endif]-->

	<title></title>
</head>
<body>
<div id="ly_header" class="ly_min">
	<div class="ly_wrap">
		<div class="ly_lbar ly_fl">
			<div id="ly_logo"><a href="index.jsp"> <img src="<%=basePath%>images/tubiao.png"/> <span></span> </a></div>
		</div>

		<div class="div1">
			<div class="ly_top">
				<div id="ly_search">
					<form action="<%=basePath %>school/findBySname" method="post">
			            <input class="ly_txt" type="text" name="sname" placeholder="请输入搜索内容" value="" />
			            <input class="ly_btn" type="submit" value="搜索" />
         			</form>  
				</div>
			</div>
			<div class="div3">
				<div class="ly_hot"> 热门搜索： <a href="major.jsp">热门专业&emsp;</a><a href="score1.jsp">高校分数线&emsp;</a><a href="school.jsp">高校推荐</a>
				</div>
			</div>
		</div>
		<div class="div2">
			<a href="<%=basePath %>regist.jsp">免费注册&nbsp;&nbsp;</a> | <a href="<%=basePath %>login.jsp">&nbsp;&nbsp;登录&nbsp;&nbsp;</a> | <a
				href="">&nbsp;&nbsp;个人中心</a>
			&emsp;&emsp;<a href="adminLogin.jsp">管理员登录</a>
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
<!-- banner -->
<div class="banner">
	<ul class="slides">
		   <li style="background:url(images/zhiyuan3.jpg) 50% 0 no-repeat;"></li>
    	   <li style="background:url(images/gaokao1.jpg) 50% 0 no-repeat;"></li>
    	   <li style="background:url(images/4.jpg) 50% 0 no-repeat;"></li>
    	   <li style="background:url(images/remen1.png) 50% 0 no-repeat;"></li>
    	   <li style="background:url(images/kefu1.jpg) 50% 0 no-repeat;"></li>
	</ul>
</div>
<script src="js/jquery.flexslider-min.js"></script>
<script>
	$(function () {
		$('.banner').flexslider({
			directionNav: true,
			pauseOnAction: false
		});
	});
</script>
<div class="ly_page ly_min">
	<div class="ly_wrap">
		<div class="lyg_page_box">
			<div class="lyg_lpage">
				<div id="lyg_left_bar">
					<h2>关于我们</h2>
					<dl>
						<dt><a href="<%=basePath%>introduce.jsp">网站简介</a></dt>
						<dt><a href="#">服务宗旨</a></dt>
						<dt><a href="#">发展历程</a></dt>
						<dt><a href="#">用户留言</a></dt>
						<dt><a href="#">合作伙伴</a></dt>
						<dt><a href="#">联系我们</a></dt>
					</dl>
				</div>
			</div>
			<div class="lyg_rpage">
				<div class="lyg_rpage_bpx">
					<div class="lyg_page_title">
						<h2>网站简介</h2>
						<div id="lyg_breadcrumb"><a class="ly_home" href="<%=basePath %>index.jsp">首页</a> <font>></font> <a href="<%=basePath %>introduce.jsp">关于我们</a>
							<font>></font> <span>网站简介</span></div>
						<div class="lyg_clear"></div>
					</div>
					<div id="lyg_news_detail" class="lyg_container_content">
						<div id="lyg_news_detail_0">
							<h1>易选择网站介绍</h1>
							<div class="lyg_para">
								<div class="lyg_date">作者：66次 | 更新时间：2016.06.15</div>
								<div class="lyg_clear"></div>
							</div>
							<div class="thumb"><img src="images/1.jpg" style="margin-bottom: 15px;" id="imgs"/></div>
							<div class="lyg_content">
								<p>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;易选择网站创建的主要目的是帮助高考生择校和高校发布信息的网站，与同类型的网站先比易选泽不仅照顾到了高考生，而且关联到了高校，为高考生与高校间建立了一座相互了解和沟通的桥梁。
								</p>
								<p>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;因此易选泽可以为高考生提供最适合自己，最理想的填报志愿的方案。易选择网站主要针对的人群是高考生和高校老师。高考生可以通过地区，院校，专业，以及分数线的选择检索到适合自己的高校。高校老师可以通过在我们网站发布信息，来提高学校的曝光率和知名度，吸引更多更优秀的生源。
								</p>
								<p>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;除此之外，我们更贴心的提供了用户交流，和在线咨询。用户交流模块可以让已经录取上的学长学姐用户与应届考生用户交流，提供最真实最可靠的学校信息，在线咨询可以为应届生更好的答疑解惑。
								</p>
								<p>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;高考报名并不简单，许多报考条件晦涩难懂，易选择网站会通过新闻模块来介绍这些复杂的报考条件，将报名中重要的内容通俗易懂的展示给考生。同时高考进行的过程中有许多重要的时间点，有许多考生就因为错过了这些时间点和名校失之交臂，为了弥补这些遗憾，我们为考生设计了重要时间点提醒功能，能够帮助高考生顺利进行高考以及报名活动。
易选择网站，与其余同类型网站最大的不同是，我们通过大数据技术，记录每个用户的浏览信息，并通过浏览信息为其推荐适合他的院校，这是同类型网站做不到的，也是我们的一个特色所在。
									
								</p>
								<p>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;高考报名用易选择，帮你轻轻松松选择学校，从此高考报名不再烦恼！
								</p>
								
								
								<p><br/>
								</p>
							</div>
							<div class="lyg_page">
								<a class="lyg_last" href="major.jsp">上一篇</a>
								<a class="lyg_next" href="notice.jsp">下一篇</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="lyg_clear"></div>
		</div>
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
			<a href="<%=basePath%>introduce.jsp">关于我们&nbsp;&nbsp;</a> | <a href="">&nbsp;&nbsp;帮助中心&nbsp;&nbsp;</a> | <a href="">&nbsp;&nbsp;版权声明&nbsp;&nbsp;</a>
			| <a href="">&nbsp;&nbsp;合作伙伴</a>
		</div>

		<div class="divcss2">
			&emsp;&emsp;地址：河北省石家庄市裕华区裕翔街道河北师范大学新校区软件学院 &emsp;&emsp;&emsp;&emsp; 官方QQ群：684033794 <br>
			@2017 &emsp; www.yixuanze.com All Rights Reserved.河北师范大学软件学院版权所有 &emsp;&emsp; 冀ICP备05060708号
		</div>

	</div>
</div>

</body>
</html>