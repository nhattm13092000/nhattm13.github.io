<%-- 
    Document   : footer
    Created on : Jun 2, 2021, 11:42:38 AM
    Author     : nhatbeo
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:useBean id="dao" scope="page" class="dal.DAO" />
    </head>
    <body>
        <div class="footer">
            <div class="footer-page-counter">
                <c:forEach var="i" items="${dao.introduction.formatViewPage()}">
                    <span class="footer-page-counter-item">${i}</span>
                </c:forEach>
            </div>
        </div>
    </body>
</html>
