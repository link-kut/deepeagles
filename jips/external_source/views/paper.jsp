<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@include file="header.jsp"%>

<c:set var="p" value="${detail}"/>
<c:set var="acmAuthorsArray" value="${null}}"/>

<br/><br/>
<table class="CommonTable">
  <tr>
    <td>
      <div class="paperTitle">		<!--<div class="page-header papertitle">-->
        <h3>${p[0].title}</h3>
      </div>
      <br/>

      <c:set var="tempArray" value="${fn:replace(p[0].authors, ', and', ',')}"/> <!-- authors and 제거 -->
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

      <c:if test="${p[0].of == 0}">
        <b>Volume: ${p[0].volume}, No: ${p[0].number}, Page: ${p[0].page} ~ ${p[0].endpage}, Year: ${p[0].year}</b>
        <br/>
      </c:if>

      <c:if test="${p[0].of > 0}">
        <b>Online First Paper</b>
        <br/>
      </c:if>

      <img src="resources/images/doi_icon.png" style="vertical-align:middle;"> <span class="doifont">${p[0].doi}</span>

      <br/>

      <c:set var="keywordArray" value="${fn:split(p[0].keyword, ',')}"/>
      <c:set var="keywordLength" value="${fn:length(keywordArray)}"/>
      <c:forEach var="k" begin="0" end="${keywordLength - 1}">
        <c:if test="${k < keywordLength - 1}">
          <a class="Paperkeyword" href="summary?keyword=${keywordArray[k]}">${keywordArray[k]}</a>,
        </c:if>
        <c:if test="${k == keywordLength - 1}">
          <a class="Paperkeyword" href="summary?keyword=${keywordArray[k]}">${keywordArray[k]}</a><br/>
        </c:if>
      </c:forEach>

      Access Paper:
      <c:choose>
        <c:when test="${p[0].volume < 11}">
          <a href="/resources/${p[0].filesrc}" target="_blank"><img src="resources/images/pdficon.jpg" style="vertical-align:middle;" border="0"></a>
        </c:when>
        <c:otherwise>
          <a href="down.jsp?pn=${p[0].num}" target="_blank"><button type="button" class="btn btn-danger btn-xs">PDF</button></a>
          <a href="http://jips.jatsxml.org/Article/${p[0].volume}/${p[0].number}/${p[0].page}">
            <button type="button" class="btn btn-info btn-xs">Full Text</button></a>
          <a href="http://jips.jatsxml.org/PubReader/${p[0].volume}/${p[0].number}/${p[0].page}">
            <button type="button" class="btn btn-warning btn-xs">PubReader</button></a>
          <a href="http://jips.jatsxml.org/func/download.php?path=${p[0].epub}"><button type="button" class="btn btn-success btn-xs">ePub</button></a>
        </c:otherwise>
      </c:choose>
      <br/>

      <img src="resources/images/hr.jpg" width="840" alt=""/>
      <span>${p[0].paperabstract}</span>
      <br/><br/>
      <b>Article Statistics</b>
      <br/>
      <a class="Paperauthor" href="#" onclick="viewStyle(this);return false">Show / Hide Statistics</a>
      <br/>
      <DIV style='display:none'>
        <div style="font-size:small; text-align:left;">
          <br/>
          <b>Statistics (Cumulative Counts from March 1st, 2012)</b>
          <br/>
          Multiple requests among the same broswer session are counted as one view.
          <br/>
          If you mouse over a chart, a box will show the data point's value.
        </div>
        <table class="statistics" align="center">
          <tr>
            <td align="center">
              <div id="chart"></div>
              <form>
                <input class="button" id="prev" type="button" value="< " disabled="true"/>
                <input class="button" id="zoom" type="button" value="Zoom"/>
                <input class="button" id="next" type="button" value=" >" disabled="true"/>
              </form>
              <br/>
            </td>
          </tr>
        </table>
      </DIV>
      <br/>
    </td>
  </tr>
  <tr>
    <td>
      <b>Cite this article</b>
      <br/>
      <table class="citebox" align="center">
        <tr>
          <td align="left" style="text-align:justify">
            <b>IEEE Style</b>
            <br/>
            <c:choose>
              <c:when test="${p[0].of == 0}">
                <span>${p[0].authors}, "${p[0].title}," Journal of Information Processing Systems, vol. ${p[0].volume}, no. ${p[0].number}, pp. ${p[0].page}~${p[0].endpage}, ${p[0].year}.</span>
              </c:when>
              <c:otherwise>
                <span>${p[0].authors}, "${p[0].title}," Journal of Information Processing Systems.</span>
              </c:otherwise>
            </c:choose>
            <br/><br/>
            <b>ACM Style</b>
            <br/>
            <c:choose>
              <c:when test="${p[0].of == 0}">
                <span>${p[0].authors}, "${p[0].title}," Journal of Information Processing Systems.</span>
              </c:when>
              <c:otherwise>
                <span></span>
              </c:otherwise>
            </c:choose>
            <br/>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>



<%@include file="footer.jsp"%>