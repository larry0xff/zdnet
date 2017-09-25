<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<link rel="stylesheet" type="text/css" href="/zdnet/page/bootstrap/css/bootstrap.min.css"/>
  	<script type="text/javascript">
  		function ondelete(fid){
   			if(confirm("确定要删除该条目？")){
	   			location.replace("/zdnet/delFilm.action?fid="+fid+"&pageprop=select");
   			
   			}
   		}
  	</script>
    <style type="text/css">
		td,th{
			height:20px;
			font-size:10pt;
			text-align:center;
		}
		.input-group{
			width:250px;
			float:left;
			margin:0 10px;
		}
	</style>

  </head>
  
  <body>
  	<div class="panel panel-primary" style="margin-top:20px;margin-right:10px;">
  	<div class="panel-heading">查询条件</div>
  	<div class="panel-body">
    <form action="/zdnet/selectFilm.action">
    	<div class="input-group">
  			<span class="input-group-addon" id="basic-addon1">电影名</span>
  			<input type="text" name = "fname" class="form-control" aria-describedby="basic-addon1" >
		</div>
		<div class="input-group">
  			<span class="input-group-addon" id="basic-addon1">导演</span>
  			<input type="text" name = "fauthor" class="form-control" aria-describedby="basic-addon1" >
		</div>
		<div class="input-group">
  			<span class="input-group-addon" id="basic-addon1">演员</span>
  			<input type="text" name = "factor" class="form-control" aria-describedby="basic-addon1" >
		</div>
		
    	<button type="submit" id="lastpage"  class="btn btn-default btn-lg" style="font-size:12pt;height:34px;width:100px;padding:0 20px">
    		<span class="glyphicon glyphicon-search"></span>
    	</button>
    	
    </form>
    </div>
    </div>
    
    <div class="panel panel-primary" style="margin-top:20px;margin-right:10px;height:600px;overflow:auto;">
  	<div class="panel-heading" >查询结果</div>
    <c:if test="${films.size() != 0 }">
  	<table class="table table-hover ">
  		<tr>
  			<th>编号</th>
  			<th>电影名称</th>
  			<th>导演</th>
  			<th>主要演员</th>
  			<th>操作</th>
  		</tr>
	    <c:forEach items="${films }" var="film">
	    	<tr>
	  			<td>${film.fid }</td>
	  			<td>${film.fname }</td>
	  			<td>${film.fauthor }</td>
	  			<td>${film.factor }</td>
	  			<td>
	  				<a href="/zdnet/infoFilm.action?fid=${film.fid }&pageprop=selectFilm"><span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>详情</a>&nbsp;
	  				<a href="#" onclick="ondelete(${film.fid })"><span class="glyphicon glyphicon-remove-sign" aria-hidden="true"></span>删除</a>
	  			</td>
  			</tr>
	    </c:forEach>
    </table>
    </c:if>
    <c:if test="${films.size() == 0 }">
    	<div class="alert alert-danger" style="margin:20px;" role="alert">没有找到结果！</div>
    </c:if>
    </div>
    
    
    
  </body>
  
</html>
