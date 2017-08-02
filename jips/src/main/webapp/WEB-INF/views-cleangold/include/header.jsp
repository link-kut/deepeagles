<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section id="header" class="container">
    <header id="logo" class="grid2 col">
        <h2>
            <a href="${baseUrl}" rel="home" title="JIPS">
                <!-- Home 로고 바꾸는 부분 -->
                <!--<img src="${resources2}/img/jips/Han_logo.png" class="scale" height="67" alt="main_logo_here"/>-->
            </a>

        </h2>
        <nav id="menu" class="grid10 col indicators clearfix">
            <ul>
<%--                <li class="${cPage == 'home' ? 'current_page_item' : ''}">
                    <a href="${baseUrl}">Home</a> </li>--%>
<%--                <li class="${cPage == 'of' ? 'current_page_item' : ''}">
                    <a href="${baseUrl}/onlinefirst">Today's Prediction</a> </li>--%>
                <li class="${cPage == 'of' ? 'current_page_item' : ''}">
                    <a href="localhost:8080">Today's Prediction</a> </li>
                <li class="${cPage == 'of' ? 'current_page_item' : ''}">
                    <a href="http://link.koreatech.ac.kr" target="_blank">KUT. LinkLab</a> </li>
                    <!-- 새창에서 띄우고 싶을땐 target="_blank" 속성을 추가해준다. -->
            </ul>

            <!-- 서치바 -->
<%--            <div class="search-div text-right">
                <span> Server Time : ${sTime}</span>//
                <span> Current Time : ${cTime}</span>
            </div>--%>

        </nav>
    </header>
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