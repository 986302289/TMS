<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet"
	href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
<!-- <script src="https://unpkg.com/vue/dist/vue.js"></script> -->
<!-- 先引入 Vue -->
<!-- <script src="https://unpkg.com/element-ui/lib/index.js"></script> -->
<!-- 引入组件库 -->
<%-- <link  href="<%=request.getContextPath()%>/framework/element/index.css" rel="stylesheet" type="text/css"> --%>
<script
	src="<%=request.getContextPath()%>/framework/jquery/jquery-1.12.0.min.js"></script>
<script
	src="<%=request.getContextPath()%>/framework/jquery/jquery-migrate-1.3.0.min.js"></script>

<script type="text/javascript"
	src="<%=request.getContextPath()%>/framework/element/vue.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/framework/element/index.js"></script>
<style>
* {
	margin: 0;
	padding: 0;
}

</style>
</head>
<body onload="init()" >
	<div id="mianMenu">
		<el-menu :default-active="activeIndex2" class="el-menu-demo"
			mode="horizontal" @select="handleSelect" background-color="#545c64"
			text-color="#fff" active-text-color="#ffd04b"> <el-menu-item
			index="1">处理中心</el-menu-item> <el-submenu index="2"> <template
			slot="title">我的工作台</template> <el-menu-item index="2-1">选项1</el-menu-item>
		<el-menu-item index="2-2">选项2</el-menu-item> <el-menu-item index="2-3">选项3</el-menu-item>
		</el-submenu> <el-menu-item index="3"> <a href="https://www.ele.me"
			target="_blank">订单管理</a></el-menu-item> </el-menu>
	</div>
	<div id="mianTab" style="height: 93.41%;">
		<el-tabs v-model="editableTabsValue2" type="border-card"style="height: 100%;"
			closable @tab-remove="removeTab"> <el-tab-pane 
			v-for="(item, index) in editableTabs2" :key="item.name"
			:label="item.title" :name="item.name"> <!-- 			{{item.content}} -->
		<iframe :src="item.content" frameborder="0" marginwidth="0"
			marginheight="0" style="overflow: hidden" width="100%" height="100%"></iframe>
		</el-tab-pane> </el-tabs>
	</div>
</body>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/framework/mian/main.js"></script>
</html>