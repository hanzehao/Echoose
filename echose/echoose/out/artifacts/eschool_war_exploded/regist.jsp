<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
		String path = request.getContextPath();
		String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	%>
<head>
	<meta charset="utf-8">
	<title>注册</title>
	<link type="text/css" rel="stylesheet" href="<%=basePath%>css/registter.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/zcity.css">
	<link rel="stylesheet" href="<%=basePath%>css/base.css">
    <link rel="stylesheet" href="<%=basePath%>css/iconfont.css">
    <link rel="stylesheet" href="<%=basePath%>css/reg.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/zcity.css">
	
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="js/vali.min.js"></script>
	
	<style type="text/css">
		#register{height:700px;width:500px;}
		.vali input{width:100%;height:40px;}
		.css1{background-color:#0080ff;color:white;}
		.submit .btn{background-color:#0080ff;height:50px;width:100%;font-size:20px;color:white;font-weight:bold;float:left;}
		.css3 input{height:15px;}
		.css3{text-align:left;height:15px;margin-top:30px;}
		.css4{text-align:left;width:350px;height:70px;}
		h3{font-size:30px;font-weight:bold;}
		.css5{float:left;height:70px;}
		#telenum_span{padding-left:300px;line-height:20px;}
		#password_span{padding-left:300px;line-height:20px;}
		#rePassword_span{padding-left:320px;line-height:20px;}
		#Email_span{padding-left:200px;line-height:20px;}
	</style>
<script type="text/javascript">
	function send(){
		 String mobileNumber = "17716554698" //接收验证码的手机号码

	            String str = SendCode.sendMsg(mobileNumber);
	            if("success".equals(str)){
	                System.out.println("发送成功！");
	            }else{
	                System.out.println("发送失败！");
	            }
	       
	}
</script>
</head>
<body>
<div class="wrap">
    <div class="wpn">
	<div class="body">
		<div class="vli">
			<div class="wrapper move">
				<div id="register">
					<form class="form2" method="post" action="studentuser/saveuser" >
						<h3>易选择网注册</h3>
						
						<div class="vali">
							<input type="text" name="username"  placeholder="请输入用户名" id="username" class="input_class" onblur="checkUsername(this)" /><span id="username_span"></span>
						</div>
						
						<div class="vali">
								<input type="text"  name="tel" placeholder="请输入11位手机号" id="telenum" class="input_class" onblur="checkTelenum(this)" /><span id="telenum_span">请输入11位手机号</span>
							</div>
						
						<div class="vali">
							<input type="password"  name="password" placeholder="请填写长度至少为8个字符的密码" id="password" class="input_class" onblur="checkPassword(this)" /><span id="password_span">请输入8-12位密码</span>
						</div>
						<div class="vali">
							<input type="password" placeholder="请再次输入密码" id="rePassword" class="input_class" onblur="checkRePassword(this)" /><span id="rePassword_span">两次密码不一致</span>
						</div>
						<div class="vali">
							<input type="text"  name="email" placeholder="请输入邮箱" id="Email" class="input_class" onblur="checkEmail(this)" /><span id="Email_span">格式示例：xxxxxxxx@163.com</span>
						</div>
						<div class="css4">
							请选择心仪专业：
							<select name="major">
								<option>--请选择--</option>
								<option value="计算机">计算机</option>
								<option value="数学类">数学类</option>
								<option value="医学">医学</option>
								<option value="文史类">文史类</option>
								<option value="美术">美术</option>
								<option value="音乐">音乐</option>
								<option value="体育">体育</option>
							</select>
						</div>
					
						<div class="submit">
							<input type="submit" class="btn" value="立即注册">
						</div>
					</form>
				</div>
			</div>
		</div>
		</div>
		</div>
	</div>
	<script type="text/javascript">
		$.myvali({
			myform:".form2",								//表单id
			mybtn:".btn",									//提交表单按钮id	
			myVali:".vali",									//input父盒子的class，可自定义类名

			Required:".Required",							//验证必填选项，值为Required,input自己加class
			RequiredTps:["不能为空!!!"],					//只验证不为空提示

			Requireds:".Requireds",							//验证必填不同提示，值为Requireds,input自己加class
			reqtps:".reqtps",								//验证不为空不同提示,input父盒子的class,可自定义类名
			Reqlength:[[2,4]],								//只验证不为空,设置最小长度和最大长度
			ReqlengthTps:["+不为空1"],						//验证不为空长度提示
			RequiredsTps:["这是自定义提示1"],				//默认提示

			myName:".uersname",								//用户名id或class
			myName2:".nicheng",								//昵称id或class
			
			myPassword:".pasw",								//密码id或class
			myConfirmPassword:".pasws",						//确认密码id或class

			myCard:".cid",									//身份证验证id或class
			
			// myPhone1:"#v",								//修改手机号(原手机号用这个验证)id或class
			// phoneIsServer1:false,						//手机号是否与数据库验证，true为是，默认false为否
			// phoneIsServerUrl1:["1.php"],					//手机号与数据库验证的路径
			// phoneIsServerType1:"post",					//以什么方式提交
			// phoneIsServerDType1:"json",					//以什么格式提交

			myPhone:".phone",								//手机号id或class
			// phoneIsServer:false,							//手机号是否与数据库验证，true为是，默认false为否
			// phoneIsServerUrl:["1.php"],					//手机号与数据库验证的路径
			// phoneIsServerType:"post",					//以什么方式提交
			// phoneIsServerDType:"json",					//以什么格式提交

			isPhoneCode:true,								//开启手机短信验证，true开启，默认false不开启(此项功能与myPhone配合验证)
			phoneCodeBtn:".codebtn",						//发送手机验证码id或class（按钮）
			count:30,										//发送短信验证码倒计时，默认60s（按钮）
			codeBtnCol1:["rgb(150, 150, 150)"],				//短信验证码倒计时（按钮，通过验证前）颜色
			codeBtnCol2:["#333"],							//短信验证码倒计时（按钮，通过验证后）颜色
			// isPhoneCodeUrl:["1.php"],					//发送手机验证码与数据库验证的路径（按钮）
			// isPhoneCodeType:"post",						//以什么方式提交（按钮）
			// isPhoneCodeDType:"json",						//以什么格式提交（按钮）


			phoneCodeInput:".phcode",						//短信验证码id或class（输入框）
			// phoneCodeInputUrl:["1.php"],					//短信验证码与数据库验证的路径（输入框）
			// phoneCodeInputType:"post",					//以什么方式提交（输入框）
			// phoneCodeInputDType:"json",					//以什么格式提交（输入框）
			
			myMailbox:".eal",								//邮箱id或class
			// mailboxIsServer:false,						//邮箱是否要与数据库验证，默认false为否
			// mailboxIsServerUrl:["1.php"],				//邮箱与数据库验证的路径
			// mailboxIsServerType:"post",					//以什么方式提交
			// mailboxIsServerDType:"json",					//以什么格式提交

			// myCode:"#v",									//验证码id或class
			// CodeIsServerUrl:["1.php"],					//验证码与数据库验证的路径
			// CodeIsServerType:"post",						//以什么方式提交
			// CodeIsServerDType:"json",					//以什么格式提交

			// PwdStrong:true,								//密码强度验证，默认false不开启，true开启
			// isStrongTps:["弱","中","强"],				//密码强度提示，可自定义提示
				
			// myNameMinLength:3,							//用户名最小长度，不写默认长度3
			// myNameMaxLength:12,							//用户名最大长度，不写默认长度12
			
			// myNameMinLength2:3,							//昵称最小长度，不写默认长度3
			// myNameMaxLength2:12,							//昵称最大长度，不写默认长度12

			// myPasswordMinLength:6,						//密码最小长度，不写默认长度6
			// myPasswordMaxLength:16,						//密码最大长度，不写默认长度16
			
			// corrCol:"#4E7504",							//设置正确提示文字的颜色，不设置默认绿色
			// errCol:"red",								//设置错误提示文字的颜色，不设置默认红色
		});
	</script>
	<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="js/zcity.js"></script>

	<script type="text/javascript">
	zcityrun('.zcityGroup');
	</script>
</body>
<script type="text/css">  
		.input_class {  /*设置class属性名称为input_class的标签内容*/  
   		 width:250px;  
   		 height:16px;      
		}  
  
		caption{        /*设置caption标签内容*/  
   		 font-size:30px;  
    	color:red;  
	    text-shadow: yellow 6px 0px 5px;   
	    font-stretch: wider;  
	    font-weight: 900;   
	}  
  
	.aaa{          /*设置class属性名称为aaa的标签内容*/  
	    font-size:16px;  
	    font-weight: bold;  
	}  
  
	</script>
	<script type="text/javascript">  
  
       var  usernameRegex = /^\w{3,15}$/;  
     
        var passwordRegex = /^\w{6,12}$/;
        
        var teleRegex = /^1\d{10}$/
       
        var emailRegex = /^\w+@\w+(\.\w+)+$/;  
     
        var realNameRegex = /^[\u4e00-\u9fa5]{2,5}$/;  
          
    
        function validateForm(){  
            var flag = true;  
            //校验密码  
            var passwordNode = byId("password");  //获得ID值为password的节点对象  
            var password = passwordNode.value;  
            if(!passwordRegex.test(password)){  
                byId("password_span").style.color = "red";  
                flag = false;  
            }  
              
            //确认密码  
            var rePasswordNode = byId("rePassword");  //获得ID值为rePassword的节点对象  
            var rePassword = rePasswordNode.value;  
            if(!password==rePassword){  
                byId("rePassword_span").style.color = "red";  
                flag = false;  
            }else if(!passwordRegex.test(rePassword)){  
                byId("rePassword_span").style.color = "red";  
                flag = false;  
            }else{  
                byId("rePassword_span").style.color = "green";  
            }  
            
          //校验手机号
            var teleNode = byId("telenum");  //获得ID值为telenum的节点对象  
            var tele = teleNode.value;  
            if(!teleRegex.test(tele)){  
                byId("telenum_span").style.color = "red";  
                flag = false;  
            }  
            
            //校验邮箱  
            var emailNode = byId("Email");  //获得ID值为Email的节点对象  
            var email = emailNode.value;  
            if(!emailRegex.test(email)){  
                byId("Email_span").style.color = "red";  
                flag = false;  
            }  
              
            //校验姓名  
            var realNameNode = byId("realName");  //获得ID值为realName的节点对象  
            var realName = realNameNode.value;  
            if(!realNameRegex.test(realName)){  
                byId("realName_span").style.color = "red";  
                flag = false;  
            }  
              
            //校验省份  
            var provinceNode = byId("province");  //获得ID值为province的节点对象  
            var province = provinceNode.value;  
            if("--请选择--" == province){  
                byId("province_span").style.color = "red";  
                flag = false;  
            }  
  
            return flag;  
        }  

		function byId(id){  //自定义方法，用于获取传递过来的ID值对应的节点对象  
            return document.getElementById(id);  
        }  
              
        function checkUsername(node){ //当鼠标离开节点时调用此方法，验证节点内容是否符合注册规范  
            //校验用户名  
            var username = node.value;  //得到传递过来的节点对象的值  
            if(!usernameRegex.test(username)){  //验证是否符合节点对应的正则表达式  
                byId("username_span").style.color = "red"; //不符合，相应内容变成红色  
            }else{  
                byId("username_span").style.color = "green";  //符合，相应内容变成绿色  
            }  
        }  
          
        function checkPassword(node){  //当鼠标离开节点时调用此方法，验证节点内容是否符合注册规范  
            //校验密码  
            var password = node.value;  
            //alert("111");  
            if (!passwordRegex.test(password)) {  
                byId("password_span").style.color = "red";  
            }  
            else {  
                byId("password_span").style.color = "green";  
            }  
        }     
              
        function checkRePassword(node){  //当鼠标离开节点时调用此方法，验证节点内容是否符合注册规范  
            //确认密码                
            var rePassword = node.value;  
            var password = byId("password").value;  
            //alert(repassword+"***"+password);           
            if(!password==rePassword){                    
                byId("rePassword_span").style.color = "red";  
            }else if(!passwordRegex.test(rePassword)){  
                byId("rePassword_span").style.color = "red";  
            }else{  
                byId("rePassword_span").style.color = "green";  
            }  
        }         
  		
        function checkTelenum(node){  //当鼠标离开节点时调用此方法，验证节点内容是否符合注册规范  
            //校验手机号  
            var tele = node.value;  
            if(!teleRegex.test(tele)){  
                byId("telenum_span").style.color = "red";  
            }else{  
                byId("telenum_span").style.color = "green";  
            }  
        }  
        
        function checkEmail(node){  //当鼠标离开节点时调用此方法，验证节点内容是否符合注册规范  
            //校验邮箱  
            var email = node.value;  
            if(!emailRegex.test(email)){  
                byId("Email_span").style.color = "red";  
            }else{  
                byId("Email_span").style.color = "green";  
            }  
        }  
              
        function checkName(node){  //当鼠标离开节点时调用此方法，验证节点内容是否符合注册规范  
            var realName = node.value;  
            if(!realNameRegex.test(realName)){  
                byId("realName_span").style.color = "red";  
            }else{  
                byId("realName_span").style.color = "green";  
            }  
        }  
          
        function checkProvince(node){  //当鼠标离开节点时调用此方法，验证节点内容是否符合注册规范  
            var province = node.value;  
            if("--请选择--" == province){  
                byId("province_span").style.color = "red";  
            }else{  
                byId("province_span").style.color = "green";  
            }  
        }  
  
</script>  
	

</html>