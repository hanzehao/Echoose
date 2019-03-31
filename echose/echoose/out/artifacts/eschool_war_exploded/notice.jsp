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

	<title>高考须知</title>

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
<style>
</style>
<body>

<div id="header">
	<div class="page-container" id="nav">
		<div id="logo" class="logo"><a target="_self" title="首页"><img src="<%=basePath%>images/tubiao.png" /></a>
		</div>


		<button type="button" class="navbar-toggle visible-xs-block js-show-menu">
			<i class="icon-menu"></i>
		</button>
		<ul class="nav-item">
			<li><a href="<%=basePath %>index.jsp" target="_self">网站首页</a></li>
			<li><a href="<%=basePath %>school/list1" target="_self">院校库</a></li>
			<li><a href="<%=basePath %>school.jsp" target="_self">专业库</a></li>
			<li><a href="<%=basePath %>news.jsp" target="_self">新闻中心</a></li>
			<li><a href="<%=basePath %>score1.jsp" target="_self">院校推荐</a></li>
			<li><a href="<%=basePath %>" target="_self">在线咨询</a></li>
			<li><a href="" target="_self">我的收藏</a></li>
			<li><a href="<%=basePath %>notice.jsp" target="_self">高考须知</a></li>
			<li><a href="<%=basePath %>school/list1" target="_self">常见问题</a></li>
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
		<!-- 图片轮播位置 -->
		<div class="banner">
			<ul class="slides">
				<li style="background:url(images/4.jpg) 50% 0 no-repeat;"></li>
				<li style="background:url(images/5.jpg) 50% 0 no-repeat;"></li>
				<li style="background:url(images/4.jpg) 50% 0 no-repeat;"></li>
			</ul>
		</div>
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
					<h1><span style="color:005AB5;font-size:70px;font-family:'华文新魏';font-weight:bolder">高考须知</span></h1>
					<div class="lyg_para">
						<div class="lyg_date">作者：66次 | 更新时间：2016.06.15</div>
						<div class="lyg_clear"></div>
					</div>
					<div class="thumb"></div>
					<div class="lyg_content">
						 <p><span style="color:8E8E8E;font-size:20px;font-family:'黑体'">临近高考，高考生和家长们该怎么做才能以最佳状态冲刺高考？有些考生和家长觉得，现在高考仅剩这么几天，各科成绩已经不会有什么大的进展了，所以选择放松来准备高考。也有的考生觉得，最后几十天，再将所学知识温习一遍，这样会记得更加牢固。而此时，家长们也会以大补的方式来帮助孩子。那么这些做法到底对不对呢？高考前怎么做才是最佳最正确的待考方式呢？</span></p>
						 <P>&nbsp;&nbsp;</P>
						 <h3 style="color:750075;font-weight:bolder;font-size:25px;padding-left:420px;">考生篇</h3>
						 <img src="${ctx}/img/notice1.jpg" style="width: 750px; height: 548px;padding-left:100px;">
						 <p><span style="font-weight:bolder;font-size:17px">考前还在搞突击? 生物钟要调节好</span></p>
						 <P> 许多考生到了最后冲刺阶段，觉得时间不够用，每天熬到深夜，第二天精神疲累。但高考时间安排在：上午9：00-11：00，下午3：00-5：00，一般考试也都是上、下午时间。<br />

　　熬夜的考生此时的生物钟正处于低谷状态，思维反应、做题效率可能会受到影响。尤其考前的一段时间，考生可能进入自由复习时间，但生活作息仍需稳定。因为人的植物神经和大脑，最喜欢“有规律的生活”。<br />

　　按照常规起床，进行复习;按平时的饮食量进食，按时入睡，保持常规而充足的睡眠;减少生活节律的突然变化，平常状态就是最棒的状态。<br />
						 </P>
						 <p><span style="font-weight:bolder;font-size:17px">做不到最好? 调整期待接纳不完美</span></p>
						 <P>
						 一些考生早早定好了目标，一些考生梦想着超水平发挥，可考试越来越近，自己的成绩不如预期，或者没什么起色，总觉得自己做不够好，复习得不够全面，渐渐力不从心。在期望的重压下，身体会释放肾上腺素，然后变得更紧张。<br />

