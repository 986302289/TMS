<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
<style type="text/css">
html body{
	height: 800px;
	width: 100%;
}
</style>
</head>
<body>
<div id="app">
<template>
  <el-button
    plain
    @click="open">
    可自动关闭
  </el-button>
  <el-button
    plain
    @click="open2">
    不会自动关闭
    </el-button>
      <el-button type="text" onclick="aa()">点击打开 Message Box</el-button>
    
</template>
</div>
</body>
<script
	src="<%=request.getContextPath()%>/framework/jquery/jquery-1.12.0.min.js"></script>
<script
	src="<%=request.getContextPath()%>/framework/jquery/jquery-migrate-1.3.0.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/framework/element/vue.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/framework/element/index.js"></script>
<script>

new Vue({
	el : '#app',
	data : function() {
		return {
		}
	},
	methods : {
		open:function() {
	        const h = this.$createElement;

	        this.$notify({
	          title: '标题名称',
	          message: h('i', { style: 'color: teal'}, '这是提示文案这是提示文案这是提示文案这是提示文案这是提示文案这是提示文案这是提示文案这是提示文案')
	        });
	      },

	      open2:function() {
	        this.$notify({
	          title: '提示',
	          message: '这是一条不会自动关闭的消息',
	          duration: 0
	        });
	      }
	    }
	    
});


function aa(){
	parent.mainVm.open3("sdfasdfs");
}



</script>
</html>