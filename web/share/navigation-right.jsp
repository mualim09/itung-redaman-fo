<%-- 
    Document   : navigation-right
    Created on : Nov 23, 2018, 11:54:45 AM
    Author     : Lenovo
--%>

<%@page import="helper.MySession"%>
<%
    String Name = (String) session.getAttribute(MySession.NAME);
%>

<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="index.html">
            <img src="../assets/images/infoCentre_2.png" class="img-responsive" style="height: 33px; width: 132px;"/>
        </a>
    </div>
    <!-- /.navbar-header -->

    <ul class="nav navbar-top-links navbar-right">

        <!-- /.dropdown -->
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <i class="fa fa-user fa-fw"></i> <%=Name%> <i class="fa fa-caret-down"></i>
            </a>
            <ul class="dropdown-menu dropdown-messages">
                <li><a href="../akun_saya"><i class="fa fa-user fa-fw"></i> Akun Saya</a>
                </li>
                <li class="divider"></li>
                <li><a href="../welcome/logout.jsp"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                </li>
            </ul>
            <!-- /.dropdown-user -->
        </li>
        <!-- /.dropdown -->
    </ul>
    <!-- /.navbar-top-links -->

    <div class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">
            <ul class="nav" id="side-menu">
                <li>
                    <a href="../manage_user/"><i class="fa fa-users fa-fw"></i> Urus User</a>
                </li>
                <li>
                    <a href="../activity_log/"><i class="fa fa-book fa-fw"></i> Log Aktivitas</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-arrows-h fa-fw"></i> siFO <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li>
                            <a href="../sifo/">Utama</a>
                        </li>
                        <li>
                            <a href="../sifo/tampilan.jsp">Tampilan</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="../siPETA/"><i class="fa fa-map fa-fw"></i> siPETA</a>
                </li>
                <li>
                    <a href="../manage_bbm"><i class="fa fa-truck fa-fw"></i> Stok BBM</a>
                </li>
                <li>
                    <a href="../manage_cme/"><i class="fa fa-cogs fa-fw"></i> CME</a>
                </li>

                <!--                <li>
                                    <a href="forms.html"><i class="fa fa-edit fa-fw"></i> Forms</a>
                                </li>
                                <li>
                                    <a href="#"><i class="fa fa-wrench fa-fw"></i> UI Elements<span class="fa arrow"></span></a>
                                    <ul class="nav nav-second-level">
                                        <li>
                                            <a href="panels-wells.html">Panels and Wells</a>
                                        </li>
                                        <li>
                                            <a href="buttons.html">Buttons</a>
                                        </li>
                                        <li>
                                            <a href="notifications.html">Notifications</a>
                                        </li>
                                        <li>
                                            <a href="typography.html">Typography</a>
                                        </li>
                                        <li>
                                            <a href="icons.html"> Icons</a>
                                        </li>
                                        <li>
                                            <a href="grid.html">Grid</a>
                                        </li>
                                    </ul>
                                     /.nav-second-level 
                                </li>
                                <li>
                                    <a href="#"><i class="fa fa-sitemap fa-fw"></i> Multi-Level Dropdown<span class="fa arrow"></span></a>
                                    <ul class="nav nav-second-level">
                                        <li>
                                            <a href="#">Second Level Item</a>
                                        </li>
                                        <li>
                                            <a href="#">Second Level Item</a>
                                        </li>
                                        <li>
                                            <a href="#">Third Level <span class="fa arrow"></span></a>
                                            <ul class="nav nav-third-level">
                                                <li>
                                                    <a href="#">Third Level Item</a>
                                                </li>
                                                <li>
                                                    <a href="#">Third Level Item</a>
                                                </li>
                                                <li>
                                                    <a href="#">Third Level Item</a>
                                                </li>
                                                <li>
                                                    <a href="#">Third Level Item</a>
                                                </li>
                                            </ul>
                                             /.nav-third-level 
                                        </li>
                                    </ul>
                                     /.nav-second-level 
                                </li>-->
                <!--                <li class="active">
                                    <a href="#"><i class="fa fa-files-o fa-fw"></i> Sample Pages<span class="fa arrow"></span></a>
                                    <ul class="nav nav-second-level">
                                        <li>
                                            <a class="active" href="blank.html">Blank Page</a>
                                        </li>
                                        <li>
                                            <a href="login.html">Login Page</a>
                                        </li>
                                    </ul>
                                     /.nav-second-level 
                                </li>-->
            </ul>
        </div>
        <!-- /.sidebar-collapse -->
    </div>
    <!-- /.navbar-static-side -->
</nav>
