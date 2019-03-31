<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
		String path = request.getContextPath();
		String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="http://www.gaokao.com/favicon.ico" rel="shortcut icon"/>

<link href="<%=basePath %>css/base1.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>css/style1.css?2014623" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>css/nav_jump_gk.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=basePath %>js/jquery.js"></script>

<script type="text/javascript" src="<%=basePath %>js/common.js"></script>

<script type="text/javascript" src="<%=basePath %>js/s.js"></script>

<!--[if IE 6]>

    <script type="text/javascript" src="http://img.eduuu.com/website/public_js/DD_belatedPNG.js" ></script>

    <script type="text/javascript">

    DD_belatedPNG.fix('..collegeName b,.collegeName .areaBox em,table em,.classColl .areaBox .arry, .f_foot_bg, .head p span a');

    </script>

<![endif]-->
<!--新增-->
<link rel="stylesheet" type="text/css" href="<%=basePath %>css/new_base.css"> 
<link rel="stylesheet" type="text/css" href="<%=basePath %>css/common.css"/>

<script type="text/javascript" src="<%=basePath %>js/jquery-1.9.2.min.js"></script>
<script type="text/javascript" src="<%=basePath %>js/common1.js"></script>

<link rel='stylesheet' type='text/css' href='css/style.css' />
<script type='text/javascript' src='js/jquery-1.8.2.min.js' ></script>
<script type='text/javascript' src='js/web.js' ></script>
<script type='text/javascript' src='js/gundong.js' ></script>
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
	.divcss{padding-left:180px;font-size:15px;}
	.divcss1{padding-left:300px;margin-top:20px;}
	.divcss2{padding-left:180px;margin-top:15px;}
	.div1{float:left;padding-left:350px;}
	.div2{margin-top:45px;float:left;}
	.div3{color:#8e8e8e; margin-top:10px;}
	.wrapper{background-color:#66c245;}
</style>
<!--[if IE 6]>
<script type='text/javascript' src='js/dd_belatedpng.js' ></script>
<![endif]-->

<title>院校库</title>
</head>
<body>
<div id="ly_header" class="ly_min">
  <div class="ly_wrap">
    <div class="ly_lbar ly_fl">
      <div id="ly_logo"><a href="default.htmll"> <img src="<%=basePath%>images/tubiao.png" /> <span></span> </a></div>
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
      <a href="regist.jsp">免费注册&nbsp;&nbsp;</a> | <a href="login.jsp">&nbsp;&nbsp;登录&nbsp;&nbsp;</a>
      &emsp;&emsp;<a href="adminlogin.jsp">管理员登录</a>
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

<!--头部-->

<div id="wrapper">
   
    
    <div class="hr_10"></div>
    
	<div class="cont_l in">

		<h3 class="zy_tit ss3" style="display:none;">
        <span><em>高校查询</em></span>
            <p><input id="schname" type="text" onfocus="this.value=''" onblur="if(!this.value) this.value='请输入高校名称'" value="请输入高校名称" size='20' class="searchInput" /></p>
            <p><select id="enarea" name="enarea">
                <option value="">所在地</option>
            </select></p>
            <p><select id="category" name="category">
                <option value="">高校类型</option>
            </select></p>
            <p><select id="style" name="style" style="width:110px;">
                <option value="">高校性质</option>
            </select></p>
            <p><input id="schselect" type="image" src="http://college.gaokao.com/style/college/images/sous.png" width="64" height="20" /></p>
        </h3>
    	<h3>
            <span><p>高校信息</p></span>
        </h3>
        <div class="scores_List">
        	<div class="letter_Box">
            	<strong class="ft14 c_blue rightMargin10">按学校名称</strong>
                拼音字母排序：
                <span class="letter_Con">
                    <a class="letter_Active" href="http://college.gaokao.com/schlist/">全部</a>
                                            <a href="http://college.gaokao.com/schlist/lA/">A</a>
                                            <a href="http://college.gaokao.com/schlist/lB/">B</a>
                                            <a href="http://college.gaokao.com/schlist/lC/">C</a>
                                            <a href="http://college.gaokao.com/schlist/lD/">D</a>
                                            <a href="http://college.gaokao.com/schlist/lE/">E</a>
                                            <a href="http://college.gaokao.com/schlist/lF/">F</a>
                                            <a href="http://college.gaokao.com/schlist/lG/">G</a>
                                            <a href="http://college.gaokao.com/schlist/lH/">H</a>
                                            <a href="http://college.gaokao.com/schlist/lJ/">J</a>
                                            <a href="http://college.gaokao.com/schlist/lK/">K</a>
                                            <a href="http://college.gaokao.com/schlist/lL/">L</a>
                                            <a href="http://college.gaokao.com/schlist/lM/">M</a>
                                            <a href="http://college.gaokao.com/schlist/lN/">N</a>
                                            <a href="http://college.gaokao.com/schlist/lP/">P</a>
                                            <a href="http://college.gaokao.com/schlist/lQ/">Q</a>
                                            <a href="http://college.gaokao.com/schlist/lR/">R</a>
                                            <a href="http://college.gaokao.com/schlist/lS/">S</a>
                                            <a href="http://college.gaokao.com/schlist/lT/">T</a>
                                            <a href="http://college.gaokao.com/schlist/lW/">W</a>
                                            <a href="http://college.gaokao.com/schlist/lX/">X</a>
                                            <a href="http://college.gaokao.com/schlist/lY/">Y</a>
                                            <a href="http://college.gaokao.com/schlist/lZ/">Z</a>
                                            
                                    </span>
            </div>
            <h4 class="letter_Tlt letter_Active">全部</h4>

                                    <dl>
                    <dt>
                        <a href="http://www.pku.edu.cn/" target="_blank"><img src="http://college.gaokao.com/style/college/images/icon/1.png" onerror="this.src='http://college.gaokao.com/style/college/images/icon_default.png'" width="63" height="63" alt="北京大学" /></a><strong title="北京大学" class="blue"><a href="http://college.gaokao.com/school/1/" target="_blank">北京大学</a></strong>                    </dt>
                    <dd>
                        <div class="right">
                            <p><a class="org" href="javascript:void(0);" onclick="javascript:setpk('1','北京大学');">+高校对比</a></p>
                            <p class="topMargin20"><a class="btn_gary" href="http://www.pku.edu.cn/" target="_blank">进入主页</a></p>
                        </div>
                        <ul>
                            <li>高校所在地：北京</li>
                            <li>院校特色：<span class="c211 rm5">211</span><span class="c985">985</span></li>
                            <li>高校类型：综合</li>
                            <li>高校隶属：教育部</li>
                            <li>高校性质：本科</li>
                            <li>学校网址：http://www.pku.edu.cn</li>
                        </ul>
                    </dd>
                </dl>
                            <dl>
                    <dt>
                        <a href="http://www.ruc.edu.cn" target="_blank"><img src="http://college.gaokao.com/style/college/images/icon/2.png" onerror="this.src='http://college.gaokao.com/style/college/images/icon_default.png'" width="63" height="63" alt="中国人民大学" /></a><strong title="中国人民大学" class="blue"><a href="http://college.gaokao.com/school/2/" target="_blank">中国人民大学</a></strong>                    </dt>
                    <dd>
                        <div class="right">
                            <p><a class="org" href="javascript:void(0);" onclick="javascript:setpk('2','中国人民大学');">+高校对比</a></p>
                            <p class="topMargin20"><a class="btn_gary" href="http://www.ruc.edu.cn/" target="_blank">进入主页</a></p>
                        </div>
                        <ul>
                            <li>高校所在地：北京</li>
                            <li>院校特色：<span class="c211 rm5">211</span><span class="c985">985</span></li>
                            <li>高校类型：综合</li>
                            <li>高校隶属：教育部</li>
                            <li>高校性质：本科</li>
                            <li>学校网址：http://www.ruc.edu.cn</li>
                        </ul>
                    </dd>
                </dl>
                            <dl>
                    <dt>
                        <a href="http://www.tsinghua.edu.cn" target="_blank"><img src="http://college.gaokao.com/style/college/images/icon/3.png" onerror="this.src='http://college.gaokao.com/style/college/images/icon_default.png'" width="63" height="63" alt="清华大学" /></a><strong title="清华大学" class="blue"><a href="http://college.gaokao.com/school/3/" target="_blank">清华大学</a></strong>                    </dt>
                    <dd>
                        <div class="right">
                            <p><a class="org" href="javascript:void(0);" onclick="javascript:setpk('3','清华大学');">+高校对比</a></p>
                            <p class="topMargin20"><a class="btn_gary" href="http://www.tsinghua.edu.cn" target="_blank">进入主页</a></p>
                        </div>
                        <ul>
                            <li>高校所在地：北京</li>
                            <li>院校特色：<span class="c211 rm5">211</span><span class="c985">985</span></li>
                            <li>高校类型：工科</li>
                            <li>高校隶属：教育部</li>
                            <li>高校性质：本科</li>
                            <li>学校网址：http://www.tsinghua.edu.cn</li>
                        </ul>
                    </dd>
                </dl>
                            <dl>
                    <dt>
                        <a href="http://www.buaa.edu.cn" target="_blank"><img src="http://college.gaokao.com/style/college/images/icon/4.png" onerror="this.src='http://college.gaokao.com/style/college/images/icon_default.png'" width="63" height="63" alt="北京航空航天大学" /></a><strong title="北京航空航天大学" class="blue"><a href="http://college.gaokao.com/school/4/" target="_blank">北京航空航天</a></strong>                    </dt>
                    <dd>
                        <div class="right">
                            <p><a class="org" href="javascript:void(0);" onclick="javascript:setpk('4','北京航空航天大学');">+高校对比</a></p>
                            <p class="topMargin20"><a class="btn_gary" href="http://www.buaa.edu.cn/" target="_blank">进入主页</a></p>
                        </div>
                        <ul>
                            <li>高校所在地：北京</li>
                            <li>院校特色：<span class="c211 rm5">211</span><span class="c985">985</span></li>
                            <li>高校类型：工科</li>
                            <li>高校隶属：工业与信息化部</li>
                            <li>高校性质：本科</li>
                            <li>学校网址：http://www.buaa.edu.cn</li>
                        </ul>
                    </dd>
                </dl>
                            <dl>
                    <dt>
                        <a href="http://www.bit.edu.cn" target="_blank"><img src="http://college.gaokao.com/style/college/images/icon/5.png" onerror="this.src='http://college.gaokao.com/style/college/images/icon_default.png'" width="63" height="63" alt="北京理工大学" /></a><strong title="北京理工大学" class="blue"><a href="http://college.gaokao.com/school/5/" target="_blank">北京理工大学</a></strong>                    </dt>
                    <dd>
                        <div class="right">
                            <p><a class="org" href="javascript:void(0);" onclick="javascript:setpk('5','北京理工大学');">+高校对比</a></p>
                            <p class="topMargin20"><a class="btn_gary" href="http://www.bit.edu.cn/" target="_blank">进入主页</a></p>
                        </div>
                        <ul>
                            <li>高校所在地：北京</li>
                            <li>院校特色：<span class="c211 rm5">211</span><span class="c985">985</span></li>
                            <li>高校类型：工科</li>
                            <li>高校隶属：工业与信息化部</li>
                            <li>高校性质：本科</li>
                            <li>学校网址：http://www.bit.edu.cn</li>
                        </ul>
                    </dd>
                </dl>
                            <dl>
                    <dt>
                        <a href="http://www.cau.edu.cn/" target="_blank"><img src="http://www.cau.edu.cn/" onerror="this.src='http://college.gaokao.com/style/college/images/icon_default.png'" width="63" height="63" alt="中国农业大学" /></a><strong title="中国农业大学" class="blue"><a href="http://college.gaokao.com/school/6/" target="_blank">中国农业大学</a></strong>                    </dt>
                    <dd>
                        <div class="right">
                            <p><a class="org" href="javascript:void(0);" onclick="javascript:setpk('6','中国农业大学');">+高校对比</a></p>
                            <p class="topMargin20"><a class="btn_gary" href="http://www.cau.edu.cn/" target="_blank">进入主页</a></p>
                        </div>
                        <ul>
                            <li>高校所在地：北京</li>
                            <li>院校特色：<span class="c211 rm5">211</span><span class="c985">985</span></li>
                            <li>高校类型：农业</li>
                            <li>高校隶属：教育部</li>
                            <li>高校性质：本科</li>
                            <li>学校网址：http://www.cau.edu.cn</li>
                        </ul>
                    </dd>
                </dl>
                            <dl>
                    <dt>
                        <a href="http://www.bnu.edu.cn" target="_blank"><img src="http://college.gaokao.com/style/college/images/icon/7.png" onerror="this.src='http://college.gaokao.com/style/college/images/icon_default.png'" width="63" height="63" alt="北京师范大学" /></a><strong title="北京师范大学" class="blue"><a href="http://college.gaokao.com/school/7/" target="_blank">北京师范大学</a></strong>                    </dt>
                    <dd>
                        <div class="right">
                            <p><a class="org" href="javascript:void(0);" onclick="javascript:setpk('7','北京师范大学');">+高校对比</a></p>
                            <p class="topMargin20"><a class="btn_gary" href="http://www.bnu.edu.cn" target="_blank">进入主页</a></p>
                        </div>
                        <ul>
                            <li>高校所在地：北京</li>
                            <li>院校特色：<span class="c211 rm5">211</span><span class="c985">985</span></li>
                            <li>高校类型：师范</li>
                            <li>高校隶属：教育部</li>
                            <li>高校性质：本科</li>
                            <li>学校网址：http://www.bnu.edu.cn</li>
                        </ul>
                    </dd>
                </dl>
                            <dl>
                    <dt>
                        <a href="http://www.muc.edu.cn" target="_blank"><img src="http://college.gaokao.com/style/college/images/icon/8.png" onerror="this.src='http://college.gaokao.com/style/college/images/icon_default.png'" width="63" height="63" alt="中央民族大学" /></a><strong title="中央民族大学" class="blue"><a href="http://college.gaokao.com/school/8/" target="_blank">中央民族大学</a></strong>                    </dt>
                    <dd>
                        <div class="right">
                            <p><a class="org" href="javascript:void(0);" onclick="javascript:setpk('8','中央民族大学');">+高校对比</a></p>
                            <p class="topMargin20"><a class="btn_gary" href="http://www.muc.edu.cn" target="_blank">进入主页</a></p>
                        </div>
                        <ul>
                            <li>高校所在地：北京</li>
                            <li>院校特色：<span class="c211 rm5">211</span><span class="c985">985</span></li>
                            <li>高校类型：民族</li>
                            <li>高校隶属：国家民族事务委员会</li>
                            <li>高校性质：本科</li>
                            <li>学校网址：http://www.muc.edu.cn</li>
                        </ul>
                    </dd>
                </dl>
                            <dl>
                    <dt>
                        <a href="http://www.nankai.edu.cn" target="_blank"><img src="http://college.gaokao.com/style/college/images/icon/9.png" onerror="this.src='http://college.gaokao.com/style/college/images/icon_default.png'" width="63" height="63" alt="南开大学" /></a><strong title="南开大学" class="blue"><a href="http://college.gaokao.com/school/9/" target="_blank">南开大学</a></strong>                    </dt>
                    <dd>
                        <div class="right">
                            <p><a class="org" href="javascript:void(0);" onclick="javascript:setpk('9','南开大学');">+高校对比</a></p>
                            <p class="topMargin20"><a class="btn_gary" href="http://www.nankai.edu.cn" target="_blank">进入主页</a></p>
                        </div>
                        <ul>
                            <li>高校所在地：天津</li>
                            <li>院校特色：<span class="c211 rm5">211</span><span class="c985">985</span></li>
                            <li>高校类型：综合</li>
                            <li>高校隶属：教育部</li>
                            <li>高校性质：本科</li>
                            <li>学校网址：http://www.nankai.edu.cn</li>
                        </ul>
                    </dd>
                </dl>
                            <dl>
                    <dt>
                        <a href="http://www.tju.edu.cn/" target="_blank"><img src="http://college.gaokao.com/style/college/images/icon/10.png" onerror="this.src='http://college.gaokao.com/style/college/images/icon_default.png'" width="63" height="63" alt="天津大学" /></a><strong title="天津大学" class="blue"><a href="http://college.gaokao.com/school/10/" target="_blank">天津大学</a></strong>                    </dt>
                    <dd>
                        <div class="right">
                            <p><a class="org" href="javascript:void(0);" onclick="javascript:setpk('10','天津大学');">+高校对比</a></p>
                            <p class="topMargin20"><a class="btn_gary" href="http://www.tju.edu.cn/" target="_blank">进入主页</a></p>
                        </div>
                        <ul>
                            <li>高校所在地：天津</li>
                            <li>院校特色：<span class="c211 rm5">211</span><span class="c985">985</span></li>
                            <li>高校类型：工科</li>
                            <li>高校隶属：教育部</li>
                            <li>高校性质：本科</li>
                            <li>学校网址：http://www.tju.edu.cn/</li>
                        </ul>
                    </dd>
                </dl>
                            <dl>
                    <dt>
                        <a href="https://www.dlut.edu.cn/" target="_blank"><img src="http://college.gaokao.com/style/college/images/icon/11.png" onerror="this.src='http://college.gaokao.com/style/college/images/icon_default.png'" width="63" height="63" alt="大连理工大学" /></a><strong title="大连理工大学" class="blue"><a href="http://college.gaokao.com/school/11/" target="_blank">大连理工大学</a></strong>                    </dt>
                    <dd>
                        <div class="right">
                            <p><a class="org" href="javascript:void(0);" onclick="javascript:setpk('11','大连理工大学');">+高校对比</a></p>
                            <p class="topMargin20"><a class="btn_gary" href="https://www.dlut.edu.cn/" target="_blank">进入主页</a></p>
                        </div>
                        <ul>
                            <li>高校所在地：辽宁</li>
                            <li>院校特色：<span class="c211 rm5">211</span><span class="c985">985</span></li>
                            <li>高校类型：工科</li>
                            <li>高校隶属：教育部</li>
                            <li>高校性质：本科</li>
                            <li>学校网址：https://www.dlut.edu.cn/</li>
                        </ul>
                    </dd>
                </dl>
                            <dl>
                    <dt>
                        <a href="http://www.neu.edu.cn" target="_blank"><img src="http://college.gaokao.com/style/college/images/icon/12.png" onerror="this.src='http://college.gaokao.com/style/college/images/icon_default.png'" width="63" height="63" alt="东北大学" /></a><strong title="东北大学" class="blue"><a href="http://college.gaokao.com/school/12/" target="_blank">东北大学</a></strong>                    </dt>
                    <dd>
                        <div class="right">
                            <p><a class="org" href="javascript:void(0);" onclick="javascript:setpk('12','东北大学');">+高校对比</a></p>
                            <p class="topMargin20"><a class="btn_gary" href="http://www.neu.edu.cn" target="_blank">进入主页</a></p>
                        </div>
                        <ul>
                            <li>高校所在地：辽宁</li>
                            <li>院校特色：<span class="c211 rm5">211</span><span class="c985">985</span></li>
                            <li>高校类型：工科</li>
                            <li>高校隶属：教育部</li>
                            <li>高校性质：本科</li>
                            <li>学校网址：http://www.neu.edu.cn</li>
                        </ul>
                    </dd>
                </dl>
                            <dl>
                    <dt>
                        <a href="http://www.jlu.edu.cn" target="_blank"><img src="http://college.gaokao.com/style/college/images/icon/13.png" onerror="this.src='http://college.gaokao.com/style/college/images/icon_default.png'" width="63" height="63" alt="吉林大学" /></a><strong title="吉林大学" class="blue"><a href="http://college.gaokao.com/school/13/" target="_blank">吉林大学</a></strong>                    </dt>
                    <dd>
                        <div class="right">
                            <p><a class="org" href="javascript:void(0);" onclick="javascript:setpk('13','吉林大学');">+高校对比</a></p>
                            <p class="topMargin20"><a class="btn_gary" href="http://www.jlu.edu.cn" target="_blank">进入主页</a></p>
                        </div>
                        <ul>
                            <li>高校所在地：吉林</li>
                            <li>院校特色：<span class="c211 rm5">211</span><span class="c985">985</span></li>
                            <li>高校类型：综合</li>
                            <li>高校隶属：教育部</li>
                            <li>高校性质：本科</li>
                            <li>学校网址：http://www.jlu.edu.cn</li>
                        </ul>
                    </dd>
                </dl>
                            <dl>
                    <dt>
                        <a href="http://www.hit.edu.cn/" target="_blank"><img src="http://college.gaokao.com/style/college/images/icon/14.png" onerror="this.src='http://college.gaokao.com/style/college/images/icon_default.png'" width="63" height="63" alt="哈尔滨工业大学" /></a><strong title="哈尔滨工业大学" class="blue"><a href="http://college.gaokao.com/school/14/" target="_blank">哈尔滨工业大</a></strong>                    </dt>
                    <dd>
                        <div class="right">
                            <p><a class="org" href="javascript:void(0);" onclick="javascript:setpk('14','哈尔滨工业大学');">+高校对比</a></p>
                            <p class="topMargin20"><a class="btn_gary" href="http://www.hit.edu.cn/" target="_blank">进入主页</a></p>
                        </div>
                        <ul>
                            <li>高校所在地：黑龙江</li>
                            <li>院校特色：<span class="c211 rm5">211</span><span class="c985">985</span></li>
                            <li>高校类型：工科</li>
                            <li>高校隶属：工业与信息化部</li>
                            <li>高校性质：本科</li>
                            <li>学校网址：http://www.hit.edu.cn/</li>
                        </ul>
                    </dd>
                </dl>
                            <dl>
                    <dt>
                        <a href="http://www.fudan.edu.cn/" target="_blank"><img src="http://college.gaokao.com/style/college/images/icon/15.png" onerror="this.src='http://college.gaokao.com/style/college/images/icon_default.png'" width="63" height="63" alt="复旦大学" /></a><strong title="复旦大学" class="blue"><a href="http://college.gaokao.com/school/15/" target="_blank">复旦大学</a></strong>                    </dt>
                    <dd>
                        <div class="right">
                            <p><a class="org" href="javascript:void(0);" onclick="javascript:setpk('15','复旦大学');">+高校对比</a></p>
                            <p class="topMargin20"><a class="btn_gary" href="http://www.fudan.edu.cn/" target="_blank">进入主页</a></p>
                        </div>
                        <ul>
                            <li>高校所在地：上海</li>
                            <li>院校特色：<span class="c211 rm5">211</span><span class="c985">985</span></li>
                            <li>高校类型：综合</li>
                            <li>高校隶属：教育部</li>
                            <li>高校性质：本科</li>
                            <li>学校网址：http://www.fudan.edu.cn/</li>
                        </ul>
                    </dd>
                </dl>
                            <dl>
                    <dt>
                        <a href="http://www.tongji.edu.cn" target="_blank"><img src="http://college.gaokao.com/style/college/images/icon/16.png" onerror="this.src='http://college.gaokao.com/style/college/images/icon_default.png'" width="63" height="63" alt="同济大学" /></a><strong title="同济大学" class="blue"><a href="http://college.gaokao.com/school/16/" target="_blank">同济大学</a></strong>                    </dt>
                    <dd>
                        <div class="right">
                            <p><a class="org" href="javascript:void(0);" onclick="javascript:setpk('16','同济大学');">+高校对比</a></p>
                            <p class="topMargin20"><a class="btn_gary" href="http://www.tongji.edu.cn" target="_blank">进入主页</a></p>
                        </div>
                        <ul>
                            <li>高校所在地：上海</li>
                            <li>院校特色：<span class="c211 rm5">211</span><span class="c985">985</span></li>
                            <li>高校类型：工科</li>
                            <li>高校隶属：教育部</li>
                            <li>高校性质：本科</li>
                            <li>学校网址：http://www.tongji.edu.cn</li>
                        </ul>
                    </dd>
                </dl>
                            <dl>
                    <dt>
                        <a href="http://www.sjtu.edu.cn" target="_blank"><img src="http://college.gaokao.com/style/college/images/icon/17.png" onerror="this.src='http://college.gaokao.com/style/college/images/icon_default.png'" width="63" height="63" alt="上海交通大学" /></a><strong title="上海交通大学" class="blue"><a href="http://college.gaokao.com/school/17/" target="_blank">上海交通大学</a></strong>                    </dt>
                    <dd>
                        <div class="right">
                            <p><a class="org" href="javascript:void(0);" onclick="javascript:setpk('17','上海交通大学');">+高校对比</a></p>
                            <p class="topMargin20"><a class="btn_gary" href="http://www.sjtu.edu.cn" target="_blank">进入主页</a></p>
                        </div>
                        <ul>
                            <li>高校所在地：上海</li>
                            <li>院校特色：<span class="c211 rm5">211</span><span class="c985">985</span></li>
                            <li>高校类型：综合</li>
                            <li>高校隶属：教育部</li>
                            <li>高校性质：本科</li>
                            <li>学校网址：http://www.sjtu.edu.cn</li>
                        </ul>
                    </dd>
                </dl>
                            <dl>
                    <dt>
                        <a href="http://www.ecnu.edu.cn" target="_blank"><img src="http://college.gaokao.com/style/college/images/icon/18.png" onerror="this.src='http://college.gaokao.com/style/college/images/icon_default.png'" width="63" height="63" alt="华东师范大学" /></a><strong title="华东师范大学" class="blue"><a href="http://college.gaokao.com/school/18/" target="_blank">华东师范大学</a></strong>                    </dt>
                    <dd>
                        <div class="right">
                            <p><a class="org" href="javascript:void(0);" onclick="javascript:setpk('18','华东师范大学');">+高校对比</a></p>
                            <p class="topMargin20"><a class="btn_gary" href="http://www.ecnu.edu.cn" target="_blank">进入主页</a></p>
                        </div>
                        <ul>
                            <li>高校所在地：上海</li>
                            <li>院校特色：<span class="c211 rm5">211</span><span class="c985">985</span></li>
                            <li>高校类型：师范</li>
                            <li>高校隶属：教育部</li>
                            <li>高校性质：本科</li>
                            <li>学校网址：http://www.ecnu.edu.cn</li>
                        </ul>
                    </dd>
                </dl>
                            <dl>
                    <dt>
                        <a href="http://www.nju.edu.cn" target="_blank"><img src="http://college.gaokao.com/style/college/images/icon/19.png" onerror="this.src='http://college.gaokao.com/style/college/images/icon_default.png'" width="63" height="63" alt="南京大学" /></a><strong title="南京大学" class="blue"><a href="http://college.gaokao.com/school/19/" target="_blank">南京大学</a></strong>                    </dt>
                    <dd>
                        <div class="right">
                            <p><a class="org" href="javascript:void(0);" onclick="javascript:setpk('19','南京大学');">+高校对比</a></p>
                            <p class="topMargin20"><a class="btn_gary" href="http://www.nju.edu.cn" target="_blank">进入主页</a></p>
                        </div>
                        <ul>
                            <li>高校所在地：江苏</li>
                            <li>院校特色：<span class="c211 rm5">211</span><span class="c985">985</span></li>
                            <li>高校类型：综合</li>
                            <li>高校隶属：教育部</li>
                            <li>高校性质：本科</li>
                            <li>学校网址：http://www.nju.edu.cn</li>
                        </ul>
                    </dd>
                </dl>
                            <dl>
                    <dt>
                        <a href="http://www.seu.edu.cn" target="_blank"><img src="http://college.gaokao.com/style/college/images/icon/20.png" onerror="this.src='http://college.gaokao.com/style/college/images/icon_default.png'" width="63" height="63" alt="东南大学" /></a><strong title="东南大学" class="blue"><a href="http://college.gaokao.com/school/20/" target="_blank">东南大学</a></strong>                    </dt>
                    <dd>
                        <div class="right">
                            <p><a class="org" href="javascript:void(0);" onclick="javascript:setpk('20','东南大学');">+高校对比</a></p>
                            <p class="topMargin20"><a class="btn_gary" href="http://www.seu.edu.cn" target="_blank">进入主页</a></p>
                        </div>
                        <ul>
                            <li>高校所在地：江苏</li>
                            <li>院校特色：<span class="c211 rm5">211</span><span class="c985">985</span></li>
                            <li>高校类型：综合</li>
                            <li>高校隶属：教育部</li>
                            <li>高校性质：本科</li>
                            <li>学校网址：http://www.seu.edu.cn</li>
                        </ul>
                    </dd>
                </dl>
                            <dl>
                    <dt>
                        <a href="http://www.cumt.edu.cn/" target="_blank"><img src="http://college.gaokao.com/style/college/images/icon/21.png" onerror="this.src='http://college.gaokao.com/style/college/images/icon_default.png'" width="63" height="63" alt="中国矿业大学(徐州)" /></a><strong title="中国矿业大学(徐州)" class="blue"><a href="http://college.gaokao.com/school/21/" target="_blank">中国矿业大学</a></strong>                    </dt>
                    <dd>
                        <div class="right">
                            <p><a class="org" href="javascript:void(0);" onclick="javascript:setpk('21','中国矿业大学(徐州)');">+高校对比</a></p>
                            <p class="topMargin20"><a class="btn_gary" href="http://www.cumt.edu.cn/" target="_blank">进入主页</a></p>
                        </div>
                        <ul>
                            <li>高校所在地：江苏</li>
                            <li>院校特色：<span class="c211 rm5">211</span></li>
                            <li>高校类型：工科</li>
                            <li>高校隶属：教育部</li>
                            <li>高校性质：本科</li>
                            <li>学校网址：http://www.cumt.edu.cn/</li>
                        </ul>
                    </dd>
                </dl>
                            <dl>
                    <dt>
                        <a href="http://www.zju.edu.cn" target="_blank"><img src="http://college.gaokao.com/style/college/images/icon/22.png" onerror="this.src='http://college.gaokao.com/style/college/images/icon_default.png'" width="63" height="63" alt="浙江大学" /></a><strong title="浙江大学" class="blue"><a href="http://college.gaokao.com/school/22/" target="_blank">浙江大学</a></strong>                    </dt>
                    <dd>
                        <div class="right">
                            <p><a class="org" href="javascript:void(0);" onclick="javascript:setpk('22','浙江大学');">+高校对比</a></p>
                            <p class="topMargin20"><a class="btn_gary" href="http://www.zju.edu.cn" target="_blank">进入主页</a></p>
                        </div>
                        <ul>
                            <li>高校所在地：浙江</li>
                            <li>院校特色：<span class="c211 rm5">211</span><span class="c985">985</span></li>
                            <li>高校类型：综合</li>
                            <li>高校隶属：教育部</li>
                            <li>高校性质：本科</li>
                            <li>学校网址：http://www.zju.edu.cn</li>
                        </ul>
                    </dd>
                </dl>
                            <dl>
                    <dt>
                        <a href="http://www.ustc.edu.cn" target="_blank"><img src="http://college.gaokao.com/style/college/images/icon/23.png" onerror="this.src='http://college.gaokao.com/style/college/images/icon_default.png'" width="63" height="63" alt="中国科学技术大学" /></a><strong title="中国科学技术大学" class="blue"><a href="http://college.gaokao.com/school/23/" target="_blank">中国科学技术</a></strong>                    </dt>
                    <dd>
                        <div class="right">
                            <p><a class="org" href="javascript:void(0);" onclick="javascript:setpk('23','中国科学技术大学');">+高校对比</a></p>
                            <p class="topMargin20"><a class="btn_gary" href="http://www.ustc.edu.cn" target="_blank">进入主页</a></p>
                        </div>
                        <ul>
                            <li>高校所在地：安徽</li>
                            <li>院校特色：<span class="c211 rm5">211</span><span class="c985">985</span></li>
                            <li>高校类型：工科</li>
                            <li>高校隶属：中国科学院</li>
                            <li>高校性质：本科</li>
                            <li>学校网址：http://www.ustc.edu.cn</li>
                        </ul>
                    </dd>
                </dl>
                            <dl>
                    <dt>
                        <a href="http://www.xmu.edu.cn" target="_blank"><img src="http://college.gaokao.com/style/college/images/icon/24.png" onerror="this.src='http://college.gaokao.com/style/college/images/icon_default.png'" width="63" height="63" alt="厦门大学" /></a><strong title="厦门大学" class="blue"><a href="http://college.gaokao.com/school/24/" target="_blank">厦门大学</a></strong>                    </dt>
                    <dd>
                        <div class="right">
                            <p><a class="org" href="javascript:void(0);" onclick="javascript:setpk('24','厦门大学');">+高校对比</a></p>
                            <p class="topMargin20"><a class="btn_gary" href="http://www.xmu.edu.cn" target="_blank">进入主页</a></p>
                        </div>
                        <ul>
                            <li>高校所在地：福建</li>
                            <li>院校特色：<span class="c211 rm5">211</span><span class="c985">985</span></li>
                            <li>高校类型：综合</li>
                            <li>高校隶属：教育部</li>
                            <li>高校性质：本科</li>
                            <li>学校网址：http://www.xmu.edu.cn</li>
                        </ul>
                    </dd>
                </dl>
                            <dl>
                    <dt>
                        <a href="http://www.bkzs.sdu.edu.cn" target="_blank"><img src="http://college.gaokao.com/style/college/images/icon/25.png" onerror="this.src='http://college.gaokao.com/style/college/images/icon_default.png'" width="63" height="63" alt="山东大学" /></a><strong title="山东大学" class="blue"><a href="http://college.gaokao.com/school/25/" target="_blank">山东大学</a></strong>                    </dt>
                    <dd>
                        <div class="right">
                            <p><a class="org" href="javascript:void(0);" onclick="javascript:setpk('25','山东大学');">+高校对比</a></p>
                            <p class="topMargin20"><a class="btn_gary" href="http://www.bkzs.sdu.edu.cn" target="_blank">进入主页</a></p>
                        </div>
                        <ul>
                            <li>高校所在地：山东</li>
                            <li>院校特色：<span class="c211 rm5">211</span><span class="c985">985</span></li>
                            <li>高校类型：综合</li>
                            <li>高校隶属：教育部</li>
                            <li>高校性质：本科</li>
                            <li>学校网址：http://www.bkzs.sdu.edu.cn</li>
                        </ul>
                    </dd>
                </dl>
                              </div>
        <div>
            <ul class="fany">
                <li><a href="school.jsp">首页</a></li>
                <li>上一页</li>
                <li><a href="school1.jsp">下一页 >></a></li>
                <li><a href="school3.jsp">末页</a></li>
                <li id="qx">1/107页 </li>
            </ul>
        </div>
    </div>
        <style>
.selecting mark{ background:none; border:1px solid #FFD0C8; line-height:20px; position:relative; display:inline-block; padding:0 30px 0 10px; margin-right:10px;}
.selecting mark i{ background:url('http://tiku.gaokao.com/style/images/sel_btn_close.gif') no-repeat; width:12px; height:12px; position:absolute; right:5px; top:4px; cursor:pointer;}       
        </style>
	<script>

    //搜索高校(下拉框)
    function schselect(area,category,style,name){
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

        var page = $("#pagenum").val();
        if(page!=''){
            page = '/p'+page;
        }

        var url = "http://college.gaokao.com/schlist"+area+category+style+name+page+"/";
        window.location.href=url;
    }

    //跳转
    function gotourl(){
        if($("#schname").val() == "请输入高校名称"){
            var schname = "";
        }else{
            var schname = $("#schname").val();
        }
        schselect($("#enarea").val(),$("#category").val(),$("#style").val(),schname);
    }

    $(document).ready(function(){

        //取得select框内数据
        $.getJSON("http://college.gaokao.com/json/area?id=&callback=?",function(data){ 
            $("#enarea").html(data.json);
        });
        $.getJSON("http://college.gaokao.com/json/category?id=&callback=?",function(data){ 
            $("#category").html(data.json);
        });
        $.getJSON("http://college.gaokao.com/json/style?id=&callback=?",function(data){ 
            $("#style").html(data.json);
        });

        //搜索高校
        $("#schselect").click(function(){
            _gaq.push(['_trackEvent', 'College', 'search', 'schsli']);
            gotourl();
        });

        //跳转到X页
        $("#pagego").click(function(){
            gotourl();
        });

        //回车事件 回车触发
        $('body').bind('keydown', function (e) {
            var key = e.which;
            if(key==13){
            }
        });

    });

	//通过字母自动定位到相应位置
    $(function(){
		var sTop = 0;
		var Letter = '';
		$('.letter_Con a').click(function(){
			Letter = $(this).html();
			$(this).addClass('letter_Active').siblings().removeClass('letter_Active');
			for(var i=0; i<$('.letter_Tlt').length; i++){
				if($('.letter_Tlt').eq(i).html() == Letter)
				{
					$('.letter_Tlt').eq(i).addClass('letter_Active').siblings().removeClass('letter_Active');
					sTop = $('.letter_Tlt').eq($(this).index()).offset().top;
					$('body,html').animate({ scrollTop:sTop },300);
				}
			}
		})
	})
    </script>
    

<div style="display:none;">
    <script type='text/javascript'>var EDUU_GKEY="高考网/院校库/高校搜索/主页";</script>
    <script type="text/javascript" src="<%=basePath %>js/ggc.js?gx=2011_4"></script>
    <script src=" http://s50.cnzz.com/stat.php?id=1997329&amp;web_id=1997329" type="text/javascript"></script>
</div>
<div class="compare_Float">
	<h3>点击比较</h3>
    <ul>
    	<li></li>
        <li></li>
    </ul>
</div>
<script type="text/javascript">
<!--

    //初始化pk
    var left = getCookie('pk_left_id');
    left = left!=NaN && left!=undefined ? left : 0;
    var right = getCookie('pk_right_id');
    right = right!=NaN && right!=undefined ? right : 0;
    $('.compare_Float li:first').html(getCookie('pk_left_name'));
    $('.compare_Float li:last').html(getCookie('pk_right_name'));

    $('.compare_Float h3').click(function(){

        left = parseInt(left);
        right = parseInt(right);

        if(left==0 || right==0){
            alert('选择两所学校才能对比');
            return false;
        }

        var url = 'http://college.gaokao.com/schoolvs/'+left+'/pk/'+right+'/';

        left = 0;
        setcookie('pk_left_id', 0, 3600000,'/','.gaokao.com');
        setcookie('pk_left_name', '', 3600000,'/','.gaokao.com');
        $('.compare_Float li:first').html('');

        right = 0;
        setcookie('pk_right_id', 0, 3600000,'/','.gaokao.com');
        setcookie('pk_right_name', '', 3600000,'/','.gaokao.com');
        $('.compare_Float li:last').html('');

        window.open(url);
    });

    //删除该学校
    $('.compare_Float li:first').click(function(){
        left = 0;
        setcookie('pk_left_id', 0, 3600000,'/','.gaokao.com');
        setcookie('pk_left_name', '', 3600000,'/','.gaokao.com');
        $('.compare_Float li:first').html('');
    });
    $('.compare_Float li:last').click(function(){
        right = 0;
        setcookie('pk_right_id', 0, 3600000,'/','.gaokao.com');
        setcookie('pk_right_name', '', 3600000,'/','.gaokao.com');
        $('.compare_Float li:last').html('');
    });

    //加入PK
    function setpk(_id,_name){

        //处理name的长度
        var _len = _name.length;
        if(_len > 10){
            _name = _name.substring(0,9) + '…';
        }

        left = parseInt(left);
        right = parseInt(right);

        if(left>0 && right>0){
            alert('对比学校已满 先删除一所学校再进行对比');
            return false;
        }

        if(left==0){
            left = _id;
            setcookie('pk_left_id', _id, 3600000,'/','.gaokao.com');
            setcookie('pk_left_name', _name, 3600000,'/','.gaokao.com');
            $('.compare_Float li:first').html(_name);
        }else{
            right = _id;
            setcookie('pk_right_id', _id, 3600000,'/','.gaokao.com');
            setcookie('pk_right_name', _name, 3600000,'/','.gaokao.com');
            $('.compare_Float li:last').html(_name);
        }

    }

    function setCookie(cookieName, cookieValue, seconds, path, domain, secure) {
        var expires = new Date();
        expires.setTime(expires.getTime() + seconds);
        document.cookie = escape(cookieName) + '=' + escape(cookieValue)
            + (expires ? '; expires=' + expires.toGMTString() : '')
            + (path ? '; path=' + path : '/')
            + (domain ? '; domain=' + domain : '')
            + (secure ? '; secure' : '');
    }
    function setcookie(cookieName, cookieValue, seconds, path, domain, secure) {
        var expires = new Date();
        expires.setTime(expires.getTime() + seconds);
        document.cookie = escape(cookieName) + '=' + escape(cookieValue)
            + (expires ? '; expires=' + expires.toGMTString() : '')
            + (path ? '; path=' + path : '/')
            + (domain ? '; domain=' + domain : '')
            + (secure ? '; secure' : '');
    }
    function getCookie(name) {
        var start = document.cookie.indexOf(name);
        var end = document.cookie.indexOf(";",start);
        return start==-1 ? null : unescape(document.cookie.substring(start+name.length+1,(end>start ? end : document.cookie.length)));
    }
//-->
</script>
<div class="hr_10"></div>
<!--新底 开始 20140225-->
<div class="footer2013">
	<div class="wrapper">
    	 <div class="divcss">
    	<a href="<%=basePath %>school/list1">院校库</a>&emsp;&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath %>major.jsp">专业库</a>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath %>score1.jsp">院校推荐</a>&emsp;&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath %>school.jsp">专业对比</a>&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath %>">招生计划</a><br>
		<a href="<%=basePath %>">报考流程</a>&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath %>">历年分数线</a>&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath %>">高考月历表</a>&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath %>notice.jsp">高考须知</a>&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath %>significance.jsp">高校选择</a><br>
		<a href="<%=basePath %>">专业选择</a>&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath %>">报考误区</a>&emsp;&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath %>">新闻资讯</a>&emsp;&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath %>">最新热点</a>&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath %>">高招动态</a><br>
		<a href="<%=basePath %>introduce.jsp">系统介绍</a>&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath %>">购卡详情</a>&emsp;&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath %>">使用指南</a>&emsp;&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath %>">成功案例</a>&emsp;&emsp;&emsp;&emsp;<a href="<%=basePath %>">常见问题</a>
    </div>
    
    <div class="divcss1">
    	<a href="">关于我们&nbsp;&nbsp;</a> | <a href="">&nbsp;&nbsp;帮助中心&nbsp;&nbsp;</a> | <a href="">&nbsp;&nbsp;版权声明&nbsp;&nbsp;</a> | <a href="">&nbsp;&nbsp;合作伙伴</a>
    </div>
    

    </div>
</div>

<!-- 底部浮动层 -->
<!--
<div class="f_foot_fixed" style="display:none;">
	<div class="wrapper f_foot_box">
    	<a class="f_close f_foot_bg" href="javascript:void(0);"></a>
        <dl>
        	<dt class="left f_foot_bg"></dt>
            <dd class="left"><span>下载高考院校库手机客户端，助你随时随地掌握高校信息！</span><a class="f_foot_bg" href="http://www.gaokao.com/mobile/" target="_blank"></a></dd>
        </dl>
    </div>
</div>
-->

<!-- 底部浮层广告 start-->

<!--<div class="fixed_popbox" id="J_fixed_popbox">
    <div class="popcon clearfix">
        <div class="popcon_text">
            <table>
                <tbody>
                    <tr>
                        <td>高考期间全程陪伴-备考、真题、估分、查院校、选专业、报志愿，尽在高考帮。扫我→</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="qr_code">
            <table>
                <tbody>
                    <tr>
                        <td><img src="http://gkb-cms.oss-cn-beijing.aliyuncs.com/attachs/img/2017/04/27/153729_59019fb93d449.png" width="70" height="70" /></td>
                        <td class="">
                            <p class="ios"><a href="https://itunes.apple.com/cn/app/gao-kao-bang-bang-ni-shi-xian/id920371894" target="_blank">iOS下载</a></p>
                            <p class="android"><a href="http://gkimg.oss-cn-beijing.aliyuncs.com/gaokaobang/222/gaokao_gkw.apk" target="_blank">Android下载</a></p>
                        </td>
                        <td class="qr_txt">打开微信扫一扫<br>随时随地聊高考
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <a href="javascript:void(0)" class="popbox_close"></a>
    </div>
</div>-->

<style type="text/css">
	.fixed_popbox{display:none;position:fixed;left:0;bottom:0;width:100%;height:90px;background:rgba(67,166,189,0.9)}.fixed_popbox .popcon{width:1000px;height:100%;margin:0 auto;position:relative}.fixed_popbox .popcon_text{float:left;height:100%;width:630px;color:#FFF;font-size:16px}.fixed_popbox .popcon_text table{height:100%}.fixed_popbox .popcon_text a{color:#FFF}.fixed_popbox .qr_code{height:70px;padding-left:14px;border-left:1px dotted #FFF;float:right;margin-top:10px;margin-right:20px}.fixed_popbox .qr_code a{display:block;width:100px;height:26px;line-height:26px;color:#FFF;font-size:14px;text-align:center;border:1px solid #FFF;-webkit-border-radius:3px;-moz-border-radius:3px;border-radius:3px}.fixed_popbox .qr_code .ios{padding-bottom:10px}.fixed_popbox .qr_code p{padding:0 10px}.fixed_popbox .qr_code .qr_txt{color:#FFF}.fixed_popbox .popbox_close{position:absolute;right:0;top:5px;width:12px;height:12px;background:url('http://img.eduuu.com/bbs/images/bbsfc/close.gif') no-repeat center center;overflow:hidden}
</style>
<script type="text/javascript">
	$(function(){
	if($('#J_fixed_popbox')[0]){
		var _box = $('#J_fixed_popbox');

		$(window).scroll(function(){
			if ($(this).scrollTop() > 300) {
				_box.fadeIn(800);
			} else {
				_box.fadeOut(800);
			}
		});
		$(".popbox_close",_box).click(function(){
			_box.remove();
			$('.footer').css({
				'padding' : 0
			})
		});
	}
});
</script>



<!-- 对联广告 end-->
<div style="position: fixed;top: 105px;left: 5px;_position: absolute;_bottom: auto;_margin-top: 105px;z-index: 999;_top: expression(eval(document.documentElement.scrollTop));">
<script type="text/javascript">
/*120*270 高考网左侧对联*/
var cpro_id = "u2999941";
</script>
<script type="text/javascript" src="http://cpro.baidustatic.com/cpro/ui/c.js"></script>
</div>
<div style="position: fixed;top: 105px;right: 5px;_position: absolute;_bottom: auto;_margin-top: 105px;z-index: 999;_top: expression(eval(document.documentElement.scrollTop));">
<script type="text/javascript">
/*120*270 高考网右侧对联*/
var cpro_id = "u2999944";
</script>
<script type="text/javascript" src="http://cpro.baidustatic.com/cpro/ui/c.js"></script>
</div>




<script>
//关闭底部浮动层、微信关注
//var f_flag = getCookie('f_flag') ? 1 : 0;
//$(".f_close").click(function(){
//	$(this).parent().parent().hide();
//    f_flag=1;
//    setCookie('f_flag', 1, 86400000);
//})
//$(window).scroll(function(){ 
//	var win_top=$(document).scrollTop();
//	if(win_top>1 && f_flag==0)
//	{
//		$(".f_foot_fixed").fadeIn();
//	}
//	else
//	{
//		$(".f_foot_fixed").fadeOut();
//	}
//})

//设置cookie
function setCookie(cookieName, cookieValue, seconds, path, domain, secure) {
	var expires = new Date();
	expires.setTime(expires.getTime() + seconds);
	document.cookie = escape(cookieName) + '=' + escape(cookieValue)
		+ (expires ? '; expires=' + expires.toGMTString() : '')
		+ (path ? '; path=' + path : '/')
		+ (domain ? '; domain=' + domain : '')
		+ (secure ? '; secure' : '');
}

//获取cookie
function getCookie(name) {
    var start = document.cookie.indexOf(name);
    var end = document.cookie.indexOf(";",start);
    return start==-1 ? null : unescape(document.cookie.substring(start+name.length+1,(end>start ? end : document.cookie.length)));
}
</script>
<script type="text/javascript" src="http://college.gaokao.com/style/college/js/index_call.js"></script>
<!--script type="text/javascript" src="http://img.eduuu.com/gaokao/2015/bannerDaili.js?1019"></script-->
</body>
</html>
