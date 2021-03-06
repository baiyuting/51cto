<%--
  Created by IntelliJ IDEA.
  User: baiyuting
  Date: 2018/2/28
  Time: 18:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <tr>
        <td>标题</td>
        <td>发布时间</td>
        <td>摘要</td>
        <td>内容</td>
        <td>审核状态</td>
        <td>审核日期</td>
        <td>审核用户id</td>
        <td>审核失败原因</td>
    </tr>
    <c:forEach items="${list}" var="item">
        <tr>
            <td>${item.title}</td>
            <td>${item.publishTime}</td>
            <td>${item.summary}</td>
            <td>${item.content}</td>
            <td>${item.auditStatus}</td>
            <td>${item.auditDate}</td>
            <td>${item.auditUserId}</td>
            <td>${item.auditFailReason}</td>
        </tr>
    </c:forEach>
</table>
<c:if test="${currentPage-1 > 0}">
    <a href="/list?currentPage=${currentPage-1}&lineSize=${lineSize}">上一页</a>
</c:if>
<c:if test="${currentPage*lineSize+1<=count}">
    <a href="/list?currentPage=${currentPage+1}&lineSize=${lineSize}">下一页</a>
</c:if>
</body>
</html>
