<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section id="header" class="container">
    <header id="logo" class="grid2 col">
        <h1>
            <a href="${baseUrl}" rel="home" title="JIPS">
                <img src="${resources2}/img/jips/jips_logo.png" class="scale" height="67" alt="JIPS"/>
            </a>
        </h1>
    </header>
    <nav id="menu" class="grid10 col indicators clearfix">
        <ul>
            <li class="${cPage == 'home' ? 'current_page_item' : ''}">
                <a href="${baseUrl}">Home</a>
            </li>
            <%--<li class="${cPage == 'st' ? 'current_page_item' : ''}">--%>
                <%--<a href="${baseUrl}/statistics">Statistics</a>--%>
            <%--</li>--%>
            <li class="${cPage == 'dl' ? 'current_page_item' : ''}">
                <a href="${baseUrl}/digitallibrary">Digital Library</a>
            </li>
            <li class="${cPage == 'of' ? 'current_page_item' : ''}">
                <a href="${baseUrl}/onlinefirst">Online First</a>
            </li>
            <li class="has-children ${cPage == 'ai' || cPage == 'as' ? 'current_page_item' : ''}">
                <a href="${baseUrl}/aimsscope">Call for Papers</a>
                <ul class="sub-menu">
                    <li class="${cPage == 'as' ? 'current_page_item' : ''}">
                        <a href="${baseUrl}/aimsscope">Aims and Scope</a>
                    </li>
                    <li class="${cPage == 'ai' ? 'current_page_item' : ''}">
                        <a href="${baseUrl}/authorinfo">Author's Information</a>
                    </li>
                </ul>
            </li>
            <li class="has-children ${cPage == 'ss' || cPage == 'si' ?  'current_page_item' : ''}">
                <a href="${baseUrl}/ss">Specials</a>
                <ul class="sub-menu">
                    <li class="${cPage == 'as' ? 'current_page_item' : ''}">
                        <a href="${baseUrl}/ss">Special Sections</a>
                    </li>
                    <li class="${cPage == 'ai' ? 'current_page_item' : ''}">
                        <a href="${baseUrl}/si">Special Issues</a>
                    </li>
                </ul>
            </li>
            <li class="has-children ${cPage == 'eb' || cPage == 'ip' || cPage == 'ep' ? 'current_page_item' : ''}">
                <a href="${baseUrl}/editorialboard">Editorial Provision</a>
                <ul class="sub-menu">
                    <li class="${cPage == 'eb' ? 'current_page_item' : ''}">
                        <a href="${baseUrl}/editorialboard">Editorial Board</a>
                    </li>
                    <li class="${cPage == 'ep' ? 'current_page_item' : ''}">
                        <a href="${baseUrl}/editorialprocedure">Editorial Procedure</a>
                    </li>
                    <li class="${cPage == 'ip' ? 'current_page_item' : ''}">
                        <a href="${baseUrl}/internalprovision">Internal Provision</a>
                    </li>
                </ul>
            </li>
            <li class="${cPage == 'sm' ? 'current_page_item' : ''}">
                <a href="${baseUrl}/submission">Submission</a>
            </li>
        </ul>
        <div class="search-div text-right">
            <form name="search" action="${baseUrl}/searchResult?" method="get" onsubmit="return checkit()">
                <input type="text" name="s" id="s" placeholder="SEARCH" />
                <button type="submit" class="btn" style="margin-bottom: 0.2em !important;"><i class="fa fa-search"></i></button>
            </form>
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