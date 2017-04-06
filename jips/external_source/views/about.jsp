<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType = "text/html; charset=utf-8" %>
<%@include file="header.jsp"%>
<c:set var="yearArray" value="${years}" />
<c:set var="yearLength" value="${fn:length(yearArray)}"/>
<c:set var="volumeArray" value="${volumes}"/>
<c:set var="featureArray" value="${features}"/>
<c:set var="featureLength" value="${fn:length(featureArray)}"/>
<c:set var="latestArray" value="${latest}"/>
<c:set var="latestLength" value="${fn:length(latestArray)}"/>
<br/><br/>
<table class="CommonTable">
  <tr>
    <td colspna="2">
      <div class="alert alert-success">
        <i class="fa fa-bullhorn"></i> In our JIPS digital library, you can find 1) Full Text (XML), 2) Pub Reader Text (XML),
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;and 3) ePub file for each manuscript published since 2015.
      </div>
    </td>
  </tr>
  <tr>
    <td colspan="2">
      <span id="strong">From submission to final decision: less than 6 months !</span>
    </td>
  </tr>

  <tr>
    <td style="width:75%;">
      <span id="title">JIPS OVERVIEW</span><br/><br/>
    </td>
    <td align="center" valign="top" rowspan="4">
      <table class="aboutTable">
        <tr>
          <td align="center">
            <span id="title">PUBLICATIONS</span><br/><br/>

        <c:forEach var="i" begin="0" end="${yearLength-1}">
          <c:choose>
          <c:when test="${yearArray[i].year == 2005}">
            <img src="resources/images/index.png" width="5" height="5" style="vertical-align:middle;" alt=""/><a class="Paperkeyword" href="volume?v=${volumeArray[i].volume}&n=1">&nbsp;Vol. ${volumeArray[i].volume} (${yearArray[i].year})</a><br/>
          </c:when>
          <c:when test="${yearArray[i].year == 2006}">
            <img src="resources/images/index.png" width="5" height="5" style="vertical-align:middle;" alt=""/><a class="Paperkeyword" href="volume?v=${volumeArray[i].volume}&n=3">&nbsp;Vol. ${volumeArray[i].volume} (${yearArray[i].year})</a><br/>
          </c:when>
          <c:when test="${yearArray[i].year == 2007}">
            <img src="resources/images/index.png" width="5" height="5" style="vertical-align:middle;" alt=""/><a class="Paperkeyword" href="volume?v=${volumeArray[i].volume}&n=2">&nbsp;Vol. ${volumeArray[i].volume} (${yearArray[i].year})</a><br/>
          </c:when>
          <c:otherwise>
            <img src="resources/images/index.png" width="5" height="5" style="vertical-align:middle;" alt=""/><a class="Paperkeyword" href="volume?v=${volumeArray[i].volume}&n=${volumeArray[i].number}">&nbsp;Vol. ${volumeArray[i].volume} (${yearArray[i].year})</a><br/>
          </c:otherwise>
          </c:choose>
        </c:forEach>

            <br/><br/><br/>
            <span id="title">JOURNAL COVER</span>
            <br/><br/>
            <a href="javascript:PopUp('../resources/images/JIPS_engpaper.jpg');"><img src="resources/images/JIPS_engpaper_thumb.jpg" width="130" alt="Journal Cover"/></a>
            <br/><br/><br/>
            <span id="title">NOTICE</span>
            <br/><br/>
            <span id="NRF">All publications of JIPS are indexed in SCOPUS, DOI, EI COMPENDEX, DBLP, EBSCO, Google and Google scholar.</span>
            <br/><br/>
            <img src="resources/images/scopus_logo.png" width="130" alt="SCOPUS"/>
            <br/><br/>
            <img src="resources/images/doi.jpg" alt="doi"/>
            <br/><br/>
            <img src="resources/images/dblp.jpg" width="130" alt="dblp"/>
            <br/><br/>
            <img src="resources/images/ei_compendex.jpeg" width="130" alt="EI_COMPENDEX"/>
            <br/><br/>
            <img src="resources/images/ebsco.png" width="130" alt="EBSCO"/>
            <br/><br/>
            <img src="resources/images/google.jpg" width="130" alt="Google"/>
            <br/><br/>
            <a href="http://crossref.org" target="_blank"><img src="resources/images/crossref.jpg" width="130" alt="Google"/></a>
            <br/><br/>
            <a href="http://www.crossref.org/crosscheck/index.html" target="_blank"><img src="resources/images/crosscheck_it_trans.jpg" width="130" alt="crosscheck_it_trans"/></a>
            <br/><br/>
            <img src="resources/images/nrf.png" width="85" alt="NRF"/>
            <br/><br/>
            <span id="NRF">JIPS is also selected as the Journal for Accreditation by NRF (National Research Foundation of Korea).</span>
          </td>
        </tr>
      </table>
    </td>
  </tr>

  <tr>
    <td style="text-align:justify"><span>The <b>Journal of Information Processing Systems (ISSN: 1976-913X(Print), ISSN: 2092-805X(Online))</b>
    is the official international journal of the Korea Information Processing Society. As information processing systems are progressing at a rapid pace,
    the Korea Information Processing Society is committed to providing researchers and other professionals with the academic information and resources
    they need to keep abreast with ongoing developments. The JIPS aims to be a premier source that enables researchers and professionals all over the world to promote,
    share, and discuss all major research issues and developments in the field of information processing systems and other related fields.</span>
      <br/><br/>
    </td>
  </tr>

  <tr>
    <td>

      <span id="title">FEATURED PAPERS</span>
      <img src="resources/images/hr.jpg" width="630" alt=""/>

      <c:forEach var="i" begin="0" end="${featureLength-1}">
        <style type="text/css">
          .myoverflow { overflow:hidden;text-overflow:ellipsis; }
        </style>
        <table width=630 style="table-layout:fixed;">
          <tr >
            <td style="line-height:23px;" class=myoverflow nowrap>
              <a class="Recent" href="paper?pn=${featureArray[i].num}"><b>${featureArray[i].title}</b></a>
            </td><br/>
          </tr>

          <tr>
            <td style="line-height:13px;" class=myoverflow nowrap>
              <c:set var="tempArray" value="${fn:replace(featureArray[i].authors, ', and', ',')}"/> <!-- authors and 제거 -->
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

              <span class="doifont"> <b> Vol. ${featureArray[i].volume}, No.${featureArray[i].number}, ${featureArray[i].year}</font></b></span>
            </td>
          </tr>
          <tr ><td style="line-height:2px;"></td></tr>
        </table>

      </c:forEach>

      <br/><br/>
      <span id="title">LATEST PUBLICATIONS</span>
      <img src="resources/images/hr.jpg" width="630" alt=""/>
      <br/>
    </td>
  </tr>

  <tr>
    <td valign="top">
      <p style="color:#204C00" align="left">
        <b>Journal of Information Processing Systems, Vol. ${latestArray[0].volume}, No.${latestArray[0].number}, ${latestArray[0].year}</b><br/>
      </p>

      <c:forEach var="l" items="${latestArray}">
        <a class="Recent" href="paper?pn=${l.num}"><b>${l.title}</b></a><br/>

        <c:set var="tempArray" value="${fn:replace(l.authors, ', and', ',')}"/> <!-- authors and 제거 -->
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
        Page: ${l.page} ~ ${l.endpage}<br/>
        <img src="resources/images/doi_icon.png" style="vertical-align:middle;"> <span class="doifont">${l.doi}</span>

        <c:if test="${l.year >= 11}">
          <br/>
          <a class="Recent" href="paper?pn=${l.num}"><button type="button" class="btn btn-primary btn-xs">Details</button></a>
          <!-- <button type="button" class="btn btn-danger btn-xs">PDF</button> -->
          <a href="http://jips.jatsxml.org/Article/${l.volume}/${l.number}/${l.page}"><button type="button" class="btn btn-info btn-xs">Full Text</button></a>
          <a href="http://jips.jatsxml.org/PubReader/${l.volume}/${l.number}/${l.page}"><button type="button" class="btn btn-warning btn-xs">PubReader</button></a>
          <a href="http://jips.jatsxml.org/func/download.php?path=${l.epub}"><button type="button" class="btn btn-success btn-xs">ePub</button></a>
        </c:if>

        <!-- show/Hide Abstract 수정 필요-->
        <br/>
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

        <img src="resources/images/hr.jpg" width="630" alt=""/>
      </c:forEach>
    </td>
  </tr>

  <tr>
    <td colspan="2">
      <br/><br/>
      <span id="title">OPEN ACCESS</span>
      <br/><br/>
    </td>
  </tr>
  <tr>
    <td colspan="2" style="text-align:justify">
  	  <span>Since 2005, all papers published in the JIPS are subjected to a peer review and upon acceptance are immediately made
  	  permanently available free of charge for everyone worldwide to read and download from the journal’s homepage (http://www.jips-k.org)
  	  without any subscription fee or personal registration. This is an Open Access article distributed under the terms of the Creative Commons Attribution Non-Commercial License (<a href="http://creativecommons.org/licenses/by-nc/3.0/" target="_blank" >http://creativecommons.org/licenses/by-nc/3.0/</a>) which permits unrestricted non-commercial use, distribution, and reproduction in any medium, provided the original work is properly cited.
	  <br/><br/>The KIPS waives paper processing charges for submissions from international authors as well as society members. This waiver policy supports
 	  and encourages the publication of quality papers, making the journal an international forum for the exchange of different ideas and experiences.</span>
      <br/>
    </td>
  </tr>

  <tr>
    <td colspan="2">
      <br/><br/>
      <span id="title">PUBLICATION ETHICS</span>
      <br/><br/>
    </td>
  </tr>
  <tr>
    <td colspan="2" style="text-align:justify">
  	  <span>With regard to ethical standards, the JIPS takes plagiarism very seriously and thoroughly checks all articles.
  	  The JIPS defines research ethics as securing objectivity and accuracy in the execution of research and the conclusion of results without any unintentional errors resulting from negligence or incorrect knowledge, etc.
  	  and without any intentional misconduct such as falsification, plagiarism, etc. When an author submits a paper to the JIPS online submission and peer-review system,
  	  he/she should also upload the separate file "author check list" which contains a statement that all his/her research has been performed in accordance with ethical standards.
	  <br/><br/>Among the JIPS editorial board members, there are four associate manuscript editors who support the JIPS by dealing with any ethical problems associated with the publication process
	  and give advice on how to handle cases of suspected research and publication misconduct. When the JIPS managing editor looks over submitted papers and checks that they are suitable for further processing,
	  the managing editor also routes them to the CrossCheck service provided by iTenticate. Based on the results provided by the CrossCheck service, the JIPS associate manuscript editors inform the JIPS editor-in-chief of any plagiarism that is detected in a paper.
	  Then, the JIPS editor-in-chief communicates such detection to the author(s) while rejecting the paper.</span>
      <br/>
    </td>
  </tr>

  <tr>
    <td colspan="2">
      <br/><br/>
      <span id="title">ABOUT THE SOCIETY</span>
      <br/><br/>
    </td>
  </tr>
  <tr>
    <td colspan="2" style="text-align:justify">
  	  <span>Ever since information processing became one of the most important industries in the country, computing professionals have encountered a growing number of challenges.
  	   Along with scholars and colleagues in related fields, they have gathered together at a variety of forums and meetings over the last few decades to share their knowledge and experiences,
  	   and the outcomes of their research. These exchanges led to the founding of the <a href="http://www.kips.or.kr/eng/obj_01.asp">Korea Information Processing Society (KIPS)</a> on January 15, 1993. The KIPS was registered as an incorporated association under the Ministry of Science,
  	   ICT and Future Planning under the government of the Republic of Korea. The main purpose of the KIPS organization is to improve our society by achieving the highest capability possible in the domain of information technology.
  	   As such, it focuses on close collaboration with the nation’s industry, academic, and research communities to foster technological innovation,
  	   to enhance its members' careers, and to promote the advanced information processing industry.</span>
      <br/>
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