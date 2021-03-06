<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section id="header" class="container">
    <header id="logo" style="height : 10px">
        <style>
        </style>
        <h2 class="grid4 col" style="">
            <a href="${baseUrl}" rel="home" title="JIPS">
                <!-- Home 로고 바꾸는 부분 -->
                <div>
                    <img src="${resources2}/img/jips/univ_lab_logo.png" style="margin-top: 25px;" class="scale" width="100%" alt="main_univ_logo_here"/>
                </div>
            </a>
        </h2>
        <nav id="menu" class="grid8 col indicators clearfix">
            <ul>
<%--            <li class="${cPage == 'home' ? 'current_page_item' : ''}">
                    <a href="${baseUrl}">Home</a> </li>--%>
<%--            <li class="${cPage == 'of' ? 'current_page_item' : ''}">
                    <a href="${baseUrl}/onlinefirst">Today's Prediction</a> </li>--%>
                <li class="${cPage == 'of' ? 'current_page_item' : ''}">
                    <a href="${baseUrl}">Home</a> </li>
                <li class="${cPage == 'of' ? 'current_page_item' : ''}">
                    <a href="${baseUrl}/todaypredict">Today Predict</a> </li>
                <li class="${cPage == 'of' ? 'current_page_item' : ''}">
                    <a href="${baseUrl}/data">Data</a> </li>
                <li class="${cPage == 'of' ? 'current_page_item' : ''}">
                    <a href="${baseUrl}/history">History</a> </li>
                <li class="${cPage == 'of' ? 'current_page_item' : ''}">
                    <a href="${baseUrl}/about">About</a> </li>
                <li class="${cPage == 'of' ? 'current_page_i[tem' : ''}">
                    <a href="http://link.koreatech.ac.kr" target="_blank">LinkLab</a> </li>
                    <!-- 새창에서 띄우고 싶을땐 target="_blank" 속성을 추가해준다. -->
            </ul>
        </nav>
    </header>
    <!--홈의 섹션 바로 위의 작은 공간 -->
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