<footer id="footer">
    <div class="sep-big"></div>
    <section class="container">
<%--        <div class="grid12 col">
            <h3>ABOUT Project.</h3>
        </div>--%>
    </section>
    <div class="bottom">
        <section class="container">
            <div class="grid2 col">
                <img src="${resources2}/img/jips/cse_logo_footer.png" style="margin-top: 5px;" alt="major_logo"/>
            </div>
            <div class="grid4 col" style="margin-top: 15px;">
                <div class="row" id="dt_now"></div><!-- 현재시간 -->
                <div class="row" id="serverTime"></div>
            </div>
            <div class="grid6 col">
                <p>
                    B103A, 4th Engineering Hall, KoreaTech, Byeong-cheon, Cheon-an, Republic of Korea
                    <br/>
                    Copyright &copy; 2017 Team. deepEagles all rights reserved.
                    <br/>
                    Designed & Developed by <a href="http://link.koreatech.ac.kr" target="_blank">Team. deepEagles</a>.
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
    $(function () {
        $.ajax({
            type: 'GET',
            cache: false,
            url: "jdbc:mysql://solis.c129hiutah9p.ap-northeast-2.rds.amazonaws.com:3306/deepeagles?zeroDateTimeBehavior=convertToNull&characterEncoding=utf8&useUnicode=true&mysqlEncoding=utf8&useLegacyDatetimeCode=false&serverTimezone=Asia/Seoul".href,
            complete: function (req, textStatus) {
                var dateString = req.getResponseHeader('Date');
                if (dateString.indexOf('GMT') === -1) {
                    dateString += ' GMT';
                }
                var date = new Date(dateString);

                $(function(){
                    setInterval(function() {
                        $('#serverTime').text(new Date());//date.toString()
                    },1000);
                });
            }
        });
    });
</script>