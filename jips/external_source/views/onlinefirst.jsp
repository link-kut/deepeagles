<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>

<c:set var="ofArray" value="${ofpaper}"/>
<c:set var="ofLength" value="${fn:length(ofArray)}"/>
<c:set var="isSameDate" value="${false}"/>

<br/><br/>
<table class="CommonTable">
  <tr>
    <td>
      <span id="title">ONLINE FIRST</span><br/><br/>
    </td>
  </tr>
  <tr>
    <td style="text-align:justify"><span>JIPS provides "Online First" service, by which forthcoming papers are published online before they are scheduled to appear in print. It allows final revision papers (completed papers in queue for assignment to an upcoming issue) to be hosted online prior to their inclusion in a final print and online journal issue. This "Online First" service provides clear benefits to all authors and other researchers who are connected via the JIPS online system. The feature allows them to access the very latest papers in the field. Authors also benefit from greatly reduced lead times between submission and publication of papers. An author's research will therefore reach its audience more quickly, enabling a paper to receive greater usage and exposure, including earlier citation opportunities by related work.</span><br/><br/><br/></td>
  </tr>

  <tr>
    <td valign="top">
      <c:forEach var="i" begin="0" end="${ofLength-1}">
        <c:set var="afterDate" value="${afterDate}"/>
        <c:set var="beforeDate" value="${beforeDate}"/>

        <c:set var="currentDate" value="${ofArray[i].uploaddate}"/>
        <c:if test="${i != ofLength-1}">
          <c:set var="afterDate" value="${ofArray[i+1].uploaddate}"/>
        </c:if>

        <c:if test="${i > 0}">
          <c:set var="beforeDate" value="${ofArray[i-1].uploaddate}"/>
        </c:if>

        <c:choose>
          <c:when test="${currentDate.equals(afterDate) and i != ofLength - 1}">
            <c:set var="isSameDate" value="${true}"/>
          </c:when>
          <c:otherwise>
            <c:set var="isSameDate" value="${false}"/>
          </c:otherwise>
        </c:choose>

        <c:if test="${!(currentDate.equals(beforeDate))}">
          <b>${format.format(ofArray[i].uploaddate)}</b><br/><br/>
        </c:if>


        <a class="Recent" href="paper?pn=${ofArray[i].num}"><b>${ofArray[i].title}</b></a><br/>

        <c:set var="tempArray" value="${fn:replace(ofArray[i].authors, ', and', ',')}"/> <!-- authors and 제거 -->
        <c:set var="tempArray" value="${fn:replace(tempArray, ' and ', ',')}"/> <!-- authors and 제거 -->
        <c:set var="authorsArray" value="${fn:split(tempArray, ',')}"/> <!-- authors 이름을 분리 -->
        <c:set var="authorsLength" value="${fn:length(authorsArray)}"/>

        <c:if test="${authorsLength < 2}">
          <c:forEach var="a" items="${authorsArray}">
            <a class="Paperauthor" href="summary?author=${a}">${a}</a>
          </c:forEach>
        </c:if>

        <c:if test="${authorsLength == 2}">
          <c:forEach var="a" begin="0" end="${authorsLength-1}">
            <c:if test="${a == 0}">
              <a class="Paperauthor" href="summary?author=${authorsArray[a]}">${authorsArray[a]}</a> and
            </c:if>
            <c:if test="${a == 1}">
              <a class="Paperauthor" href="summary?author=${authorsArray[a]}">${authorsArray[a]}</a>
            </c:if>
          </c:forEach>
        </c:if>

        <c:if test="${authorsLength > 2}">
          <c:forEach var="a" begin="0" end="${authorsLength-1}">
            <c:if test="${a < authorsLength - 2}">
              <a class="Paperauthor" href="summary?author=${authorsArray[a]}">${authorsArray[a]}</a>,
            </c:if>
            <c:if test="${a == authorsLength - 2}">
              <a class="Paperauthor" href="summary?author=${authorsArray[a]}">${authorsArray[a]}</a> and
            </c:if>
            <c:if test="${a == authorsLength - 1}">
              <a class="Paperauthor" href="summary?author=${authorsArray[a]}">${authorsArray[a]}</a>
            </c:if>
          </c:forEach>
        </c:if>

        <br/>
        <img src="resources/images/doi_icon.png" style="vertical-align:middle;"> <span class="doifont">${ofArray[i].doi}</span>
        <br/>

        <a class="Paperauthor" href="/" onclick="viewStyle(this, 'latest.jsp?pn=number');return false">
          Show / Hide Abstract
        </a>
        <DIV style='display:none'>
          <table class="MiniAbstract" align="center">
            <tr>
              <td align="left" style="text-align:justify">
                <span>${ofArray[i].paperabstract}</span>
              </td>
            </tr>
          </table>
        </DIV>

        <c:choose>
          <c:when test="${isSameDate}">
            <br/><br/>
          </c:when>
          <c:otherwise>
            <img src="resources/images/hr.jpg" vspace="15" alt=""/>
          </c:otherwise>
        </c:choose>

      </c:forEach>
    </td>
  </tr>

  <tr>
    <td colspan="2">
      <br/><br/>
      <span id="title">CONTACT INFORMATION</span>
      <br/>
    </td>
  </tr>
  <tr>
    <td colspan="2" style="text-align:justify">
      <span>JIPS Secretary: Joo-yeon Lee (<a class="Paperauthor" href="mailto:joo@kips.or.kr">joo@kips.or.kr</a>)</span>
      <br/>
    </td>
  </tr>
</table>





<%@include file="footer.jsp"%>