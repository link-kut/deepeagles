<footer id="footer">
    <div class="sep-big"></div>
    <section class="container">
        <div class="grid12 col">
            <h3>ABOUT THE TEAM</h3>
            <p class="text-justify" style="line-height: 1.6em !important;">
                Our team is super awesome-
            </p>
            <div id="dt_now"></div><!-- 현재시간 -->
            <div id="test_st"></div>
        </div>
    </section>
    <div class="bottom">
        <section class="container">
<%--            <div class="grid3 col">
                <img width="100%" src="${resources2}/img/jips/KIPS-transparent.png" alt=""/>
            </div>--%>
            <div class="grid12 col">
                <p>
                    B103A 4th Engineering Hall, KoreaTech, Byeong-cheon, Cheon-an, Republic of Korea
                    <br/>
                    Copyright &copy; 2017 Team. deepEagles all rights reserved.
                    <br/>
                    Designed & Developed by <a href="https://www.manuscriptlink.com" target="_blank">Team. deepEagles</a>.
                </p>
            </div>
        </section>
    </div>
</footer>

<!-- 현재시간(실시간) 출력 : jQuery -->
<script>
    $(function() {
        setInterval(function() {
            $("#dt_now").text(new Date());
        }, 1000);
    });
</script>

<!-- 서버시간 -->
<script>

    var xmlHttp;

    function srvTime(){

        if (window.XMLHttpRequest) {//분기하지 않으면 IE에서만 작동된다.

            xmlHttp = new XMLHttpRequest(); // IE 7.0 이상, 크롬, 파이어폭스 등

            xmlHttp.open('HEAD',window.location.href.toString(),false);

            xmlHttp.setRequestHeader("Content-Type", "text/html");

            xmlHttp.send('');

            return xmlHttp.getResponseHeader("Date");

        }else if (window.ActiveXObject) {

            xmlHttp = new ActiveXObject('Msxml2.XMLHTTP');

            xmlHttp.open('HEAD',window.location.href.toString(),false);

            xmlHttp.setRequestHeader("Content-Type", "text/html");

            xmlHttp.send('');

            return xmlHttp.getResponseHeader("Date");

        }

    }

    var st = srvTime();

    var test_st = new Date(st);

    $(function() {
        setInterval(function() {
            $("#test_st").text(test_st);
        }, 1000);
    });
</script>