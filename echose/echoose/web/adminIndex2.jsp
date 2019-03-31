<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.ef.entity.School" %>
<%@page import="com.ef.entity.Collegetype" %>
<%@page import="java.util.List"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
		String path = request.getContextPath();
		String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="<%=basePath%>bootstrap2.3.2/css/bootstrap.min.css" rel="stylesheet" />
    <title></title>
    <link href="<%=basePath%>styles/Common.css" rel="stylesheet" />
    <link href="<%=basePath%>styles/Index2.css" rel="stylesheet" />
</head>
<body>
    <div class="container-fluid">
        <div class="row-fluid">
            <h4>数据列表</h4>
            <div class="add"><a class="btn btn-success" onclick="openadd();">添加学校</a></div>
            <div class="w">
                <div class="span12">
                    <table class="table table-condensed table-bordered table-hover tab">
                        <thead>
                            <tr>
                                <th>学校名称</th>
                                <th>图片</th>
                                <th>隶属</th>
                                <th>分数线</th>
                                <th>网址</th>
                                <th>操作</th>
                            </tr>
                        </thead>
                        <c:forEach var="school" items="${adminschoolList }">
                        	<tbody id="tbody">
                        		<tr align="center" class="change">
                        		<th>${school.sname }</th>
                        		<th><img src="<%=basePath %>${school.simg }" alt="无法显示该图片" width="100px" height="150px"/></th>
                        		<th>${school.sbelong}</th>
                        		<th>${school.sscore }</th>
                        		<th class="intro">${school.snet}</th>
                        		<th style="font-size:25px"><a href="<%=basePath %>adminschool/list2?id=${school.sid }">修改</a>&emsp;|&emsp;<a href="<%=basePath %>adminschool/removeschool?id=${school.sid}">删除</a></th>  
                        		<tr>                           
                        	</tbody>
                        </c:forEach>
                        <tbody id="tbody"></tbody>
                    </table>
                    <div id="page" class="tr"></div>
                </div>
            </div>


            <div id="addModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h3>添加学校</h3>
                </div>
                <form class="form-horizontal" action="<%=basePath %>adminschool/addschool">
                <div class="modal-body">
                        <div class="control-group">
                            <label class="control-label" for="userName">名称</label>
                            <div class="controls">
                                <input type="text" name="name" placeholder="学校名称">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="Chinese">图片</label>
                            <div class="controls">
                                <input type="text" name="img" placeholder="图片">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="Math">隶属</label>
                            <div class="controls">
                                <input type="text" name="belong" placeholder="隶属">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="Math">分数线</label>
                            <div class="controls">
                                <input type="text" name="score" placeholder="分数线">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="English">网址</label>
                            <div class="controls">
                                <input type="text" name="net" placeholder="网址">
                            </div>
                        </div>
                    
                </div>
                <div class="modal-footer">
                    <button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
                    <button class="btn btn-primary" id="add" onclick="add();">保存</button>
                    <button class="btn btn-primary" id="edt" onclick="edt();">保存</button>
                </div>
                </form>
            </div>
        </div>
    </div>

    <script src="<%=basePath%>scripts/jquery-1.9.1.min.js"></script>
    <script src="<%=basePath%>bootstrap2.3.2/js/bootstrap.min.js"></script>
    <script src="<%=basePath%>layer-v2.3/layer/layer.js"></script>
    <script src="<%=basePath%>laypage-v1.3/laypage/laypage.js"></script>
    <script src="<%=basePath%>scripts/Index2.js"></script>
</body>
</html>