<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2021/3/30
  Time: 21:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>BinkBlog</title>
</head>
<body>
<c:forEach var="blog" items="${requestScope.get('blogList')}">
  <p>blog.bid</p>
  <p>blog.title</p>
  <p>blog.author</p>
  <p>blog.pub_date</p>
</c:forEach>
</body>
</html>