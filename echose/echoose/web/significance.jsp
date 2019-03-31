<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<%
		String path = request.getContextPath();
		String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	%>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>高校选择的重要性</title>

	<link rel='stylesheet' type='text/css' href='css/style.css' />
	<link rel="stylesheet" href="${ctx}/css/significance/moco.min.css" type="text/css">
	<link rel="stylesheet" href="${ctx}/css/significance/swiper-3.4.2.min.css">
	<link rel="stylesheet" href="${ctx}/css/significance/layer.css">
	<link rel="stylesheet" href="${ctx}/css/significance/saved_resource.css" type="text/css">
	<link charset="utf-8" rel="stylesheet" href="${ctx}/css/significance/webuploader.css">
	<link charset="utf-8" rel="stylesheet" href="${ctx}/css/significance/layer(1).css">
	<link charset="utf-8" rel="stylesheet" href="${ctx}/css/significance/significance.css">

	<script type='text/javascript' src='${ctx}/js/jquery-1.8.2.min.js' ></script>
	<script type='text/javascript' src='${ctx}/js/web.js' ></script>
	<script src="${ctx}/js/jquery.flexslider-min.js"></script>

</head>

<body>

<div id="header">
	<div class="page-container" id="nav">
		<div id="logo" class="logo"><a target="_self" title="首页"><img src="<%=basePath%>images/tubiao.png" /> </a>
		</div>


		<button type="button" class="navbar-toggle visible-xs-block js-show-menu">
			<i class="icon-menu"></i>
		</button>
		<ul class="nav-item">
			<li><a href="<%=basePath %>index.jsp" target="_self">网站首页</a></li>
			<li><a href="<%=basePath %>school.jsp" target="_self">院校库</a></li>
			<li><a href="" target="_self">专业库</a></li>
			<li><a href="<%=basePath %>news.jsp" target="_self">新闻中心</a></li>
			<li><a href="<%=basePath %>school/list1" target="_self">院校推荐</a></li>
			<li><a href="" target="_self">在线咨询</a></li>
			<li><a href="" target="_self">我的收藏</a></li>
			<li><a href="<%=basePath %>notice.jsp" target="_self">高考须知</a></li>
			<li><a href="" target="_self">常见问题</a></li>
			<li><a href="<%=basePath %>significance.jsp" target="_self">关于我们</a></li>

		</ul>

		<div id="login-area">
			<ul class="header-unlogin clearfix">
				<li class="header-signin">
					<a href="<%=basePath %>login.jsp" id="js-signin-btn">登录</a> /
					<a href="<%=basePath %>regist.jsp" id="js-signup-btn">注册</a>
				</li>
			</ul>
		</div>


		<div class="search-warp clearfix" style="min-width: 32px; height: 72px;">
			<div class="pa searchTags">
				<a href="" target="_blank">2018年分数线</a>
			</div>

			<div class="search-area" data-search="top-banner">
				<input class="search-input" data-suggest-trigger="suggest-trigger" type="text" autocomplete="off">
				<input type="hidden" class="btn_search" data-search-btn="search-btn">
				<ul class="search-area-result" data-suggest-result="suggest-result">
				</ul>
			</div>
			<div class="showhide-search" data-show="no"><i class="icon-search"></i></div>
		</div>
	</div>
</div>

