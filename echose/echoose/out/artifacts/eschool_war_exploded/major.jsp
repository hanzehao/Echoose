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

	<title>热门专业</title>

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
		
		<div class="u-container">

			<div class="page-home js-usercard-box" id="notices">

				<div id="lyg_news_detail_0" style="">
					<h1><span style="color:DC143C;font-size:60px;font-family:'黑体';font-weight:bolder">热门专业</span></h1>
					<div class="lyg_para">
						<div class="lyg_date">作者：66次 | 更新时间：2016.06.15</div>
						<div class="lyg_clear"></div>
					</div>
					<div class="thumb"></div>
					<div class="lyg_content">
						 <h2>最适合<span style="color:483D8B;font-size:30px;font-style:italic;font-weight:bolder">男生</span>报考的三大<span style="color:DC143C;font-size:30px;font-weight:bolder;font-style:italic">热门</span>专业</h2>
						 
						 <img src="${ctx}/img/major_1.jpg" align="left" style="margin-bottom: 20px; width: 20%;"/>
						 <P><span style="color:483D8B;font-size:17px;font-weight:bolder">top1 采矿工程</span></P>
						 <p><span style="font-weight:bolder ">推荐理由：</span>本科应届毕业生签约率一直是100%，大二大三都有可能被预定。</p>
						 <p><span style="font-weight:bolder ">专业介绍：</span>本专业培养具备固体(煤、金属及非金属)矿床开采的基本理论和方法，具备采矿工程师的基本能 </p>
						 <p>力，能在采矿领域等方面从事矿区开发规划、生产技术管理科学研究的高等工程技术人才。</p>
						 <p><span style="font-weight:bolder ">专业层次：</span>本科&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-weight:bolder ">专业类别：</span>工学</p>
					
						 
						 <img src="${ctx}/img/major_2.jpeg" align="left" style="margin-bottom: 20px; width: 20%;"/>
						 <P><span style="color:483D8B;font-size:17px;font-weight:bolder">top2道路桥梁与渡河工程</span></P>
						 <p><span style="font-weight:bolder ">推荐理由：</span>几乎每个学校的道路桥梁与渡河工程专业毕业生都一直畅销不衰。</p>
						 <p><span style="font-weight:bolder ">专业介绍：</span>道路桥梁与渡河工程专业属于土木工程一级学科和交通运输工程一级学科下属的二级学科，主要培养</p>
						 <p>施工、养护、管理等方面的科学研究和工程建设的高级人才。 </p>
						 <p><span style="font-weight:bolder ">专业层次：</span>本科&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-weight:bolder ">专业类别：</span>工学</p>
						 
						 <img src="${ctx}/img/major_3.jpg" align="left" style="margin-bottom: 20px; width: 20%;"/>
						 <P><span style="color:483D8B;font-size:17px;font-weight:bolder">top3轮机工程</span></P>
						 <p><span style="font-weight:bolder ">推荐理由：</span>由于经济贸易以及海外往来的种种需要，该专业毕业人才显得十分热手。</p>
						 <p><span style="font-weight:bolder ">专业介绍：</span>本专业培养德、智、体、美全面发展，掌握船舶修理与制造的基础理论、知识与应用能力，具有较高 </p>
						 <p>管理，并能适应机电一体化发展的多功能复合型高级工程技术人才。</p>
						 <p><span style="font-weight:bolder ">专业层次：</span>本科&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-weight:bolder ">专业类别：</span>工学</p>
						 
						 <h2>最适合<span style="color:FF1493;font-size:30px;font-style:italic;font-weight:bolder">女生</span>报考的三大<span style="color:DC143C;font-size:30px;font-weight:bolder;font-style:italic">热门</span>专业</h2>
						 
						 <img src="${ctx}/img/major_4.jpeg" align="left" style="margin-bottom: 20px; width: 20%;"/>
						 <P><span style="color:483D8B;font-size:17px;font-weight:bolder">top1小语种</span></P>
						 <p><span style="font-weight:bolder ">推荐理由：</span>毕业后出国机会多，对于女生开拓视野、提升社会阶层很有帮助</p>
						 <p><span style="font-weight:bolder ">专业介绍：</span>一种是指联合国规定的通用工作语(英语、汉语、法语、俄语、西班牙语、阿拉伯语)之外的语种；</p>
						 <p>培养学生接受所学语种听、说、读、写、译等方面良好的技能训练，学习该语种语言、文学、历史</p>
						 <p>培养学生具备从事该语种相关翻译、研究、教学、管理等工作的良好素质和较强的能力。</p>
						 <p><span style="font-weight:bolder ">专业层次：</span>本科&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-weight:bolder ">专业类别：</span>文学类</p>
						 
						  <img src="${ctx}/img/major_5.jpg" align="left" style="margin-bottom: 20px; width: 20%;"/>
						 <P><span style="color:483D8B;font-size:17px;font-weight:bolder">top2护理学</span></P>
						 <p><span style="font-weight:bolder ">推荐理由：</span>护理学向来是适合于女生学习和就业的领域</p>
						 <p><span style="font-weight:bolder ">专业介绍：</span>本专业培养具备人文社会科学、医学、预防保健的基本知识及护理学的基本理论知识</p>
						 <p>专门人才。具有对服务对象实施整体护理及社区健康服务的基本能力。</p>
						 <p><span style="font-weight:bolder ">专业层次：</span>本科&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-weight:bolder ">专业类别：</span>医学类</p>
						 
						  <img src="${ctx}/img/major_6.jpg" align="left" style="margin-bottom: 20px; width: 20%;"/>
						 <P><span style="color:483D8B;font-size:17px;font-weight:bolder">top3心理学</span></P>
						 <p><span style="font-weight:bolder ">推荐理由：</span>女生天性善于交流沟通、察言观色，在此领域发展必定如鱼得水</p>
						 <p><span style="font-weight:bolder ">专业介绍：</span>本专业培养具备心理学的基本理论、基本知识、基本技能，能在科研部门</p>
						 <p>和中等学校、企事业单位等从事心理学科学研究、教学工作和管理工作的高级专门人才。</p>
						 <p><span style="font-weight:bolder ">专业层次：</span>本科&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-weight:bolder ">专业类别：</span>理学类</p>
						 
						 <h2>最适合<span style="color:483D8B;font-size:30px;font-style:italic;font-weight:bolder">理科生</span>报考的三大<span style="color:DC143C;font-size:30px;font-weight:bolder;font-style:italic">热门</span>专业</h2>
						 
						 <img src="${ctx}/img/major_7.jpg" align="left" style="margin-bottom: 20px; width: 20%;"/>
						 <P><span style="color:483D8B;font-size:17px;font-weight:bolder">top1数学与应用数学</span></P>
						 <p><span style="font-weight:bolder ">推荐理由：</span>数学专业就业前景广阔，考研选择发展方向时有很大优势</p>
						 <p><span style="font-weight:bolder ">专业介绍：</span>本专业培养掌握数学科学的基本理论与基本方法，具备运用数学知识、使用计算机解决实际问题</p>
						 <p>或在生产经营及管理部门从事实际应用、开发研究和管理工作的高级专门人才。 </p>
						 <p><span style="font-weight:bolder ">专业层次：</span>本科&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-weight:bolder ">专业类别：</span>理学类</p>
					
						 <img src="${ctx}/img/major_9.jpg" align="left" style="margin-bottom: 20px; width: 20%;"/>
						 <P><span style="color:483D8B;font-size:17px;font-weight:bolder">top2信息与计算科学</span></P>
						 <p><span style="font-weight:bolder ">推荐理由：</span>现如今的社会已经步入互联网时代，任何领域都需要与计算机有关的人才</p>
						 <p><span style="font-weight:bolder ">专业介绍：</span>本专业培养具有良好的数学知识，掌握信息科学和计算科学的基本理论和方法，受到科学研究的</p>
						 <p>初步训练，能运用所学知识和熟练的计算机技能解决实际问题，能在科技</p>
						 <p>教育和经济部门从事研究、教学和应用开发和管理工作的高级专门人才。</p>
						 <p><span style="font-weight:bolder ">专业层次：</span>本科&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-weight:bolder ">专业类别：</span>理工类</p>
						 
						 <img src="${ctx}/img/major_9.png" align="left" style="margin-bottom: 20px; width: 20%;"/>
						 <P><span style="color:483D8B;font-size:17px;font-weight:bolder">top3应用物理学</span></P>
						 <p><span style="font-weight:bolder ">推荐理由：</span>应用物理的就业范围很广</p>
						 <p><span style="font-weight:bolder ">专业介绍：</span>本专业学生主要学习物理学的基本理论与方法，具有良好的数学基础和实验技能，受到应用基础</p>
						 <p>新技术发展的需要，只有较强的知识更新能力和较广泛的科学适应能力。 </p>
						 <p><span style="font-weight:bolder ">专业层次：</span>本科&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-weight:bolder ">专业类别：</span>理学类</p>
						
						 <h2>最适合<span style="color:FF1493;font-size:30px;font-style:italic;font-weight:bolder">文科生</span>报考的三大<span style="color:DC143C;font-size:30px;font-weight:bolder;font-style:italic">热门</span>专业</h2>
						 
						 <img src="${ctx}/img/major_10.jpg" align="left" style="margin-bottom: 20px; width: 20%;"/>
						 <P><span style="color:483D8B;font-size:17px;font-weight:bolder">top1会计学</span></P>
						 <p><span style="font-weight:bolder ">推荐理由：</span>市场需求量大</p>
						 <p><span style="font-weight:bolder ">专业介绍：</span>本专业培养具备管理、经济、法律和会计学等方面的知识和能力，能在企、事业单位及政府专门人才</p>
						 <p><span style="font-weight:bolder ">专业层次：</span>本科&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-weight:bolder ">专业类别：</span>管理学类</p>
						 
						 <img src="${ctx}/img/major_12.jpg" align="left" style="margin-bottom: 20px; width: 20%;"/>
						 <P><span style="color:483D8B;font-size:17px;font-weight:bolder">top2国际经济与贸易</span></P>
						 <p><span style="font-weight:bolder ">推荐理由：</span>毕业后可进入大型企业，薪资高</p>
						 <p><span style="font-weight:bolder ">专业介绍：</span>本专业培养的学生应较系统地掌握马克思主义经济学基本原理和国际经济、国际贸易的</p>
						 <p>外资企业及政府机构从事实际业务、管理、调研和宣传策划工作的高级专门人才。   </p>
						 <p><span style="font-weight:bolder ">专业层次：</span>本科&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-weight:bolder ">专业类别：</span>经济学类</p>
						 
						 
						 <img src="${ctx}/img/major_12.png" align="left" style="margin-bottom: 20px; width: 20%;"/>
						 <P><span style="color:483D8B;font-size:17px;font-weight:bolder">top3法学</span></P>
						 <p><span style="font-weight:bolder ">推荐理由：</span>毕业后社会地位高，需求量大</p>
						 <p><span style="font-weight:bolder ">专业介绍：</span>法学专业培养系统掌握 法学知识，熟悉我国法律和党的相关政策，能在国家机关</p>
						 <p>仲裁机构和 法律服务机构从事法律工作的高级专门人才。   </p>
						 <p><span style="font-weight:bolder ">专业层次：</span>本科&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-weight:bolder ">专业类别：</span>法学类</p>
						 
						 
						 
					</div>
					<div class="lyg_page">
						<a class="lyg_last" href="${ctx}/notice.jsp">上一篇</a>
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
				<p>地址：河北省石家庄市裕华区裕翔街道河北师范大学新校区软件学院      官方QQ群：684033794</p>
				<p>@2017   www.yixuanze.com All Rights Reserved.河北师范大学软件学院版权所有    冀ICP备05060708号</p>
			</div>
		</div>
	</div>
</div>


</body>
</html>