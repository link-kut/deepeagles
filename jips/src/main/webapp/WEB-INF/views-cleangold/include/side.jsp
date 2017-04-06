<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div style="${fn:contains(req.requestURL, 'index.jsp') ? '' : 'margin-right: -0.5em'}">
    <div class="well text-left" style="background: #ffffff">
        <h4 class="row">
            <div class="col-md-8 col-sm-8 col-xs-8">
                <i class="fa fa-bars"></i> Statistics
            </div>
            <div class="col-md-4 col-sm-4 col-xs-4">
                <a href="/statistics">
                    <img src="${resources2}/img/graph.png" width="100%" alt="STATS"/>
                </a>
            </div>
        </h4>
        <div class="center-block text-center">
            <a href="/statistics">
                <div class="row">
                    <div class="col-md-12">
                        <ul class="text-left">
                            <li>
                                <i class="fa fa-bar-chart" aria-hidden="true"></i> Submissions & Accepts & Rejects
                            </li>
                            <li>
                                <i class="fa fa-bar-chart" aria-hidden="true"></i> Author Country Distribution
                            </li>
                            <li>
                                <i class="fa fa-bar-chart" aria-hidden="true"></i> Reviewer Country Distribution
                            </li>
                        </ul>
                    </div>
                </div>
            </a>
        </div>
    </div>

    <div class="well text-left" style="background: #ffffff">
        <h4><i class="fa fa-bars"></i> JIPS Awards 2016</h4>
        <br/>
        <i class="fa fa-trophy" aria-hidden="true"></i> Citation <br/>
        Amine Dahane, Nasr-Eddine Berrached and Abdelhamid Loukil (University of Sciences and Technology of Oran, Algeria)
        <br/>
        <br/>
        <i class="fa fa-trophy" aria-hidden="true"></i> Publication (Author) <br/>
        Deokjai Choi (Chonnam National University, Republic of Korea)
        <br/>
        <br/>
        <i class="fa fa-trophy" aria-hidden="true"></i> Publication (First Author) <br/>
        Jayaprakash Kar (King Abdulaziz University, Saudi Arabia)
        <br/>
        <br/>
        <i class="fa fa-trophy" aria-hidden="true"></i> AE activity <br/>
        Joon-Min Gil (Catholic University of Daegu, Republic of Korea)
        <br/>
        <br/>
        <i class="fa fa-trophy" aria-hidden="true"></i> Review activity <br/>
        Seung-Won Jung (Dongguk University, Republic of Korea)
    </div>

    <div class="well text-left" style="background: #ffffff">
        <h4><i class="fa fa-bars"></i> Publications</h4>
        <br/>
        <c:forEach var="i" begin="0" end="${yearLength-1}">
            <img src="${resources2}/img/jips/index.png" width="5" height="5" style="vertical-align:middle;" alt=""/>
            <c:choose>
                <c:when test="${yearArray[i].year == 2005}">
                    <a class="Papervolume" href="volume?v=${volumeArray[i].volume}&n=1">&nbsp;Volume ${volumeArray[i].volume} (${yearArray[i].year})</a><br/>
                </c:when>
                <c:when test="${yearArray[i].year == 2006}">
                    <a class="Papervolume" href="volume?v=${volumeArray[i].volume}&n=3">&nbsp;Volume ${volumeArray[i].volume} (${yearArray[i].year})</a><br/>
                </c:when>
                <c:when test="${yearArray[i].year == 2007}">
                    <a class="Papervolume" href="volume?v=${volumeArray[i].volume}&n=2">&nbsp;Volume ${volumeArray[i].volume} (${yearArray[i].year})</a><br/>
                </c:when>
                <c:otherwise>
                    <a class="Papervolume" href="volume?v=${volumeArray[i].volume}&n=${volumeArray[i].number}">&nbsp;Volume ${volumeArray[i].volume} (${yearArray[i].year})</a><br/>
                </c:otherwise>
            </c:choose>
        </c:forEach>
    </div>

    <div class="well text-left" style="background: #ffffff">
        <h4><i class="fa fa-bars"></i> Indexing</h4>
        <br/>
        <p class="text-justify">All publications of JIPS are indexed in ESCI (a new Web of Science index of Thomson Reuters), SCOPUS, DOI, DBLP, EI COMPENDEX, EBSCO, Google Scholar, and Crossref.</p>
        <div class="center-block text-center">
            <img src="${resources2}/img/jips/ESCI.png" width="130" alt="SCOPUS"/>
            <br/><br/>
            <a href="https://www.scopus.com/" target="_blank"><img src="${resources2}/img/jips/scopus_logo.png" width="130" alt="SCOPUS"/></a>
            <br/><br/>
            <%--<img src="${resources2}/img/jips/doi.jpg" alt="doi"/>--%>
            <%--<br/><br/>--%>
            <a href="http://dblp.uni-trier.de/" target="_blank"><img src="${resources2}/img/jips/DBLP.png" width="130" alt="dblp"/></a>
            <br/><br/>
            <img src="${resources2}/img/jips/ei_compendex.jpeg" width="130" alt="ei_compendex"/>
            <br/><br/>
            <img src="${resources2}/img/jips/ebsco.png" width="130" alt="EBSCO"/>
            <br/><br/>
            <a href="https://scholar.google.com/scholar?as_publication=journal%20of%20information%20processing%20systems" target="_blank"><img src="${resources2}/img/jips/google_scholar_log.gif" width="130" alt="Google"/></a>
            <br/><br/>
            <a href="http://crossref.org" target="_blank"><img src="${resources2}/img/jips/crossref-logo.png" width="130" alt="Google"/></a>
            <br/><br/>
            <a href="http://www.crossref.org/crosscheck/index.html" target="_blank"><img src="${resources2}/img/jips/CROSSREF_check.png" width="130" alt="crosscheck_it_trans"/></a>
            <br/><br/>
            <img src="${resources2}/img/jips/nrf.png" width="85" alt="NRF"/>
        </div>
        <p class="text-justify">
            JIPS is also selected as the Journal for Accreditation by NRF (National Research Foundation of Korea).
        </p>
        <div class="center-block text-center">
            <img width="50%" class="cc_side" src="${resources2}/img/jips/CC.jpg"/>
        </div>
        <p class="text-justify">
            This is an Open Access article distributed under the terms of the Creative Commons Attribution Non-Commercial License.
        </p>
    </div>

    <div class="well text-left" style="background: #ffffff">
        <h4><i class="fa fa-bars"></i> Society</h4>
        <a href="http://www.kips.or.kr/eng/obj_01.asp"><img width="100%" class="kips_side" src="${resources2}/img/jips/KIPS.jpg"/></a>
    </div>
</div>