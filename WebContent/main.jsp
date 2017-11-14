<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>首页</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <!-- CSS Libs -->
    <link rel="stylesheet" type="text/css" href="/TMS/framework/bootstrp/lib/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/TMS/framework/bootstrp/lib/css/font-awesome.min.css">
    <!-- CSS App -->
    <link rel="stylesheet" type="text/css" href="/TMS/framework/bootstrp/css/style.css">
    <link rel="stylesheet" type="text/css" href="/TMS/framework/bootstrp/css/themes/flat-blue.css">
    
    <link rel="stylesheet"
	href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
    <style>
  .el-menu-vertical-demo:not(.el-menu--collapse) {
    width: 200px;
    min-height: 400px;
  }
</style>
</head>
<body class="flat-blue">
    <div class="app-container">
        <div class="row content-container">
            <nav class="navbar navbar-default navbar-fixed-top navbar-top">
                <div class="container-fluid">
                    <div class="navbar-header">
                        
                    </div>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown profile">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">用户信息 <span class="caret"></span></a>
                            <ul class="dropdown-menu animated fadeInDown">
                                <li class="profile-img">
                                    <img src="../img/profile/picjumbo.com_HNCK4153_resize.jpg" class="profile-img">
                                </li>
                                <li>
                                    <div class="profile-info">
                                        <h4 class="username">程</h4>
                                        <p>emily_hart@email.com</p>
                                        <div class="btn-group margin-bottom-2x" role="group">
                                            <button type="button" class="btn btn-default"><i class="fa fa-user"></i> 信息</button>
                                            <button type="button" class="btn btn-default"><i class="fa fa-sign-out"></i> 退出</button>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
            <!--左侧-->
            <div class="side-menu sidebar-inverse" id="leftId" >
	                 	<el-menu style="width:100%;height:100%"
					      default-active="2"
					      class="el-menu-vertical-demo"
					      @open="handleOpen"
					      @close="handleClose"
					      @select="onclickMenu"
					      unique-opened="true"
					      background-color="#353d47"
					      text-color="#fff"
					      active-text-color="#ffd04b"
					      >
					      <el-menu-item index="/TMS/zsal/swdt/tree.html">
						        <i class="el-icon-loading"></i>
						        <span slot="title">首页</span>
						  </el-menu-item>
					      <el-submenu index="1">						      
					        <template slot="title">
					          <i class="el-icon-menu"></i>
					          <span>功能导航</span>
					        </template>
					        <el-submenu index="1-1">
					          <template slot="title">个人管理</template>
					          <el-menu-item index="/TMS/grxf.do">个人想法</el-menu-item>
					          <el-menu-item index="22222">个人目标</el-menu-item>
					        </el-submenu>
					        <el-submenu index="1-2">
					          <template slot="title">时间管理</template>
					          <el-menu-item index="55555">选项1</el-menu-item>
					        </el-submenu>
					         <el-submenu index="1-3">
					          <template slot="title">知识案例</template>
					          <el-menu-item index="11111">思维导图</el-menu-item>
					        </el-submenu>
					      </el-submenu>
					    </el-menu>
            </div>
            <!-- Main Content -->
            <div class="container-fluid">
                <div class="side-body padding-top">
                <iframe src="/TMS/zsal/swdt/tree.html" marginheight="0" marginwidth="0" frameborder="0"
 					 width="100%" height="100%" scrolling="no" id="iframecon" name="iframepage" onLoad="iFrameHeight()" ></iframe>
<!--                     <div class="row" > -->
<!--                  	sdad -->
<!--                     </div> -->
                </div>
            </div>
        </div>
            <!--引入vue -->
            <script type="text/javascript" src="/TMS/framework/bootstrp/lib/js/jquery.min.js"></script>
            <script type="text/javascript" src="/TMS/framework/bootstrp/lib/js/bootstrap.min.js"></script>
            <script src="https://unpkg.com/vue/dist/vue.js"></script>
			<script src="https://unpkg.com/element-ui/lib/index.js"></script>
            <!-- 引入自定义Javascript -->
            <script type="text/javascript" src="/TMS/framework/mian/main.js"></script>
</body>
</html>