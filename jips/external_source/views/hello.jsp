<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>

        Hello, ${paper.num == 1}<br/>

        <c:if test="${paper.num == 1}">
                ${paper.title}
        </c:if>

<%@include file="footer.jsp"%>