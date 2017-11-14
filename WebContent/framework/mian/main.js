//初始化主框架
new Vue({
	el : '#app',
	data : function() {
		return {
			isCollapse : true
		}
	},
	methods : {
		handleOpen : function(key, keyPath) {
			console.log(key, keyPath);
		},
		handleClose : function(key, keyPath) {
			console.log(key, keyPath);
		},
		onclickMenu : function(key, keyPath) {
			$("#iframecon").attr({
				src : key
			});
		}
	}
});

/**
 * iframe自适应高度
 */
function iFrameHeight() {
	var ifm = document.getElementById("iframecon");
	var subWeb = document.frames ? document.frames["iframepage"].document
			: ifm.contentDocument;
	if (ifm != null && subWeb != null) {
		ifm.height = subWeb.body.scrollHeight;
	}
}

/**
 * 点击首页刷新
 */
function ref() {
	history.go(0);
}