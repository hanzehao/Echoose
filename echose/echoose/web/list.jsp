<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List" %>
<%@page import="com.ef.entity.School" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
		String path = request.getContextPath();
		String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel='stylesheet' type='text/css' href='<%=basePath%>css/style.css' />
<script type='text/javascript' src='<%=basePath%>js/jquery-1.8.2.min.js' ></script>
<script type='text/javascript' src='<%=basePath%>js/web.js' ></script>
<script type='text/javascript' src='<%=basePath%>js/gundong.js' ></script>
<link rel="stylesheet" href="<%=basePath %>css/index.css"/>
<link rel="stylesheet" href="<%=basePath %>css/swiper3.07.min.css"/>
<script src="<%=basePath %>js/jquery-1.11.2.min.js"></script>
<script src="<%=basePath %>js/main.js"></script>
<script src="<%=basePath %>js/koala.min.1.5.js"></script>
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
	.div2{margin-top:-60px;float:left;}
	.div3{color:#8e8e8e; margin-top:10px;}
	.div4{margin-top:-30px;margin-left:160px;padding-left:800px;}
	.div5{height:20px;margin-top:5px;padding-left:1000px;}
	.ly_pic{margin:0 50px;}
	.ly_pro_box{margin:0 50px;}
	table{  border-collapse:collapse;  }
	.fenye{height:60px;width:800px;margin-top:100px;}
	.fenye2{font-size:20px}
	.fenye input{background-color:#66c245;width:70px;}
	#ly_footer a:hover{color:#ff6600;}
	.ly_wrap{color:black;}
	.ly_pro_box{width:200px;}
</style>
<!--[if IE 6]>
<script type='text/javascript' src='<%=basePath%>js/dd_belatedpng.js' ></script>
<![endif]-->

<title>院校库</title>
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
    	欢迎您，${sname }&emsp;&emsp;<a href="<%=basePath %>admin/adminoff" class="exitlogin" style="text-decoration:underline;">退出登录</a>
      </div><br>
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
    <div class="lyg_fir"><a href="<%=basePath %>school/list1">院校库</a></div>
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

<script src="<%=basePath%>js/jquery.flexslider-min.js"></script>
<script>
    $(function(){
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
          <h2>学校展示</h2>
          <dl>
          <c:forEach var="type" items="${typeList }">
             <dt> <a href="<%=basePath %>collegetype/schooltype?ctid=${type.ctid}" >${type.ctname }</a> </dt>
            </c:forEach>
          </dl>
          
        </div>
      </div>
      <div class="lyg_rpage">
        <div class="lyg_rpage_box">
          <div class="lyg_page_title">

            <h2>热门大学</h2>
            <div id="lyg_breadcrumb"> <a class="ly_home" href="<%=basePath%>index.jsp">首页</a> <font>></font> <span class="lyg_current">热门大学</span> </div>
            <div class="lyg_clear"></div>

          </div>
          <div class="pro_list">
          <c:forEach var="school" items="${schoolList}">
            <div class="ly_items">
              <div class="ly_pic"> <a href="<%=basePath%>school/findBySname?sname=${school.sname}" > <img src="<%=basePath%>${school.simg}" width="250" height="250" /></a> </div>
              <div class="ly_pro_box">
                <h3> <a href="<%=basePath%>school/findBySname?sname=${school.sname}" >${school.sname}</a>&emsp; | &emsp;${school.sscore } </h3>
              </div>
            </div>
           </c:forEach>
            
          </div>
          <div class="lyg_clear"></div>
        </div>
        <div class="lyg_blank25"></div>
        <div> 
        	<table class="fenye">
      					 <tr>
            				<td colspan="6" align="center" bgcolor="white" class="fenye2">共&nbsp;${page.totalRecords}&nbsp;条记录 &nbsp;共&nbsp;${page.totalPages}&nbsp;页 &nbsp;当前第&nbsp;${page.pageNo}&nbsp;页 &emsp;&emsp;&emsp;       
			                <a href="<%=request.getContextPath()%>/school/list1?pageNo=${page.topPageNo}"><input type="button" name="fristPage" value="首页" class="fenye2"/></a>&nbsp;&nbsp;
			                <c:choose>
			                  <c:when test="${page.pageNo!=1}">             
			                      <a href="<%=request.getContextPath()%>/school/list1?pageNo=${page.previousPageNo }"><input type="button" name="previousPage" value="上一页"  class="fenye2"/></a> &nbsp;               
			                  </c:when>
			                  <c:otherwise>   
			                      <input type="button" disabled="disabled" name="previousPage" value="上一页" class="fenye2" />       
			                  </c:otherwise>
			                </c:choose>&nbsp;&nbsp;
			                <c:choose>
			                  <c:when test="${page.pageNo != page.totalPages}">
			                    <a href="<%=request.getContextPath()%>/school/list1?pageNo=${page.nextPageNo }"><input type="button" name="nextPage" value="下一页" class="fenye2"/></a>&nbsp;
			                  </c:when>
			                  <c:otherwise>    
			                      <input type="button" disabled="disabled" name="nextPage" value="下一页" />
			                  </c:otherwise>
			                </c:choose>&nbsp;&nbsp;
			                <a href="<%=request.getContextPath()%>/school/list1?pageNo=${page.bottomPageNo}"><input type="button" name="lastPage" value="尾页" class="fenye2"/></a>&nbsp;
			            </td>
        			</tr>
     			</table>
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
    	<a href="<%=basePath%>">院校库</a>&emsp;&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath%>">专业库</a>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath%>">院校推荐</a>&emsp;&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath%>">专业对比</a>&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath%>">招生计划</a><br>
		<a href="<%=basePath%>">报考流程</a>&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath%>">历年分数线</a>&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath%>">高考月历表</a>&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath%>">高考须知</a>&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath%>">高校选择</a><br>
		<a href="<%=basePath%>">专业选择</a>&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath%>">报考误区</a>&emsp;&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath%>">新闻资讯</a>&emsp;&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath%>">最新热点</a>&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath%>">高招动态</a><br>
		<a href="<%=basePath%>">系统介绍</a>&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath%>">购卡详情</a>&emsp;&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath%>">使用指南</a>&emsp;&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath%>">成功案例</a>&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath%>">常见问题</a>
    </div>
    
    <div class="divcss1">
    	<a href="<%=basePath%>introduce.jsp">关于我们&nbsp;&nbsp;</a> | <a href="<%=basePath%>">&nbsp;&nbsp;帮助中心&nbsp;&nbsp;</a> | <a href="<%=basePath%>">&nbsp;&nbsp;版权声明&nbsp;&nbsp;</a> | <a href="<%=basePath%>">&nbsp;&nbsp;合作伙伴</a>
    </div>
    

    
  </div>
</div>

</body>
</html>