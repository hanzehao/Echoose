<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.ef.entity.School"%>
<%@page import="java.util.List"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<%
		String path = request.getContextPath();
		String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	%>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Echoose后台管理——修改学校</title>
	<link href="<%=basePath %>bootstrap2.3.2/css/bootstrap.min.css" rel="stylesheet" />
    <link href="<%=basePath %>styles/Common.css" rel="stylesheet" />
    <link href="<%=basePath %>styles/Index2.css" rel="stylesheet" />
</head>
<body>
	<div class="container-fluid">
        <div class="row-fluid">
            <h4>学校信息列表</h4>
            <div class="w">
                <div class="span12">
              		<form action="<%=basePath %>adminschool/alterschool?id=${school.sid}"  method="post" enctype="multipart/form-data">
                    <table class="table table-condensed table-bordered table-hover tab" >
                        <thead>
                            <tr>
                                <th>学校名</th>
                                <th>学校图片</th>
                            </tr>
                        </thead>
                        <tbody id="tbody">
                            <tr align="center">
                        		<th> <input type="text" name="schoolName" value="${school.sname }"> </th>
                        		<th> <input type="text" name="schoolImg" value="${school.simg }"> </th>
                       		<tr> 
                        </tbody>
                    </table>
                    
                    <table class="table table-condensed table-bordered table-hover tab" >
                        <thead>
                            <tr>
                                <th>隶属</th>
                                <th>分数线</th>
                                <th>网址</th>
                                <th>操作</th>
                            </tr>
                        </thead>
                        <tbody id="tbody">
                            <tr align="center">
                        		<th> <input type="text" name="schoolBelong" value="${school.sbelong }"> </th>
                        		<th> <input type="text" name="schoolScore" value="${school.sscore }"> </th>
                        		<th> <input type="text" name="schoolNet" value="${school.snet }"> </th>
                        		<th> <input type="submit" value="修改学校"></th>
                       		<tr> 
                        </tbody>  
                    </table>
                    </form>
                    <div id="page" class="tr"></div>
                </div>
            </div>
        </div>
    </div>

    <script src="<%=basePath %>/scripts/jquery-1.9.1.min.js"></script>
    <script src="<%=basePath %>/bootstrap2.3.2/js/bootstrap.min.js"></script>
    <script src="<%=basePath %>/layer-v2.3/layer/layer.js"></script>
    <script src="<%=basePath %>/laypage-v1.3/laypage/laypage.js"></script>
    <script src="<%=basePath %>/scripts/Index2.js"></script>
</body>
</html>