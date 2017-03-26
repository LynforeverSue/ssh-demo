<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		
		<!-- basic styles -->

		<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />

		<!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->

		<!-- page specific plugin styles -->

		<!-- fonts -->

		

		<!-- ace styles -->

		<link rel="stylesheet" href="assets/css/ace.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="assets/css/jquery.dataTables.min.css" />

		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->

		<script src="assets/js/ace-extra.min.js"></script>

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lt IE 9]>
		<script src="assets/js/html5shiv.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
	</head>

	<body>

		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>

				<div class="sidebar" id="sidebar">
					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
					</script>

					<div class="sidebar-shortcuts" id="sidebar-shortcuts">
						<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
							<button class="btn btn-success">
								<i class="icon-signal"></i>
							</button>

							<button class="btn btn-info">
								<i class="icon-pencil"></i>
							</button>

							<button class="btn btn-warning">
								<i class="icon-group"></i>
							</button>

							<button class="btn btn-danger">
								<i class="icon-cogs"></i>
							</button>
						</div>

						<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
							<span class="btn btn-success"></span>

							<span class="btn btn-info"></span>

							<span class="btn btn-warning"></span>

							<span class="btn btn-danger"></span>
						</div>
					</div><!-- #sidebar-shortcuts -->
						
						<ul class="nav nav-list">
						<li class="active open">
							<a href="#" class="dropdown-toggle">
								<i class="icon-list"></i>
								<span class="menu-text"><font size="4">a</font></span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li >
									<a href="tin">
										<i class="icon-double-angle-right"></i>
										b
									</a>
								</li>
								<li class="active">
									<a href="weak">
										<i class="icon-double-angle-right"></i>
										c
									</a>
								</li>
								<li>
									<a href="topic">
										<i class="icon-double-angle-right"></i>
										d
									</a>
								</li>
						
                                <li >
									<a href="weibo">
										<i class="icon-double-angle-right"></i>
										e
									</a>
								</li>
								
								<li>
									<a href="userinput">
										<i class="icon-double-angle-right"></i>
										f
									</a>
								</li>
								
								<li >
									<a href="showpara">
										<i class="icon-double-angle-right"></i>
										g
									</a>

								</li>
							</ul>
						</li>
						
						<li >
							<a href="#" class="dropdown-toggle">
								<i class="icon-pencil"></i>
								<span class="menu-text"><font size="4"> Twitter</font></span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li class="active">
									<a href="weak2">
										<i class="icon-double-angle-right"></i>
										a
									</a>
								</li>
								
								<li>
									<a href="weibo2">
										<i class="icon-double-angle-right"></i>
										b
									</a>
								</li>
								<li >
									<a href="twitteruserinput">
										<i class="icon-double-angle-right"></i>
										c
									</a>
								</li>
								
								
								
							</ul>
						</li>
						
						<li >
							<a href="#" class="dropdown-toggle">
								<i class="icon-group"></i>
								<span class="menu-text"><font size="4">Facebook</font></span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li class="active">
									<a href="userinput">
										<i class="icon-double-angle-right"></i>
										d
									</a>
								</li>
								
								<li>
									<a href="tin">
										<i class="icon-double-angle-right"></i>
										e
									</a>
								</li>
								
								<li>
									<a href="topic">
										<i class="icon-double-angle-right"></i>
										f
									</a>
								</li>
								
							</ul>
						</li>
						
						<li >
							<a href="#" class="dropdown-toggle">
								<i class="icon-cogs"></i>
								<span class="menu-text"><font size="4"></font></span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li class="active">
									<a href="userinput">
										<i class="icon-double-angle-right"></i>
										a
									</a>
								</li>
								
								<li>
									<a href="tin">
										<i class="icon-double-angle-right"></i>
										b
									</a>
								</li>
								
								<li>
									<a href="topic">
										<i class="icon-double-angle-right"></i>
										c
									</a>
								</li>
								
							</ul>
						</li>
						
					</ul>

					<div class="sidebar-collapse" id="sidebar-collapse">
						<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
					</div>

					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
					</script>
				</div>

				<div class="main-content">
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="index"><font size="4">主页</font></a>
							</li>

							<li>
								<a href="sinaIndex"><font size="4"><div class="text" style="line-height:40px; height:40px; vertical-align: middle"c/div></font></a>
							</li>
							<li class="active"><font size="4">a</font></li>
						</ul><!-- .breadcrumb -->
						
					</div>

					<div class="page-content">
						<%-- <div class="page-header">
							<h1>
								b
								<small>
									<i class="icon-double-angle-right"></i>
								d
								</small>
							</h1>a
						</div> --%><!-- /.page-header -->
					
						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
		<div class="tabbable">
											<ul class="nav nav-tabs padding-12 tab-color-blue background-blue" id="myTab4">
												
												
												<li class="active">
													<a data-toggle="tab" href="#home4"e</a>
												</li>
												

												
												
											</ul>

											<div class="tab-content">

												<div id="home4" class="tab-pane in active">
													<div class="row">
																<div class="col-xs-12">
																	
																	<div class="table-header">

																	</div>
																	
							
																	<div class="modal-body no-padding">
																		<table width="100%" id="example" class="table table-striped table-bordered table-hover no-margin-bottom no-border-top">
																		        <thead>
																		            <tr>
																		                <th>序号</th>
																		                <th>姓名</th>
																		                <th>固话</th>
																		                <th>手机</th>
																		                <th>地址</th>
																		                <th>钱数</th>
																		            </tr>
																		        </thead>
																		       
																		   </table>
																		
																	</div>
																</div>
																
															</div>
															<hr>
															<center>
															
															<div id="main" style="width: 1300px;height:450px;"></div>
															
															
															</center>
												</div>

												<div id="profile4" class="tab-pane">
												
											<div class="widget-body">
												<div class="widget-main padding-24">
													<div class="row">
														

														<div class="col-sm-12">
															<div class="row">
																<div class="col-xs-11 label label-lg label-primary arrowed-in arrowed-right">

																</div>
															</div>

															<div>

															</div>
														</div><!-- /.col -->
													</div><!-- /.row -->
								</div>

												
											</div>
										</div>
		
								

								

								

								<div id="modal-table" class="modal fade" tabindex="-1">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header no-padding">
												<div class="table-header">
													<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
														<span class="white">&times;</span>
													</button>
													Results for "Latest Registered Domains
												</div>
											</div>

											<div class="modal-body no-padding">
												
											</div>

											<div class="modal-footer no-margin-top">
												<button class="btn btn-sm btn-danger pull-left" data-dismiss="modal">
													<i class="icon-remove"></i>
													Close
												</button>

												<ul class="pagination ">
												
													<li  class="disabled">
														<a  href="#">
															<i class="icon-double-angle-left"></i>
														</a>
													</li>

													<li class="active">
														<a href="#">1</a>
													</li>

													<li>
														<a href="#">2</a>
													</li>

													<li>
														<a href="#">3</a>
													</li>

													<li class="next">
														<a href="#">
															<i class="icon-double-angle-right"></i>
														</a>
													</li>
												</ul>
											</div>
										</div><!-- /.modal-content -->
									</div><!-- /.modal-dialog -->
								</div><!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div><!-- /.main-content -->

			</div><!-- /.main-container-inner -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->
		


		<script src="assets/js/jquery-1.12.3.js"></script>

	

		
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/typeahead-bs2.min.js"></script>

		<!-- page specific plugin scripts -->

		<script src="assets/js/jquery.dataTables.min.js"></script>
		<script src="assets/js/jquery.dataTables.bootstrap.js"></script>

		<!-- ace scripts -->

		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>
		<script src="assets/js/echarts.min.js"></script>
		<!-- inline scripts related to this page -->

		
	


