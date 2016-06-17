<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <%@ page import="model.Type" %>
  <%@ page import="model.Wood" %>
  <%@ page import="model.Builder" %>
  <%@ page import="model.Guitar" %>
   <%@ page import="model.GuitarSpec" %>
   <%@ page import="util_connection.DbConn" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE >
<html >

<head>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>吉他销售系统</title>
   <!-- Bootstrap Styles-->
    <link href="css/bootstrap.css" rel="stylesheet" />
     <!-- FontAwesome Styles-->
    <link href="css/font-awesome.css" rel="stylesheet" />
     <!-- Morris Chart Styles-->
   
        <!-- Custom Styles-->
    <link href="css/custom-styles.css" rel="stylesheet" />
     <!-- Google Fonts-->
   <link href='http://fonts.useso.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
     <!-- TABLE STYLES-->
</head>

<body>
    <div id="wrapper">
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">guitar销售系统</a>
            </div>

                                <!-- /.顶部 -->
            
            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                </li>
                
                
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    </li>
                
                
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                </li>
                
                
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> 个人用户</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> 登录</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="#"><i class="fa fa-sign-out fa-fw"></i> 退出登录</a>
                        </li>
                    </ul>
                </li>
                <!-- /.dropdown -->
            </ul>
        </nav>
        
        
        <!--目录  -->
       
       
       
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">

                    <li>
                        <a  href="index.html"><i class="fa fa-dashboard"></i> 首页</a>
                    </li>
                    <li>
                        <a class="fa fa-dashboard" href="search.jsp"> 用户查询</a>
                    </li>
				
                     <li>
                        <a class="active-menu" href="add.jsp"><i class="fa fa-desktop"></i> 增加吉他</a>
                    </li>

                  
                   
                </ul>

            </div>

        </nav>
       
       
       
       
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
			 <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">
                            南湖吉他 <small>添加吉他</small>
                        </h1>
                    </div>
                </div> 
                 <!-- /. ROW  -->
              <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            吉他详情
                        </div>
                        <div class="panel-body">
                            <div class="row">
                             
                            
                                <!-- /.col-lg-6 (nested) -->
                                
                                <div class="col-lg-6">
                                    <form role="form">
                                    <div class="form-group input-group">
                                            <span class="input-group-addon">N</span>
                                            <input type="text" class="form-control" placeholder="编号">
                                        </div>
                                      <div class="form-group input-group">
                                            <span class="input-group-addon">¥</span>
                                            <input type="text" class="form-control" placeholder="价格">
                                        </div>
                                          <div class="form-group input-group">
                                            <span class="input-group-addon">＠</span>
                                            <input type="text" class="form-control" placeholder="制造商">
                                        </div>
                                          <div class="form-group input-group">
                                            <span class="input-group-addon">*</span>
                                            <input type="text" class="form-control" placeholder="型号">
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>材料 </label>
                                            <input class="form-control" placeholder="背板木">
                                        </div>
                                         <div class="form-group">
                                            <input class="form-control" placeholder="顶端木">
                                        </div>
                                        
                                      
                                        <div class="form-group">
                                            <label>添加图片</label>
                                            <input type="file">
                                        </div>
                                       
                                      
                                        <div class="form-group">
                                            <label>类型</label>
                                            <select class="form-control">
                                                <option>民谣吉他</option>
                                                <option>电音吉他</option>
                                            </select>
                                        </div>
                                       
                                        <button type="submit" class="btn btn-default">提交</button>
                                        <button type="reset" class="btn btn-default">重置</button>
                                    </form>
                                </div>
                               
                              
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
			<footer><p>Copyright &copy; 2016.</p></footer>
			</div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
     <!-- /. WRAPPER  -->
    <!-- JS Scripts-->
    <!-- jQuery Js -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- Bootstrap Js -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- Metis Menu Js -->
    <script src="assets/js/jquery.metisMenu.js"></script>
      <!-- Custom Js -->
    <script src="assets/js/custom-scripts.js"></script>
    
   
</body>
</html>
