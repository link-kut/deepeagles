<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>

<c:set var="yearArray" value="${years}" />
<c:set var="volumeArray" value="${volumes}"/>
<c:set var="yearLength" value="${fn:length(yearArray)}"/>
<c:if test="${yearLength % 2 == 1}">
    <c:set var="yearLength" value="${yearLength + 1}"/>
</c:if>
<c:set var="rowCount" value="${yearLength/2}"/>
<c:set var="numberArray" value="${latestNum}"/>

<br/><br/>
<table class="CommonTable">
    <tr>
        <td>
            <span id="title">DIGITAL LIBRARY</span> (JIPS provides the free-download service)
            <br/>
        </td>
    </tr>
    <tr>
        <td>

            <table class="CommonTable">
                <c:set var="tdCount" value="0"/>
                <c:forEach var="i" begin="1" end="${rowCount}">
                    <tr valign="top">
                        <td>
                            <ul>
                                <c:if test="${yearArray[tdCount].year != null}">
                                    <li><span style="font-size:16pt">${yearArray[tdCount].year}</span>
                                </c:if>
                                    <c:choose>
                                    <c:when test="${yearArray[tdCount].year >= 2015}">
                                    <span class="bg-info" style="margin-top: -7px">&nbsp;XML Service&nbsp;</span>
                                    </c:when>
                                    </c:choose>

                                    <c:choose>
                                    <c:when test="${yearArray[tdCount].year == 2005}">
                                    <ul>
                                        <li><a href="digital.lib?y=${yearArray[tdCount].year}&v=1&n=1" Target="_self" class="DL_no"> Vol.1, No.1 (December)</a></li>
                                    </ul>
                                    </c:when>

                                    <c:when test="${yearArray[tdCount].year == 2006}">
                                    <ul>
                                        <li><a href="digital.lib?y=${yearArray[tdCount].year}&v=2&n=3" Target="_self" class="DL_no">Vol.2, No.3 (December)</a></li>
                                        <li><a href="digital.lib?y=${yearArray[tdCount].year}&v=2&n=2" Target="_self" class="DL_no">Vol.2, No.2 (September)</a></li>
                                        <li><a href="digital.lib?y=${yearArray[tdCount].year}&v=2&n=1" Target="_self" class="DL_no">Vol.2, No.1 (June)</a></li>
                                    </ul>
                                    </c:when>

                                    <c:when test="${yearArray[tdCount].year == 2007}">
                                    <ul>
                                        <li><a href="digital.lib?y=${yearArray[tdCount].year}&v=3&n=2" Target="_self" class="DL_no">Vol.3, No.2 (December)</a></li>
                                        <li><a href="digital.lib?y=${yearArray[tdCount].year}&v=3&n=1" Target="_self" class="DL_no">Vol.3, No.1 (September)</a></li>
                                    </ul>
                                    </c:when>
                                    <c:otherwise>
                                    <ul>
                                        <c:if test="${yearArray[tdCount].year != null}">
                                            <c:forEach var="j" begin="0" end="${numberArray[tdCount].number-1}">
                                                <li><a href="digital.lib?y=${yearArray[tdCount].year}&v=${volumeArray[tdCount].volume}&n=${numberArray[tdCount].number-j}" Target="_self" class="DL_no">Vol.${volumeArray[tdCount].volume}, No.${numberArray[tdCount].number-j} (${months[numberArray[tdCount].number-1-j]})</a></li>
                                            </c:forEach>
                                        </c:if>
                                    </ul>
                                    </c:otherwise>
                                    </c:choose>
                        </td>
                        <c:if test="${tdCount < yearLength - 1}">
                            <c:set var="tdCount" value="${tdCount + 1}"/>
                        </c:if>
                        <c:choose>
                            <c:when test="${tdCount == yearLength-1 and (yearLength % 2 == 1)}">
                                <td></td>
                            </c:when>

                            <c:otherwise>
                                <td>
                                    <ul>
                                        <c:if test="${yearArray[tdCount].year != null}">
                                            <li><span style="font-size:16pt">${yearArray[tdCount].year}</span>
                                        </c:if>
                                            <c:choose>
                                            <c:when test="${yearArray[tdCount].year >= 2015}">
                                            <span class="bg-info" style="margin-top: -7px">&nbsp;XML Service&nbsp;</span>
                                            </c:when>
                                            </c:choose>
                                        <c:choose>
                                        <c:when test="${yearArray[tdCount].year == 2005}">
                                        <ul>
                                            <li><a href="digital.lib?y=${yearArray[tdCount].year}&v=1&n=1" Target="_self" class="DL_no"> Vol.1, No.1 (December)</a></li>
                                        </ul>
                                        </c:when>

                                        <c:when test="${yearArray[tdCount].year == 2006}">
                                        <ul>
                                            <li><a href="digital.lib?y=${yearArray[tdCount].year}&v=2&n=3" Target="_self" class="DL_no">Vol.2, No.3 (December)</a></li>
                                            <li><a href="digital.lib?y=${yearArray[tdCount].year}&v=2&n=2" Target="_self" class="DL_no">Vol.2, No.2 (September)</a></li>
                                            <li><a href="digital.lib?y=${yearArray[tdCount].year}&v=2&n=1" Target="_self" class="DL_no">Vol.2, No.1 (June)</a></li>
                                        </ul>
                                        </c:when>

                                        <c:when test="${yearArray[tdCount].year == 2007}">
                                        <ul>
                                            <li><a href="digital.lib?y=${yearArray[tdCount].year}&v=3&n=2" Target="_self" class="DL_no">Vol.3, No.2 (December)</a></li>
                                            <li><a href="digital.lib?y=${yearArray[tdCount].year}&v=3&n=1" Target="_self" class="DL_no">Vol.3, No.1 (September)</a></li>
                                        </ul>
                                        </c:when>
                                        <c:otherwise>
                                        <ul>
                                            <c:if test="${yearArray[tdCount].year != null}">
                                                <c:forEach var="j" begin="0" end="${numberArray[tdCount].number-1}">
                                                    <li><a href="digital.lib?y=${yearArray[tdCount].year}&v=${volumeArray[tdCount].volume}&n=${numberArray[tdCount].number-j}" Target="_self" class="DL_no">Vol.${volumeArray[tdCount].volume}, No.${numberArray[tdCount].number-j} (${months[numberArray[tdCount].number-1-j]})</a></li>
                                                </c:forEach>
                                            </c:if>
                                        </ul>
                                        </c:otherwise>
                                        </c:choose>
                                </td>
                            </c:otherwise>
                        </c:choose>
                        <c:if test="${tdCount < yearLength-1}">
                            <c:set var="tdCount" value="${tdCount + 1}"/>
                        </c:if>
                    </tr>
                </c:forEach>
            </table>
        </td>
    </tr>
</table>

<%@include file="footer.jsp"%>