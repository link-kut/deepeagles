<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section id="header" class="container">
    <header id="logo" class="grid2 col">
        <h2>
            <a href="${baseUrl}" rel="home" title="JIPS">
                <!-- Home 로고 바꾸는 부분 -->
                <img src="${resources2}/img/jips/Han_logo.png" class="scale" height="67" alt="main_logo_here"/>
            </a>
        </h2>
    </header>
    <nav id="menu" class="grid10 col indicators clearfix">
        <ul>
            <li class="${cPage == 'home' ? 'current_page_item' : ''}">
                <a href="${baseUrl}">Home</a>
            </li>
            <%--<li class="${cPage == 'st' ? 'current_page_item' : ''}">--%>
                <%--<a href="${baseUrl}/statistics">Statistics</a>--%>
            <%--</li>--%>
<%--            <li class="${cPage == 'dl' ? 'current_page_item' : ''}">
                <a href="${baseUrl}/digitallibrary">Match Schedule</a> <!-- 해당 이름의 url로 접속 한다는 의미 -->
            </li>--%>
            <li class="${cPage == 'of' ? 'current_page_item' : ''}">
                <a href="${baseUrl}/onlinefirst">Today's Prediction</a>
            </li>
            <li class="${cPage == 'of' ? 'current_page_item' : ''}">
                <a href="${baseUrl}/todaysprediction">Team DeepEagles</a>
            </li>
<%--            <li class="${cPage == 'of' ? 'current_page_item' : ''}">
                <a href="${baseUrl}/playersinfo">Player's Info</a>
            </li>--%>
            <!-- 리스트 in 리스트 구현 -->
            <%--<li class="has-children ${cPage == 'ai' || cPage == 'as' ? 'current_page_item' : ''}">
                <a href="${baseUrl}/aimsscope">Today's Prediction</a>

                <!-- 서브메뉴넣고 해당 Url넣기 -->

                <ul class="sub-menu">
                    <li class="${cPage == 'as' ? 'current_page_item' : ''}">
                        <a href="${baseUrl}/aimsscope">List Menu : 3-1</a>
                    </li>
                    <li class="${cPage == 'ai' ? 'current_page_item' : ''}">
                        <a href="${baseUrl}/authorinfo">List Menu : 3-2</a>
                    </li>
                </ul>
            </li>--%>
            <%--<li class="has-children ${cPage == 'ss' || cPage == 'si' ?  'current_page_item' : ''}">
                <a href="${baseUrl}/ss">Menu : 4</a>
                <ul class="sub-menu">
                    <li class="${cPage == 'as' ? 'current_page_item' : ''}">
                        <a href="${baseUrl}/ss">List Menu : 4-1</a>
                    </li>
                    <li class="${cPage == 'ai' ? 'current_page_item' : ''}">
                        <a href="${baseUrl}/si">List Menu : 4-2</a>
                    </li>
                </ul>
            </li>--%>
            <%-- <li class="has-children ${cPage == 'eb' || cPage == 'ip' || cPage == 'ep' ? 'current_page_item' : ''}">
                <a href="${baseUrl}/editorialboard">Menu : 5</a>
                <ul class="sub-menu">
                    <li class="${cPage == 'eb' ? 'current_page_item' : ''}">
                        <a href="${baseUrl}/editorialboard">List Menu : 5-1</a>
                    </li>
                    <li class="${cPage == 'ep' ? 'current_page_item' : ''}">
                        <a href="${baseUrl}/editorialprocedure">List Menu : 5-2</a>
                    </li>
                    <li class="${cPage == 'ip' ? 'current_page_item' : ''}">
                        <a href="${baseUrl}/internalprovision">List Menu : 5-3</a>
                    </li>
                </ul>
            </li>--%>
            <%--<li class="${cPage == 'sm' ? 'current_page_item' : ''}">
                <a href="${baseUrl}/submission">Menu : 6</a>
            </li>--%>
        </ul>

        <!-- 서치바 -->
        <div class="search-div text-right">
            <form name="search" action="${baseUrl}/searchResult?" method="get" onsubmit="return checkit()">
                <input type="text" name="s" id="s" placeholder="SEARCH" />
                <button type="submit" class="btn" style="margin-bottom: 0.2em !important;">
                    <i class="fa fa-search"></i>
                </button>
            </form>
            <span> Server Time : ${sTime}</span>//
            <span> Current Time : ${cTime}</span>
        </div>

    </nav>
    <div class="sep sep-small"></div>
    <span id="switch">Menu <strong>&#8801;</strong></span>
    <script>
        nowords = ['a',
            'about',
            'and',
            'are',
            'as',
            'at',
            'be',
            'but',
            'by',
            'com',
            'for',
            'from',
            'how',
            'if',
            'in',
            'into',
            'is',
            'it',
            'no',
            'not',
            'of',
            'on',
            'or',
            's',
            'such',
            't',
            'that',
            'the',
            'their',
            'then',
            'there',
            'these',
            'they',
            'this',
            'to',
            'was',
            'what',
            'when',
            'where',
            'who',
            'will',
            'with'
        ];

        function noenter() {
            return !(window.event && window.event.keyCode == 13);
        }

        function contains(a, obj) {
            var i = a.length;
            while (i--) {
                if (a[i] === obj) {
                    return true;
                }
            }
            return false;
        }

        function checkit() {
            var form = document.search;
            var searchValue = form.s.value;
            searchValue = searchValue.trim();
            if (searchValue=="") {
                form.s.focus();
                noenter();
                return false;
            } else if (searchValue.length < 3) {
                alert("You need to enter more than two characters.")
                form.s.focus();
                noenter();
                return false;
            } else if (contains(nowords, searchValue)) {
                alert("Your search word is one of stop words.")
                form.s.focus();
                noenter();
                return false;
            }
            return true;
        }
    </script>
</section>