<script type="text/javascript">
		$(document).ready(function() {
	var tableB = $("#example").DataTable( {
	//"ordering": false,
        "processing": true,
        "serverSide": true,
        "pageLength": 10,
        "ajax": "getExample",
        "columns": [
            {"data": "name"},
            {"data": "desc1"},
            {"data": "desc2"},
            {"data": "desc3"},
            {"data": "desc4"},
            {"data": "desc5"},
           
        ],
    } );
    
    $('#example').on('draw.dt', function ( ) {
   
				    	var len = 10;
	        var illegal = [];
	        var imperfect = [];
	        var dulpi = [];
	        var similar = [];
	        for (var i = 0; i < len; i++) {
	        	for (var j = i + 1; j < 10; j++) {
	        		var tdi = tableB.cell(i, 0).node();
		    		var idi = $(tdi).html(); 
		    		
		    		var tdj = tableB.cell(j, 0).node();
		    		var idj = $(tdj).html();
		    		if (idi == idj) {
		    			console.log("dulpi:" + i+","+j);
		    			dulpi.push(i);
		    			dulpi.push(j);
		    		} 
	        	}
	        }
	        
	        for (var i = 0; i < len; i++) {
	        	for (var j = i + 1; j < 10; j++) {
	        		var tdi = tableB.cell(i, 0).node();
		    		var idi = $(tdi).html(); 
		    		
		    		var tdj = tableB.cell(j, 0).node();
		    		var idj = $(tdj).html();
		    		
		    		var tdi2 = tableB.cell(i, 1).node();
		    		var namei = $(tdi2).html(); 
		    		
		    		var tdj2 = tableB.cell(j, 1).node();
		    		var namej = $(tdj2).html();
		    		
		    		
		    		if ((namei == namej) && (idi != idj)) {
		    			console.log("similar:" + i+","+j);
		    			similar.push(i);
		    			similar.push(j);
		    		} 
	        	}
	        }
	        
		    for (var i = 0; i < len; i++) {
		    	var td1 = tableB.cell(i, 0).node();
		    	var id = $(td1).html(); 
		    	
		    	var td2 = tableB.cell(i, 1).node();
		    	var name = $(td2).html(); 
		    	
		    	var td3 = tableB.cell(i, 2).node();
		    	var local = $(td3).html(); 
		    	
		    	var td4 = tableB.cell(i, 3).node();
		    	var phone = $(td4).html();
		    	
		    	if (!isValidPhone(phone) || !isChinese(name)) {
		    		console.log("illegal:" + i);
		    		illegal.push(i);
		    	}
		    	
		    	else if (local == null || local == "" || local == "无" || phone == null || phone == "" || phone == "无") {
		    		//console.log("local:"+local);
		    		console.log(" imperfect:"+i);
		    		imperfect.push(i);
		    	}
		    }
		        
		          
		          
		     for (var i in illegal ){
		     	
		    	for (var k = 0; k < 6; k++) {
		    			var td = tableB.cell(illegal[i], k).node();
		    	 		$(td).css("background-color", "#91c7ae");
				}
		    } 
		     
		    for (var j in dulpi ){
		    	
		    	for (var k = 0; k < 6; k++) {
		    			var td = tableB.cell(dulpi[j], k).node();
		    	 		$(td).css("background-color", "#c8c8a9");
				}
		    }
		     for (var i in similar ){
		    	for (var k = 0; k < 6; k++) {
		    			var td = tableB.cell(similar[i], k).node();
		    	 		$(td).css("background-color", "#61a0a8");
				}
		    }  
		    
		  for (var i in imperfect ){
		     	
		    	for (var k = 0; k < 6; k++) {
		    			var td = tableB.cell(imperfect[i], k).node();
		    	 		$(td).css("background-color", "#d48265");
				}
		    } 
			    } );
});

  

