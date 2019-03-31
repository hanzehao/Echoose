<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
		String path = request.getContextPath();
		String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	%>
<head>
    <meta charset="UTF-8">
    <title>易选择网后台登录</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="Keywords" content="网站关键词">
    <meta name="Description" content="网站介绍">
    <link rel="stylesheet" href="<%=basePath %>css/base.css">
    <link rel="stylesheet" href="<%=basePath %>css/iconfont.css">
    <link rel="stylesheet" href="<%=basePath %>css/reg.css">
    <style type="text/css">
    	.css1{padding-left:150px;margin-bottom:10px;;padding-top:-40px;}
    	.form-data .lang-btn.off{
			    background-color: #0080ff;
			    color:#e5e5e5;
		}
		.r-forget cl{
			float:left;
		}
		.css2{
			float:left;
		}
		.css3{float:left;}
    </style>
</head>
<body>
<div id="ajax-hook"></div>
<div class="wrap">
    <div class="wpn">
        <div class="form-data pos">
            <div class="css1"><h1>&nbsp;&nbsp;管理员登录</h1></div>
         <form action="administorlogin" method="post">
            <div class="form1">
                <p class="p-input pos">
                    <label for="num">请输入手机号/邮箱/用户名</label>
                    <input type="text" name="aname" id="num">
                    <span class="tel-warn num-err hide"><em>账号或密码错误，请重新输入</em><i class="icon-warn"></i></span>
                </p>
                <p class="p-input pos">
                    <label for="num">请输入密码</label>
                    <input type="password" name="apassword" id="num">
                    <span class="tel-warn num-err hide"><em>账号或密码错误，请重新输入</em><i class="icon-warn"></i></span>
                </p>
                
                <p class="p-input pos code hide">
                    <span class="tel-warn img-err hide"><em>账号或密码错误，请重新输入</em><i class="icon-warn"></i></span>
                    <!-- <a href="<%=basePath %>javascript:;">换一换</a> -->
                </p>
            </div>
           
            <div class="r-forget cl">
                <a href="<%=basePath %>regist.jsp" class="z">账号注册</a>
                <a href="<%=basePath %>getPassword.jsp" class="y">忘记密码</a>
            </div>
            <div class="lang-btn off log-btn">
            	<div class="css3"><input type="submit" value="登录"></div>
            </div>
          </form>
            <p class="right">Powered by  2018</p>
        
        </div>
    </div>
</div>
<script src="js/jquery.js"></script>
<script src="js/agree.js"></script>
<script src="js/login.js"></script>
</body>
</html>