　　世上没有完美的学校，也没有完美的复习。选择适合自己的，那便是最好的。不妨和父母或者其他对自己影响重大的人好好沟通，调整目标。复习时也不过度苛求自己，遗忘是正常的，但每一次的看、读、背都加深了对它的记忆。要知道，永远不可能将所有的知识点都完美收入囊中再进入考场。现在的状态就是当下最好的状态。<br />
						 
						 </P>
						 <p><span style="font-weight:bolder;font-size:17px">心情焦虑怎么办? 写下焦虑情绪</span></p>
						 <P>
						 　其实每个参加考试的人都会有或多或少的担心，但太严重的话会影响我们的考试发挥。想要“赶走”焦虑，不如写下它。研究发现，花10分钟书写与任务有关或考试有关的焦虑情绪和想法可以显著提高参与者的成绩，尤其在高焦虑情境下或高焦虑特质的人上效果明显。也就是说，写下与考试有关的焦虑情绪，能够帮我们有效缓解情绪。<br />

　　不妨每天花10分钟左右的时间，把你的担心、害怕、焦虑都写下来。这个过程中，可以自由表达内心的情绪情感，也是一种情绪的抒泄，它减小了情绪抑制，也有效缓解了情绪。<br />

　　其实，焦虑水平和工作效率是呈倒U型关系的。中等程度焦虑下，其实有着最佳的工作效率，不必发现自己焦虑而有过多担心。适度的焦虑状态也是一个好状态。<br />
						 
						 </P> 
						 <p><span style="font-weight:bolder;font-size:17px">高考<span style="color:EA0000;font-size:30px;font-style:italic;font-weight:bolder">勿忘</span>十件事</span></p>
						 <p> 一、考前调整作息时间以及身心状态</p>
						 <p> 二、考试时带好准考证和身份证</p>
						 <p> 三、做好出行安排避免延误考试</p>
						 <p> 四、答题前准确填姓名、准考证号、贴条形码</p>
						 <p> 五、在答题卡指定的位置作答</p>
						 <p> 六、选择题用2B铅笔非选择题用黑色笔</p>
						 <p> 七、保持答题卡清晰禁用涂改液等</p>
						 <p> 八、交卷出场时间不得早于结束前30分钟</p>
						 <p> 九、准考证和密码应妥善保管</p>
						 <p> 十、切勿相信所谓的“高考试卷、答案”不可作弊</p>
						   

						 <h3 style="color:009100;font-weight:bolder;font-size:25px;padding-left:420px;">家长篇</h3>
						 <img align="center" src="${ctx}/img/notice2.jpg" style="width: 750px; height: 548px;padding-left:100px;">
						 <p><span style="font-weight:bolder;font-size:17px">总是过问孩子的学习成绩情况</span></p>
						 <P>
						 这段时间孩子的压力比你更大，他知道自己的状况。但我要说的是，关心成绩原则上是没错的，但你有能力辅导孩子的学习吗？你有能力在这段时间提高孩子的成绩吗？因为你每问一次，就是在揭一次孩子的伤疤。<br />
						 </P>
						 <p><span style="font-weight:bolder;font-size:17px">把自己的焦虑和绝望，写在脸上</span></p>
						 <P>
						 情绪是会感染的，尤其在孩子面前，在高考前的这个关键时期，哪怕你对孩子不说一句话，但你内心的紧张和焦虑，已经传递给了你的孩子！
						 </P>
						 <p><span style="font-weight:bolder;font-size:17px">总拿别人家的孩子和自己的孩子做对比</span></p>
						 <p>
						 作为家长，回想一下你小时候最反感也是你的父母老拿自己的孩子和别人家孩子做对比吧！初心是好的，但现在给孩子一个榜样，是不是有点晚了？<br />

                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;据我国心理协会调查统计，93.32%的考生在中高考前一个月内都会出现不同程度的焦虑反应，97.91%的考生在考场上都会出现焦虑抑郁。高考是孩子人生重要的转折，千万不能因为孩子懂事的一句“我不紧张”就放松警惕，起码我们家长要做到不给孩子增加压力。
						 </p>
						 
						 
						 
						
						 
						 
					</div>
					<div class="lyg_page">
						<a class="lyg_last" href="${ctx}/significance.jsp">上一篇</a>
						<a class="lyg_next" href="${ctx}/introduce.jsp">下一篇</a>
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

			</div>
		</div>
	</div>
</div>


</body>
</html>