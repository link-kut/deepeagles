<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType = "text/html; charset=utf-8" %>
<%@include file="header.jsp"%>

</br></br>
<table class="CommonTable">
  <tr>
    <td>
      <img src="resources/images/hr.jpg" width="840" alt=""/><br/>

      <c:forEach var="p" items="${paper}">
        <c:if test="${p.of <= 0}">
          <p id="newGreen" align="right">
            <span id="smalltitle"><b>Journal of Information Processing Systems, Vol. ${p.volume}, No. ${p.number}, ${p.year}</b></span></br>
          </p>
        </c:if>

        <c:if test="${p.of > 0}">
          <p id="newGreen" align="right">
            <span id="smalltitle"><b>Journal of Information Processing Systems, Online First Paper</b></span></br>
          </p>
        </c:if>

        <!--논문 제목-->
        <a class="Recent" href="paper?pn=${p.num}"><b>${p.title}</b></a><br/>

        <!--논문 작가-->
        <c:set var="tempArray" value="${fn:replace(p.authors, ', and', ',')}"/> <!-- authors and 제거 -->
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

        <img src="resources/images/doi_icon.png" style="vertical-align:middle;"> <span class="doifont">${p.doi}</span>

        <br/>

        Keywords:
        <c:set var="keywordArray" value="${fn:split(p.keyword, ',')}"/>
        <c:set var="keywordLength" value="${fn:length(keywordArray)}"/>
        <c:forEach var="k" begin="0" end="${keywordLength - 1}">
          <c:if test="${k < keywordLength - 1}">
            <a class="Paperkeyword" href="summary?keyword=${keywordArray[k]}">${keywordArray[k]}</a>,
          </c:if>
          <c:if test="${k == keywordLength - 1}">
            <a class="Paperkeyword" href="summary?keyword=${keywordArray[k]}">${keywordArray[k]}</a><br/>
          </c:if>
        </c:forEach>

        <!-- show/Hide Abstract 수정 필요-->
        <a class="Paperauthor" href="#" onclick="viewStyle(this, 'latest.jsp?pn=number');return false">
          Show / Hide Abstract
        </a>
        <DIV style='display:none'>
          <table class="MiniAbstract" align="center">
            <tr>
              <td align="left" style="text-align:justify">
                <span>${l.paperabstract}</span>
              </td>
            </tr>
          </table>
        </DIV>
        <br/>

        <img src="resources/images/hr.jpg" width="840" alt=""/>

      </c:forEach>



    </td>
  </tr>
</table>




<%@include file="footer.jsp"%>