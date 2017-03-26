<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<script src="assets/js/jquery.min.js"></script>
<script type="text/javascript">

$().ready(function() {
//字母数字
jQuery.validator.addMethod("alnum", function(value, element){
return this.optional(element) ||/^[a-zA-Z0-9]+$/.test(value);
}, "只能包括英文字母和数字");
//邮编
jQuery.validator.addMethod( "checkPost",function(value,element){     
            var pattern =/^[0-9]{6}$/;  
            if(value !=''){if(!pattern.exec(value)){return false;}};  
            return true;   
     } ,  "  <font  color='red'>请输入有效的邮政编码！</font>" );
       
 $("#myForm").validate(
 { 
 
// 验证规则 
rules: { 
"admin.name": { 
required: true, 
}, 
"admin.password": { 
required: true, 
}, 
"vercode": { 
required: true, 
},
}, 
/* 设置错误信息 */ 
messages: { 
"admin.name": { 
required: "<font color='red'><li>用户名不能为空</li></font>", 
}, 

"admin.password": { 
required: "<font color='red'><li>密码不能为空</li></font>", 
},


"vercode": { 
required: "<font color='red'>验证码不能为空</font>", 
},
}, 


errorPlacement: function(error,element) {
	  $("#f1").empty();
	  $("#f2").empty();
      error.insertAfter(element.parent()); 
},

}
 
 );
});
</script>
<style type="text/css">
body {
background-image:url(assets/images/login.jpg);
background-size:100% 100%;
background-repeat:no-repeat;
}
</style>
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
		<link rel="stylesheet" href="assets/css/ace.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
<!-- <body  style="background-color:#428bca" class="login-layout"> -->
<body   class="login-layout">
		<div class="main-container">
			<div class="main-content">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-1">
						<div class="login-container">
							<div class="center">
								<h1>
									<!-- <i class="icon-leaf green"></i> -->
									<span style="white-space:nowrap"
									 class="blue ">在线社交网络特定话题信息传播分析系统</span>
									<%-- <span class="white">登录</span> --%>
								</h1>
								<!-- <h4 class="black">&copy; hit</h4> -->
							</div>

							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
								<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="space-6"></div>
							<div class="position-relative">
								<div id="login-box" class="login-box visible widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header blue lighter bigger">
												<i class="icon-coffee green"></i>
												请输入登录信息
											</h4>

											<div class="space-6"></div>

											<form id="myForm" class="form-horizontal"  action="Admin_login" method="post">
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control" placeholder="用户名" name="admin.name"/>
															<font id="f1"color="red"><s:fielderror fieldName="admin.name"></s:fielderror></font>
															<i class="icon-user"></i>
															
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" placeholder="密码" name="admin.password"/>
															<font id="f2" color="red"><s:fielderror fieldName="admin.password"></s:fielderror></font>
															<i class="icon-lock"></i>
															
														</span>
													</label>

													<div class="space"></div>

													<div class="clearfix">
														<!-- <label class="inline">
															<input type="checkbox" class="ace" />
															<span class="lbl"> Remember Me</span>
														</label>
 															-->
														<button type="submit" class="width-35 pull-right btn btn-sm btn-primary">
															<i class="icon-key"></i>
															登录
														</button>
													</div>

													<div class="space-4"></div>
												</fieldset>
											</form>

											<div class="social-or-login center">
											</div>

											<div class="social-login center">
											</div>
										</div><!-- /widget-main -->

										<div class="toolbar clearfix">
											<div>
											</div>

											<div>
											</div>
										</div>
									</div><!-- /widget-body -->
								</div><!-- /login-box -->

								<div id="forgot-box" class="forgot-box widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header red lighter bigger">
												<i class="icon-key"></i>
												Retrieve Password
											</h4>

											<div class="space-6"></div>
											<p>
												Enter your email and to receive instructions
											</p>

											<form>
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="email" class="form-control" placeholder="Email" />
															<i class="icon-envelope"></i>
														</span>
													</label>

													<div class="clearfix">
														<button type="button" class="width-35 pull-right btn btn-sm btn-danger">
															<i class="icon-lightbulb"></i>
															Send Me!
														</button>
													</div>
												</fieldset>
											</form>
										</div><!-- /widget-main -->

										<div class="toolbar center">
											<a href="#" onclick="show_box('login-box'); return false;" class="back-to-login-link">
												Back to login
												<i class="icon-arrow-right"></i>
											</a>
										</div>
									</div><!-- /widget-body -->
								</div><!-- /forgot-box -->

								<div id="signup-box" class="signup-box widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header green lighter bigger">
												<i class="icon-group blue"></i>
												New User Registration
											</h4>

											<div class="space-6"></div>
											<p> Enter your details to begin: </p>

											<form>
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="email" class="form-control" placeholder="Email" />
															<i class="icon-envelope"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control" placeholder="Username" />
															<i class="icon-user"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" placeholder="Password" />
															<i class="icon-lock"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" placeholder="Repeat password" />
															<i class="icon-retweet"></i>
														</span>
													</label>

													<label class="block">
														<input type="checkbox" class="ace" />
														<span class="lbl">
															I accept the
															<a href="#">User Agreement</a>
														</span>
													</label>

													<div class="space-24"></div>

													<div class="clearfix">
														<button type="reset" class="width-30 pull-left btn btn-sm">
															<i class="icon-refresh"></i>
															Reset
														</button>

														<button type="button" class="width-65 pull-right btn btn-sm btn-success">
															Register
															<i class="icon-arrow-right icon-on-right"></i>
														</button>
													</div>
												</fieldset>
											</form>
										</div>

										<div class="toolbar center">
											<a href="#" onclick="show_box('login-box'); return false;" class="back-to-login-link">
												<i class="icon-arrow-left"></i>
												Back to login
											</a>
										</div>
									</div><!-- /widget-body -->
								</div><!-- /signup-box -->
							</div><!-- /position-relative -->
						</div>
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->

</body>

	
   

