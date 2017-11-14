<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>TMS</title>
<link rel="stylesheet"
	href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/framework/mian/main.css">
</head>
<body>
	<div id="app">
		<el-container class="height">
		  <el-aside  class="left">
		  	<div class="top_left" align="center" onclick="ref()" onselectstart="return false;"><!-- 设置文字不可选择 -->
		  		<span class="top_left_font">
		  		<strong>TM</strong></span>
		  	</div>
		    <el-menu 
		      :default-openeds="['1', '3']"
		      class="el-menu-vertical-demo"
		      @open="handleOpen"
		      @close="handleClose"
		      @select="onclickMenu"
		    >
		      <el-submenu index="1">						      
		        <template slot="title">
		          <i class="el-icon-menu"></i>
		          <span>功能导航</span>
		        </template>
		        <el-submenu index="1-1">
		          <template slot="title">个人管理</template>
		          <el-menu-item index="<%=request.getContextPath()%>/grxf.do">个人想法</el-menu-item>
		          <el-menu-item index="<%=request.getContextPath()%>/zsal/end.jsp">个人目标</el-menu-item>
		        </el-submenu>
		        <el-submenu index="1-2">
		          <template slot="title">时间管理</template>
		          <el-menu-item index="<%=request.getContextPath()%>/zsal/end.jsp">选项1</el-menu-item>
		        </el-submenu>
		         <el-submenu index="1-3">
		          <template slot="title">知识案例</template>
		          <el-menu-item index="<%=request.getContextPath()%>/zsal/end.jsp">思维导图</el-menu-item>
		        </el-submenu>
		      </el-submenu>
		      </el-menu>
	 		 </el-aside>
		  <el-container>
		    <el-header style="text-align: right; font-size: 12px">
		      <el-dropdown>
		        <i class="el-icon-setting" style="margin-right: 15px"></i>
		        <el-dropdown-menu slot="dropdown">
		          <el-dropdown-item>查看</el-dropdown-item>
		          <el-dropdown-item>新增</el-dropdown-item>
		          <el-dropdown-item>删除</el-dropdown-item>
		        </el-dropdown-menu>
		      </el-dropdown>
		      <span>程志远</span>
		    </el-header>
		    
		    <el-main>
		      <iframe src="<%=request.getContextPath()%>/zsal/end.jsp"id="iframecon" name="iframepage" scrolling="no" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="100%" onLoad="iFrameHeight()"></iframe>
		    </el-main>
		  </el-container>
		</el-container>
	</div>
<script
	src="<%=request.getContextPath()%>/framework/jquery/jquery-1.12.0.min.js"></script>
<script
	src="<%=request.getContextPath()%>/framework/jquery/jquery-migrate-1.3.0.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/framework/element/vue.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/framework/element/index.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/framework/mian/main.js"></script>
</body>
</html>