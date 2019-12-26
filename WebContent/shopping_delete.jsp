<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.util.*,java.text.SimpleDateFormat,cn.thomaschen.service.ProductBean,cn.thomaschen.entity.Product"%>
<%@ page import="cn.thomaschen.entity.Product,cn.thomaschen.entity.User,java.lang.*,cn.thomaschen.entity.Shoppingcart"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="shoppingcarbean" class="cn.thomaschen.service.ShoppingcarBean" scope="page"/>
<jsp:setProperty property="flag" name="shoppingcarbean" value="delete"/>
<%
Shoppingcart shoppingcart=new Shoppingcart ();
shoppingcart.setId(Integer.valueOf(request.getParameter("id")));
%>
<jsp:setProperty property="shoppingcart" name="shoppingcarbean" value="<%=shoppingcart %>"/>
<%
shoppingcarbean.updateData();
shoppingcart.setId(0);
%>
<jsp:setProperty property="shoppingcart" name="shoppingcarbean" value="<%=shoppingcart %>"/>
<%
List<Shoppingcart> shoppingcarts=shoppingcarbean.findData();
session.setAttribute("shoppingcarts", shoppingcarts);
%>
<jsp:forward page="shopping_cart.jsp"/>
</body>
</html>