<div id="main">
	<div class="">
		<script>
			$(function(){
				$('.banner').flexslider({
					directionNav: true,
					pauseOnAction: false
				});
			});
		</script>
	</div>
	<div class="wrap">

		<div class="slider">
			<ul>

				<li>
					<a href="<%=basePath %>index.jsp" class="active"><i class="icon-home"></i><span>网站首页</span><b class="icon-drop_right"></b></a>
				</li>
				<li>
					<a href="<%=basePath %>school/list"><i class="icon-tick"></i><span>院校库</span><b class="icon-drop_right"></b></a>
				</li>
				<li>
					<a href="<%=basePath %>school.jsp"><i class="imv2-path"></i><span>专业库</span><b class="icon-drop_right"></b></a>
				</li>
				<li>
					<a href="<%=basePath %>news.jsp"><i class="icon-yuanwen"></i><span>新闻中心</span><b class="icon-drop_right"></b></a>
				</li>
				<li>
					<a href="<%=basePath %>score1.jsp"><i class="icon-blog"></i><span>院校推荐</span><b class="icon-drop_right"></b></a>
				</li>
				<li>
					<a href="<%=basePath %>"><i class="icon-wiki"></i><span>在线咨询</span><b class="icon-drop_right"></b></a>
				</li>
				<li>
					<a href="<%=basePath %>"><i class="icon-wiki"></i><span>我的收藏</span><b class="icon-drop_right"></b></a>
				</li>
				<li>
					<a href="<%=basePath %>notice.jsp"><i class="icon-wiki"></i><span>高考须知</span><b class="icon-drop_right"></b></a>
				</li>
				<li>
					<a href="<%=basePath %>"><i class="icon-wiki"></i><span>常见问题</span><b class="icon-drop_right"></b></a>
				</li>
				<li>
					<a href="<%=basePath %>significance.jsp"><i class="icon-wiki"></i><span>关于我们</span><b class="icon-drop_right"></b></a>
				</li>

			</ul>
		</div><!-- .slider end -->
		<div class="u-container">

			<div class="page-home js-usercard-box" id="notices">

				<div id="lyg_news_detail_0" style="">
					<h1>高校选择的重要性</h1>
					<div class="lyg_para">
						<div class="lyg_date">作者：66次 | 更新时间：2016.06.15</div>
						<div class="lyg_clear"></div>
					</div>
					<div class="thumb"></div>
					<div class="lyg_content">

						<img src="${ctx}/img/significance_img_1.jpg" align="left" style="margin-bottom: 15px; width: 50%;"/>
						<p>填报高考志愿是高考招生录取工作中一个不可获取的环节，可是大家知道志愿填报的意义吗？高考志愿是考生报考的志向、意愿的具体体现。高考志愿在招生录取工作中具有特定的含义，它是考生根据社会的需要，按照国家招生的有关规定，从本人学习成绩及专业兴趣和特长的实际出发，选择报考学校和专业。高考志愿是考生自觉自愿的意向，它受到招生部门的承认，并成为高校录取新生的重要依据。随着高校招生工作改革的不断深化，招生录取体制和运行机制的逐步完善，考生的志愿将得到进一步尊重。</p>
						<p>(一)考生志愿关系到国家对人才的选拔和培养</p>
						<p>高考志愿对国家选拔人才具有重要意义。当前，我国高等学校设置的专业，既考虑到经济社会发展对人才的需求，又考虑到高校毕业生的就业安排，两者是统一的。在招生工作中常常出现报考某高校或专业的考生生源不足或过剩的情况，也就是所谓“冷门”和“热门”现象。如果考生都填报“热门”的院校和专业，而不填报国家其他需要的、可能是艰苦的专业，就会造成一些专业培养人数过多，就业时出现“供大于求”，使一些“热门”专业的毕业生不得不改行，甚至有的长时间找不到工作。因此，志愿过于集中少数“热门”专业，无论从全局上看，还是从考生个人成才和毕业后就业上看，都是不利的。所以，在填报志愿时，一方面要考虑到当前的情况，另一方面也应该考虑到几年后走向社会就业的实际。只有这样，才能使高等学校培养的毕业生能够适应国家建设的需要。</p>
						<p>(二)考生志愿关系到招生计划能否全面完成</p>
						<img src="${ctx}/img/significance_img_3.jpg" align="right" style="margin-bottom: 15px; width: 50%;"/>
						<p>招生计划是高校根据社会各项事业发展对各方面人才需求而制定的，而招生计划的完成与考生的志愿息息相关。前几年曾出现报外省院校志愿的考生少，致使部分外省院校生源不足，个别院校招生计划不能完成的情况。例如有些外省院校由于报考考生少，生源缺，在广东的招生计划只能完成80％左右；又如我省某高校某专业的招生计划为80名，由于选报该专业志愿的考生少，结果大部分都录取调剂志愿的考生，后来到校报到的只有70％，致使该校的招生计划没有完成。一方面少数上线考生因填报志愿不合理而落选，另一方面有的学校没有完成招生任务，浪费了教育资源。可见，考生志愿合理分布才能全面完成招生计划。因此，广大考生应正确、全面地认识选报志愿与招生计划的关系，科学地选择志愿，使招生计划得以全面落实。</p>
						<p>(三)选报志愿关系到考生能否把握住被录取的机会，实现自己的愿望</p>
						<p>志愿选报得当，就能使理想得以顺利实现，否则志愿就不能如愿以偿，理想也可能随之落空。近年来，绝大多数考生都能被录取到自己喜爱的院校、专业，达到理想、志愿与爱好、特长一致。但也应看到，在每年填报志愿时，由于社会偏见，家长过分干预，致使一些考生违背自己的意愿，填报了与本人理想、志趣不一致的院校和专业。这样的例子，每年都有发生。</p>

					</div>
					<div class="lyg_page">
						<a class="lyg_last" href="${ctx}/notice.jsp">上一篇</a>
						<a class="lyg_next" href="${ctx}/major.jsp">下一篇</a>
					</div>
				</div>
			</div>

		</div><!-- .container end -->
	</div><!-- .wrap end-->

