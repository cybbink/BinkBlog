<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2021/3/30
  Time: 21:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
  <title>BinkBlog</title>
</head>
<body>
<c:forEach var="blog" items="${requestScope.get('blogList')}">
  <p>${blog.getBid()}</p>
  <p>${blog.getTitle()}</p>
  <p>${blog.getAuthor()}</p>
  <fmt:formatDate value="${blog.getPubDate()}" pattern="yyyy-MM-dd HH:mm:ss"/>
  <p>${blog.getPubDate()}</p>
</c:forEach>
</body>
</html>