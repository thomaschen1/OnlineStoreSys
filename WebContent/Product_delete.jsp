<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.util.*,java.text.SimpleDateFormat,cn.thomaschen.service.ProductBean,cn.thomaschen.entity.Product"%>
		<%@ page import="cn.thomaschen.entity.Product,cn.thomaschen.entity.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
 <jsp:useBean id="productbean" class="cn.thomaschen.service.ProductBean" scope="page"/>
 <jsp:setProperty name="productbean" property="flag" value="delete"/>
 <%Product product=new Product();
 	product.setId(Integer.valueOf(request.getParameter("id")));
 	%>
 	<jsp:setProperty property="product" name="productbean" value="<%=product%>"/>
 	<%
 	productbean.updateData();
 	product.setId(0);
 	%>
 	<jsp:setProperty property="product" name="productbean" value="<%=product%>"/>
 	<%
 	List<Product> products=productbean.findData();
 	session.setAttribute("products", products);
 	%>
 	<jsp:forward page="store.jsp"/>
</body>
</html>