<!DOCTYPE html>
<html>
<head>
    <title>JIPS : Journal of Information Processing Systems</title>
    <link href="favicon.ico" rel="icon" type="resources/image/x-icon" />
    <link rel="stylesheet" type="text/css" href="resources/css/mainstyle.css">
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta name="keywords" content="jips, Journal, IT, Computer,Engineering">
    <meta name="description" content="Journal of Information Processing Systems">
    <meta http-equiv="X-UA-Compatible" content="IE=11,chrome=1">
    <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="http://www.google.com/jsapi"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        google.load('visualization', '1', {packages: ['corechart']});
    </script>
    <script>
        function noenter() {
            return !(window.event && window.event.keyCode == 13);
        }

        function checkit()
        {
            var form = document.search;
            var searchValue = form.s.value;
            searchValue = searchValue.trim();
            if (searchValue=="")
            {
                form.s.focus();
                noenter();
                return false;
            }
            return true;

        }
    </script>
</head>
<body>
<div class="Logo">
    <form name="search" action="/searchResult?" method="get" onsubmit="return checkit()">
        <br/>
        <table align="right" style="width:265px; height:25px; margin:0; padding:0;" cellpadding="0" cellspacing="0">
            <tr>
                <td align="left" style="width:215px; background-image:url('../resources/images/form.png'); background-repeat:no-repeat;">
                    &nbsp;&nbsp;&nbsp;<input class="text" type="text" name="s" value="${s}" size="25"/>
                    <!--<input type="hidden" name="sp" value="sp" size="1"/>-->
                </td>
                <td align="left" style="width:50px;">

                    &nbsp;&nbsp;<input type="image" src="resources/images/search.png" align="top" alt="Search"/>

                </td>
            </tr>
        </table>
    </form>
</div>

<div class="Menu">

    <table class="MainMenuTable" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                <img src="resources/images/mm2_01.gif" width="68" height="26" alt=""></td>
            <td>
                <a class="Mainmenu" href="/"><img src="resources/images/mm2_02.gif" width="61" height="26" alt="Home" onmouseover="this.src='resources/images/mm2_022.gif'" onmouseout="this.src='resources/images/mm2_02.gif'"></a></td>
            <td>
                <a class="Mainmenu" href="digitallibrary"><img src="resources/images/mm2_03.gif" width="105" height="26" alt="Digital Library" onmouseover="this.src='resources/images/mm2_032.gif'" onmouseout="this.src='resources/images/mm2_03.gif'"></a></td>
            <td>
                <a class="Mainmenu" href="onlinefirst"><img src="resources/images/mm2_010.gif" width="100" height="26" alt="Online First" onmouseover="this.src='resources/images/mm2_0102.gif'" onmouseout="this.src='resources/images/mm2_010.gif'"></a></td>
            <td>
                <a class="Mainmenu" href="editorialboard"><img src="resources/images/mm2_04.gif" width="110" height="26" alt="Editorial Board" onmouseover="this.src='resources/images/mm2_042.gif'" onmouseout="this.src='resources/images/mm2_04.gif'"></a></td>
            <td>
                <a class="Mainmenu" href="callforpapers"><img src="resources/images/mm2_05.gif" width="104" height="26" alt="Call for Papers" onmouseover="this.src='resources/images/mm2_052.gif'" onmouseout="this.src='resources/images/mm2_05.gif'"></a></td>
            <td>
                <a class="Mainmenu" href="internalprovision"><img src="resources/images/mm2_06.gif" width="124" height="26" alt="Internal Provision" onmouseover="this.src='resources/images/mm2_062.gif'" onmouseout="this.src='resources/images/mm2_06.gif'"></a></td>
            <td>
                <a class="Mainmenu" href="editorialprocedure"><img src="resources/images/mm2_07.jpg" width="152" height="26" alt="Editorial Procedure" onmouseover="this.src='resources/images/mm2_072.jpg'" onmouseout="this.src='resources/images/mm2_07.jpg'"></a></td>
            <td>
                <a class="Mainmenu" href="submitmanuscript"><img src="resources/images/mm2_08.gif" width="136" height="26" alt="Submit Manuscript" onmouseover="this.src='resources/images/mm2_082.gif'" onmouseout="this.src='resources/images/mm2_08.gif'"></a></td>
            <td>
                <img src="resources/images/mm2_09.gif" width="64" height="26" alt=""></td>
        </tr>
    </table>
</div>
<div class="Contents">
    <table class="ContentsTable">
        <tr>
            <td valign="top">