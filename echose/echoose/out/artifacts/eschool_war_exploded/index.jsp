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
	.div1{padding-left:400px;float:left;margin-top:-100px;}
	.div2{margin-top:60px;}
	.div3{color:#8e8e8e; margin-top:10px;}
	.div4{margin-top:-30px;margin-left:160px;padding-left:800px;}
	.div5{height:20px;margin-top:30px;padding-left:950px;}
	.exitlogin{font-size:15px;font-weight:bold;}
	.ly_logo{width:100px;padding-left:50px;}
</style>
<!--[if IE 6]>
<script type='text/javascript' src='<%=basePath%>js/dd_belatedpng.js' ></script>
<![endif]-->

<title>首页</title>
</head>
<body>
<%
		String path1 = request.getContextPath();
		String basePath1 = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path1+"/";
		List<School> schoollist = (List<School>)request.getSession().getAttribute("schoolList");
		if(schoollist == null){
			response.sendRedirect(basePath1 + "school/list");
		}
	%>

<div id="ly_header" class="ly_min">
  <div class="ly_wrap">
    <div class="ly_lbar ly_fl">
      <div id="ly_logo"><a href="<%=basePath %>index.jsp"> <img src="<%=basePath%>images/tubiao.png" /> <span></span> </a></div>
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
        <div class="ly_hot"> 热门搜索： <a href="<%=basePath %>major.jsp">热门专业&emsp;</a><a href="<%=basePath %>school/list1">高校分数线&emsp;</a><a href="<%=basePath %>score1.jsp">高校推荐</a></div>
      </div>
    </div>
    
    <div class="div2">
      <div class="div4">
    	欢迎您，${user.sname }&emsp;&emsp;<a href="<%=basePath %>singout" class="exitlogin" style="text-decoration:underline;">退出登录</a>
      </div><br>
      <div class="div5"><a href="<%=basePath %>regist.jsp">免费注册&nbsp;&nbsp;</a> | <a href="<%=basePath %>login.jsp">&nbsp;&nbsp;登录&nbsp;&nbsp;</a><a href="<%=basePath %>">&nbsp;&nbsp;</a>
    </div>
    <div class="lyg_clear"></div>
  </div>
</div>
<!--导航-->
<div id="ly_menu">
  <div class="ly_wrap">
    <div class="lyg_fir lyg_current"><a href="<%=basePath %>index.jsp">网站首页</a></div>
    <div class="lyg_fir"><a href="<%=basePath %>school/list1">院校库</a></div>
    <div class="lyg_fir"><a href="<%=basePath %>school.jsp">专业库</a></div>
    <div class="lyg_fir"><a href="<%=basePath %>news.jsp">新闻中心</a></div>
    <div class="lyg_fir"><a href="<%=basePath %>score1.jsp">院校推荐</a></div>
    <div class="lyg_fir"><a href="<%=basePath %>">在线咨询</a></div>
    <div class="lyg_fir"><a href="<%=basePath %>">我的收藏</a></div>
    <div class="lyg_fir"><a href="<%=basePath %>notice.jsp">高考须知</a></div>
    <div class="lyg_fir"><a href="<%=basePath %>school/list1">分数查询</a></div>
    <div class="lyg_fir"><a href="<%=basePath %>significance.jsp">关于我们</a></div>
    <div class="lyg_clear"></div>
  </div>
</div>
<!--banner-->
<div class="banner">
  <ul class="slides">
    <li style="background:url(<%=basePath %>images/zhiyuan3.jpg) 50% 0 no-repeat;"></li>
    <li style="background:url(<%=basePath %>images/gaokao1.jpg) 50% 0 no-repeat;"></li>
    <li style="background:url(<%=basePath %>images/4.jpg) 50% 0 no-repeat;"></li>
    <li style="background:url(<%=basePath %>images/remen1.png) 50% 0 no-repeat;"></li>
    <li style="background:url(<%=basePath %>images/kefu1.jpg) 50% 0 no-repeat;"></li>
  </ul>
</div>
<script src="<%=basePath%>js/jquery.flexslider-min.js"></script>
<script>
    $(function(){
        $('.banner').flexslider({
            directionNav: true,
            pauseOnAction: false
        });
    });
    </script>
<div id="ly_main" class="ly_min">
  <div class="ly_wrap">
    <div class="ly_main_b">
      <div class="lyg_blank25"></div>
      <div class="lyg_blank15"></div>
      <div class="ly_product_bar">
        <h2><a class="ly_more" href="<%=basePath %>#">查看更多</a><span>功能展示</span> <em>FUNCTION SHOW</em> </h2>
        <div class="lyg_blank25"></div>
        <div class="ly_content">
          <div class="ly_relative">
            <div class="product_list">
              <div class="ly_items">
                <div class="ly_pic"><a href="<%=basePath %>school/list1" > <img src="<%=basePath%>images/gx.jpg" width="218" height="218" /></a></div>
                <div class="ly_pro_box">
                  <h3><a href="<%=basePath %>school/list1" >院校查询</a></h3>
                </div>
              </div>
              <div class="ly_items">
                <div class="ly_pic"><a href="<%=basePath %>major.jsp" > <img src="<%=basePath%>images/zy.jpg" width="218" height="218" /></a></div>
                <div class="ly_pro_box">
                  <h3><a href="<%=basePath %>major.jsp" >专业汇总</a></h3>
                </div>
              </div>
              <div class="ly_items">
                <div class="ly_pic"><a href="<%=basePath %>school/list1" > <img src="<%=basePath%>images/yx.jpg" width="218" height="218" /></a></div>
                <div class="ly_pro_box">
                  <h3><a href="<%=basePath %>school/list1" >院校汇总</a></h3>
                </div>
              </div>
              <div class="ly_items">
                <div class="ly_pic"><a href="<%=basePath %>#" > <img src="<%=basePath%>images/job.jpg" width="218" height="218" /></a></div>
                <div class="ly_pro_box">
                  <h3><a href="<%=basePath %>#" >职业展望</a></h3>
                </div>
              </div>
              <div class="ly_items  mar_l0">
                <div class="ly_pic"><a href="<%=basePath %>#" > <img src="<%=basePath%>images/shoucang.png" width="218" height="218" /></a></div>
                <div class="ly_pro_box">
                  <h3><a href="<%=basePath %>#" >我的收藏</a></h3>
                </div>
              </div>
              <div class="ly_items">
                <div class="ly_pic"><a href="<%=basePath %>#" > <img src="<%=basePath%>images/chat.jpg" width="218" height="218" /></a></div>
                <div class="ly_pro_box">
                  <h3><a href="<%=basePath %>#" >聊天室</a></h3>
                </div>
              </div>
              <div class="ly_items">
                <div class="ly_pic"><a href="<%=basePath %>#" > <img src="<%=basePath%>images/gkrl.jpg" width="218" height="218" /></a></div>
                <div class="ly_pro_box">
                  <h3><a href="<%=basePath %>#" >高考日历</a></h3>
                </div>
              </div>
              <div class="ly_items">
                <div class="ly_pic"><a href="<%=basePath %>#" > <img src="<%=basePath%>images/zixun.jpg" width="218" height="218" /></a></div>
                <div class="ly_pro_box">
                  <h3><a href="<%=basePath %>#" >在线咨询</a></h3>
                </div>
              </div>
              <div class="ly_items">
                <div class="ly_pic"><a href="<%=basePath %>#" > <img src="<%=basePath%>images/VR.jpg" width="218" height="218" /></a></div>
                <div class="ly_pro_box">
                  <h3><a href="<%=basePath %>#" >VR亲身体验</a></h3>
                </div>
              </div>
              <div class="ly_items mar_l0">
                <div class="ly_pic"><a href="<%=basePath %>introduce.jsp" > <img src="<%=basePath%>images/1.jpg" width="218" height="218" /></a></div>
                <div class="ly_pro_box">
                  <h3><a href="<%=basePath %>introduce.jsp" >关于我们</a></h3>
                </div>
              </div>
            </div>
          </div>
          <div class="lyg_clear"></div>
        </div>
      </div>
    </div>
    <!--关于我们-->
    <div class="lyg_blank25"></div>
    <div class="lyg_blank15"></div>
    <div class="ly_main_t">
      <div class="ly_lbar ly_fl">
        <div class="ly_article_bar">
          <h2><a class="ly_more" href="<%=basePath %>introduce.jsp">查看更多</a><span>关于我们</span> <em>ABOUT US</em> </h2>
          <div class="lyg_blank20"></div>
          <div class="ly_content">
            <div class="ly_a_lbar ly_fl">
              <div class="ly_pic"> <img src="<%=basePath%>images/aboutus.jpg" width="248" height="216" /></div>
            </div>
            <div class="ly_a_rbar ly_fr">
              <div class="ly_title"><span style="font-weight:bolder">易选择网站简介</span></div>
              <div class="ly_intro"> &nbsp;&nbsp;易选择网站创建的主要目的是帮助高考生择校和高校发布信息的网站，与同类型的网站先比易选泽不仅照顾到了高考生，而且关联到了高校，为高考生与高校间建立了一座相互了解和沟通的桥梁。因此易选泽可以为高考生提供最适合自己，最理想的填报志愿的方案。高校老师可以通过在我们网站发布信息，来提高学校的曝光率和知名度，吸引更多更优秀的生源。 </div>
            </div>
            <div class="lyg_clear"></div>
          </div>
        </div>
      </div>
      <!--客户见证-->
      <div class="ly_rbar ly_fr">
        <div class="ly_news_bar">
          <h2><a class="ly_more" href="<%=basePath %>#">查看更多</a><span>用户说</span> <em>USER SAY</em> </h2>
          <div class="lyg_blank15"></div>
          <div class="ly_content">
            <div class="ly_item">
              <div class="ly_n_lbar ly_fl">
                <div class="ly_pic"><a href="<%=basePath %>#" > <img src="<%=basePath%>images/yonghusay.jpg" width="145" height="103" /></a></div>
              </div>
              <div class="ly_n_rbar ly_fr">
                <h3><a href="<%=basePath %>#" ></a></h3>
                <div class="ly_date">&nbsp;&nbsp;我是2017年的考生，去年高考时考了530分，通过易选择网站推荐，我报了河北师范大学，并被成功得被录取到了软件学院。非常满意这个学校和易选择网站为我推荐的这个专业<br><br><br>2017/10/10</div>
                <div class="ly_intro"></div>
              </div>
              <div class="lyg_clear"></div>
            </div>
            <div class="ly_line"></div>
            <div class="ly_item">
              <div class="ly_n_lbar ly_fl">
                <div class="ly_pic"><a href="<%=basePath %>#" > <img src="<%=basePath%>images/yonghusay.jpg" width="145" height="103" /></a></div>
              </div>
              <div class="ly_n_rbar ly_fr">
                <h3><a href="<%=basePath %>#" ></a></h3>
                <div class="ly_date">&nbsp;&nbsp;我成绩不错，根据易选择的推荐，报考了清华大学高分子材料与工程专业，被录取后，发现自己很适合学习这个专业，而且这个专业市场需求量大，就业后工资高，易选择真的为我提供了最适合我的专业！<br><br>2017/12/10</div>
                <div class="ly_intro"> </div>
              </div>
              <div class="lyg_clear"></div>
            </div>
          </div>
        </div>
      </div>
      <div class="lyg_clear"></div>
    </div>
    <div class="lyg_blank25"></div>
    <div class="lyg_blank25"></div>
    <!--案例展示-->
    <div class="ly_main_b">
      <div class="ly_product_bar gundong_">
        <h2><a class="ly_more" href="<%=basePath %>school.jsp">查看更多</a><span>名校展示</span> <em>SCHOOL SHOW</em> </h2>
        <div class="lyg_blank25"></div>
        
        <div class="ly_content"><a class="ly_left_btn" href="<%=basePath %>javascript:;"></a><a class="ly_right_btn" href="<%=basePath %>javascript:;"></a>
          <div class="ly_relative">
            <div class="ly_absolute">
            <c:forEach var="school" items="${schoolList }">
              <div class="ly_item">
                <div class="ly_pic"><a href="${school.snet }" > <img src="<%=basePath %>${school.simg}" width="196" height="196" /></a></div>
                <div class="ly_pro_box">
                  <h3><a href="${school.snet }" >${school.sname }</a></h3>
                  <div class="ly_intro"></div>
                </div>
              </div>
              
              </c:forEach>
            </div>
          </div>
          <div class="lyg_clear"></div>
          
        </div>
      </div>
    </div>
    <!-- 新闻 -->
    <div class="news-2">
      <div class="l">
        <div id="lib_Tab1">
          <div class="lib_Menubox lib_tabborder">
            <ul>
              <li id="one1" onMouseOver="setTab('one',1,4)" class="hover"><a href="<%=basePath %>">新闻资讯</a></li>
              <li id="one2" onMouseOver="setTab('one',2,4)" class=""><a href="<%=basePath %>">高招动态</a></li>
              <li id="one3" onMouseOver="setTab('one',3,4)" class=""><a href="<%=basePath %>major.jsp">专业解读</a></li>
              <li id="one4" onMouseOver="setTab('one',4,4)" class=""><a href="<%=basePath %>">常见问题</a></li>
            </ul>
          </div>
          <div class="lib_Contentbox lib_tabborder">
            <div id="con_one_1" style="display: block;">
              <div class="con_l"> <a href="<%=basePath %>"><img src="<%=basePath%>images/7.jpg" width="320" height="230"></a> </div>
              <div class="con_r">
               <c:forEach var="news" items="${newsList }">
              	 <li><strong><a href="<%=basePath %>news/list?nid=${news.nid}">${news.ntitle}</a></strong> <span><a href="<%=basePath %>news/list?nid=${news.nid}">${news.ncontent}</a></span></li>	
               </c:forEach>
              </div>
            </div>
            <div id="con_one_2" style="display: none;">
              <div class="con_l"> <a href="<%=basePath %>b"><img src="<%=basePath%>images/4.jpg" width="320" height="230"></a> </div>
              <div class="con_r">
                <ul>
                  <li><strong><a href="<%=basePath %>">高考录取率保持高位 自主招生竞争激烈 全面取消“五项加分”</a></strong> <span> <a href="<%=basePath %>">备受瞩目的高考即将开锣。全国高考报名人数在经历4年稳定之后，今年迎来拐点，教育部相关负责人在2018年全国普通高。。。</a></span></li>
                  <li><strong><a href="<%=basePath %>">新高考平稳落地 选考物理优势明显</a></strong> <span> <a href="<%=basePath %>">2017年，新高考改革在浙江、上海落地，打破了以前只有文科、理科两种选择的限制，扩大了学生选择权。。。</a></span></li>
                  <li><strong><a href="<%=basePath %>">部分地区录取率突破90%</a></strong> <span> <a href="<%=basePath %>">虽然今年高考报名人数大涨，但从长远看，高考生源基础并没有根本性变化。2014年与2015年普通高中招生均保持在797万人左右。。。</a></span></li>
                </ul>
              </div>
            </div>
            <div id="con_one_3" style="display: none;">
              <div class="con_l"> <a href="<%=basePath %>"><img src="<%=basePath%>images/timg.jpg" width="320" height="230"></a> </div>
              <div class="con_r">
                <ul>
                  <li><strong><a href="<%=basePath %>major.jsp">医学</a></strong> <span><a href="<%=basePath %>">　业务培养目标：本专业培养具备自然科学、生命科学和医学科学基本理论知识和实验技能，能够在高等医学院校和医学科研机构等部门从事基础医学。。。</a></span></li>
                  <li><strong><a href="<%=basePath %>major.jsp">软件工程</a></strong> <span><a href="<%=basePath %>">培养目标:培养适应计算机应用学科的发展，特别是软件产业的发展，具备计算机软件的基础理论、基本知识和基本技能，具有用软件工程的思想、方法和技术来分析。。。</a></span></li>
                  <li><strong><a href="<%=basePath %>major.jsp">数学与应用数学</a></strong> <span><a href="<%=basePath %>">业务培养目标：本专业培养掌握数学科学的基本理论与基本方法，具备运用数学知识、使用计算机解决实际问题的能力，受到科学研究的初步训练。。。</a></span></li>
                </ul>
              </div>
            </div>
            <div id="con_one_4" style="display: none;">
              <div class="con_l"> <a href="<%=basePath %>"><img src="<%=basePath%>images/6.jpg" width="320" height="230"></a> </div>
              <div class="con_r">
               <c:forEach var="question" items="${questionList }">
              	 <li><strong><a href="<%=basePath %>">${question.qname}</a></strong> <span><a href="<%=basePath %>">${question.qanswer}</a></span></li>	
               </c:forEach>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="r">
        <a href="<%=basePath %>"><img src="<%=basePath%>images/8.png"></a>
      </div>
    </div>
  </div>
</div>
<div class="lyg_blank25"></div>
<div class="lyg_blank25"></div>
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
    	<a href="<%=basePath %>introduce.jsp">关于我们&nbsp;&nbsp;</a> | <a href="<%=basePath %>">&nbsp;&nbsp;帮助中心&nbsp;&nbsp;</a> | <a href="<%=basePath %>">&nbsp;&nbsp;版权声明&nbsp;&nbsp;</a> | <a href="<%=basePath %>">&nbsp;&nbsp;合作伙伴</a>
    </div>
    

    
  </div>
</div>

</body>
</html>