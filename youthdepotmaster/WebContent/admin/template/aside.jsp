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
                        <a href="<%=root%>/admin/pages/index.jsp"><i class="fa fa-dashboard fa-fw"></i> home</a>
                    </li>
                    <li>
                        <a href="<%=root%>/admin/pages/member.jsp"><i class="fa fa-member fa-fw"></i>회원관리</a>
                    </li>
                    <li>
                        <a href="<%=root%>/admin/pages/projectrequest.jsp"><i class="fa fa-table2 fa-fw"></i>프로젝트 신청관리</a>
                    </li>
                    <li>
                        <a href="<%=root%>/admin/pages/projectrequestcontent.jsp"><i class="fa fa-edit fa-fw"></i>프로젝트 신청서</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-table fa-fw"></i> 커뮤니티 관리<span class="fa arrow"></span></a>
                        <!-- <a href="tables.html"><i class="fa fa-table fa-fw"></i> 커뮤니티 관리</a> -->
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="<%=root%>/admin/boardMng/tables.jsp">게시판 관리</a>
                            </li>
                            <li>
                                <a href="#"> 게시 관리<span class="fa arrow"></span></a>
                                  <ul class="nav nav-third-level">
                             	  <li>
                                 	<a href="<%=root%>/admin/boardMng/board1.jsp">공지사항</a>
                             	  </li>
                             	  <li>
                                 	<a href="<%=root%>/admin/boardMng/board2.jsp">FAQ</a>
                             	  </li>
                            	  </ul>
                            </li>
                            <li>
                                <a href="<%=root%>/admin/boardMng/spam.jsp">스팸 관리</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-table3 fa-fw"></i> 결제현황 관리<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="<%=root%>/admin/payMng/totalpay.jsp">전체결제 관리</a>
                            </li>
                            <li>
                                <a href="<%=root%>/admin/payMng/yeoljeongpay.jsp">열정결제 관리</a>
                            </li>
                            <li>
                                <a href="<%=root%>/admin/payMng/profit.jsp">이익현황 관리</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="<%=root%>/admin/pages/morris.jsp"><i class="fa fa-table4 fa-fw"></i>통계</a>
                    </li>
                </ul>
            </div>
            <!-- /.sidebar-collapse -->
        </div>
        <!-- /.navbar-static-side -->
</div>
<!-- /#wrapper -->
