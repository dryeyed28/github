<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String root = request.getContextPath();
%>
<div id="wrapper">
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="sidebar-search">
                        <div class="input-group custom-search-form">
                            <input type="text" class="form-control" placeholder="Search...">
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                        </div>
                        <!-- /input-group -->
                    </li>
                    <li>
                        <a href="<%=root%>/pages/index.jsp"><i class="fa fa-dashboard fa-fw"></i> home</a>
                    </li>
                    <li>
                        <a href="<%=root%>/pages/member.jsp"><i class="fa fa-table fa-fw"></i>회원관리</a>
                    </li>
                    <li>
                        <a href="<%=root%>/pages/projectrequest.jsp"><i class="fa fa-table fa-fw"></i>프로젝트 신청관리</a>
                    </li>
                    <li>
                        <a href="<%=root%>/pages/projectrequestcontent.jsp"><i class="fa fa-edit fa-fw"></i>프로젝트 신청서</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-table fa-fw"></i> 커뮤니티 관리<span class="fa arrow"></span></a>
                        <!-- <a href="tables.html"><i class="fa fa-table fa-fw"></i> 커뮤니티 관리</a> -->
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="<%=root%>/boardMng/tables.jsp">게시판 관리</a>
                            </li>
                            <li>
                                <a href="#"> 게시 관리<span class="fa arrow"></span></a>
                                  <ul class="nav nav-third-level">
                             	  <li>
                                 	<a href="<%=root%>/boardMng/board1.jsp">공지사항</a>
                             	  </li>
                             	  <li>
                                 	<a href="<%=root%>/boardMng/board2.jsp">FAQ</a>
                             	  </li>
                            	  </ul>
                            </li>
                            <li>
                                <a href="<%=root%>/boardMng/spam.jsp">스팸 관리</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-table fa-fw"></i> 결제현황 관리<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="<%=root%>/payMng/totalpay.jsp">전체결제 관리</a>
                            </li>
                            <li>
                                <a href="<%=root%>/payMng/yeoljeongpay.jsp">열정결제 관리</a>
                            </li>
                            <li>
                                <a href="<%=root%>/payMng/profit.jsp">이익현황 관리</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> 매출현황<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="<%=root%>/pages/flot.html">Flot Charts</a>
                            </li>
                            <li>
                                <a href="<%=root%>/pages/morris.jsp">Morris Charts</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                </ul>
            </div>
            <!-- /.sidebar-collapse -->
        </div>
        <!-- /.navbar-static-side -->
</div>
<!-- /#wrapper -->
