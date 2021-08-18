<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tlds/jatools.tld" prefix="jatools" %>
<% request.setCharacterEncoding("UTF-8"); 
String viewer = request.getParameter("viewer");
String forward = "defaultviewer.jsp";
request.getRequestDispatcher("tools/"+forward).forward(request, response);
%>
