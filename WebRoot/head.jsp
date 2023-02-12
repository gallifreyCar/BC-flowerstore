<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="header">
    <div>
        <a href="./">
            <span class="title">在线花店</span>
            <c:if test="${user!=null}">
                欢迎 ${user.xingming }, <a href="passwordupdate.jsp" class="settings">修改密码</a> <a
                    href="indexServlet/loginout"
                    class="logout">退出</a>
            </c:if>
        </a>
    </div>
    <div class="submenu">
        <ul>
            <c:if test="${user==null}">
                <li><a href="register.jsp">用户注册</a></li>
                <li><a href="login.jsp">用户登录</a></li>
                <li><a href="manage/login.jsp">管理后台</a>
                </li>
            </c:if>
            <c:if test="${user!=null}">
                <li><a href="indexServlet/gouwuchelist">我的购物车</a></li>
                <li><a href="indexServlet/orderlist">我的订单</a></li>
                <li><a href="indexServlet/userupdate">个人信息</a></li>
                <li><a href="indexServlet/loginout">用户退出</a></li>
            </c:if>
        </ul>
    </div>
</div>