</div>

<div id="footer" data="u,index">
	<div class="waper">
		<div class="footerwaper clearfix">
			<div class="footer_intro">
				<div class="footer-nav">
					<table>
						<tr>
							<td width="20%"><a href="<%=basePath %>school/list1">院校库</a></td>
							<td width="20%"><a href="<%=basePath %>major.jsp">专业库</a></td>
							<td width="20%"><a href="<%=basePath %>score1.jsp">院校推荐</a></td>
							<td width="20%"><a href="<%=basePath %>school.jsp">专业对比</a></td>
							<td width="20%"><a href="">招生计划</a></td>
						</tr>
						<tr>
							<td><a href="">报考流程</a></td>
							<td><a href="">历年分数线</a></td>
							<td><a href="">高考月历表</a></td>
							<td><a href="<%=basePath %>notice.jsp">高考须知</a></td>
							<td><a href="<%=basePath %>significance.jsp">高校选择</a></td>
						</tr>
						<tr>
							<td><a href="">专业选择</a></td>
							<td><a href="">报考误区</a></td>
							<td><a href="">新闻资讯</a></td>
							<td><a href="">最新热点</a></td>
							<td><a href="">高招动态</a></td>
						</tr>
						<tr>
							<td><a href="">系统介绍</a></td>
							<td><a href="">购卡详情</a></td>
							<td><a href="">使用指南</a></td>
							<td><a href="">成功案例</a></td>
							<td><a href="">常见问题</a></td>
						</tr>
					</table>
				</div>

				<div class="footer-link">
					<table>
						<tr>
							<td width="25%"><a href="">关于我们</a></td>
							<td width="25%"><a href="">帮助中心</a></td>
							<td width="25%"><a href="">版权声明</a></td>
							<td width="25%"><a href="">合作伙伴</a></td>
						</tr>
					</table>
				</div>
				<p>地址：河北省石家庄市裕华区裕翔街道河北师范大学新校区软件学院      官方QQ群：684033794</p>
				<p>@2017   www.yixuanze.com All Rights Reserved.河北师范大学软件学院版权所有    冀ICP备05060708号</p>
			</div>
		</div>
	</div>
</div>


</body>
</html>