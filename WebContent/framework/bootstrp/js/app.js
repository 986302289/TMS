new Vue({
				el : '#leftId',
	data : function() {
		 return {
		        isCollapse: true
		      }
	},
	 methods: {
		 handleOpen:function(key, keyPath) {
		        console.log(key, keyPath);
		      },
		      handleClose:function(key, keyPath) {
		        console.log(key, keyPath);
		      },
		      onclickMenu:function(key, keyPath){
		    	  alert();
		    		var src="/TMS/index4.jsp";
		    		$("#iframecon").attr({src: src});
		      }
	    }
});
 $(".app-container").toggleClass("expanded");
 
 
 function iFrameHeight() {
     var ifm= document.getElementById("iframecon");
     var subWeb = document.frames ? document.frames["iframepage"].document :ifm.contentDocument;
     if(ifm != null && subWeb != null) {
    	 ifm.height = subWeb.body.scrollHeight;
     }
 }
 
 