var title = "饼状图";
var val = [12,45,12,67,34,34];
var nickname = ["有效数据比例",  "完全重复数据比例", "相似重复数据比例", "行缺失数据比例", "列缺失数据比例", "不合法数据比例"];


var myChart = echarts.init(document.getElementById("main"));

loadPieGraph(title, val, nickname, myChart);

function isValidPhone(phone) {
	var myreg = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/; 
	if(!myreg.test(phone)) 
	{ 
	    
	    return false; 
	} 
	else {
		return true;
	}
}

function isChinese(temp) {

	  var re = /[\u4E00-\u9FA5\uF900-\uFA2D]/;
	  if (re.test(temp)) return true ;
	  return false ;

}

function loadPieGraph(title, val, nickname, myChart) {
    option = {
		    title : {
		        text: '饼状图',
		        subtext: '',
		        x:'center'
		    },
		    tooltip : {
		        trigger: 'item',
		        formatter: "{a} <br/>{b} : {c} ({d}%)"
		    },
		    legend: {
		        orient: 'vertical',
		        left: 'left',
		        data: ['有效数据比例',  '完全重复数据比例', '相似重复数据比例','列缺失数据比例', '不合法数据比例']
		    },
		    series : [
		        {
		            name: '访问来源',
		            type: 'pie',
		            radius : '55%',
		            center: ['50%', '60%'],
		            data:[
		                {value:7865, name:'有效数据比例'},
		                {value:5, name:'完全重复数据比例'},
		                {value:1265, name:'相似重复数据比例'},
		                {value:1677, name:'列缺失数据比例'},
		                //{value:5, name: '列缺失数据比例'},
		                {value:1761, name: '不合法数据比例'},
		            ],
		            itemStyle: {
		                emphasis: {
		                    shadowBlur: 10,
		                    shadowOffsetX: 0,
		                    shadowColor: 'rgba(0, 0, 0, 0.5)'
		                }
		            }
		        }
		    ],
		    color: ['rgb(194,53,49)','rgb(200,200,169)','rgb(97,160,168)','rgb(221,130,101)','rgb(145,199,174)']
		};
        
    myChart.setOption(option);
}
	</script> 
</body>
</html>





