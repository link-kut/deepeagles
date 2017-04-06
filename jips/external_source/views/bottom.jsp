<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import ="java.util.Calendar" %>
<%!
	Calendar oCalendar = Calendar.getInstance( ); 
	int year = oCalendar.get(Calendar.YEAR);
%>

<br/>
<img src="resources/images/hr.jpg" width="840" alt=""/>
<br/><br/>
<table class="BottomTable" cellpadding="0" cellspacing="0"> 
  <tr> 
  	<td width="200" align="right" style="padding:0">
  	  <img src="resources/images/kipslogo.jpg" align="top" alt="copyright"/>
  	</td> 
  	<td align="right" valign="top"> 
    	<span class="copyright">1002ho Yongsungbiztel 314-1 2ga Hankangro Yongsan-gu, Seoul, 140-750 Republic of Korea</span><br/>
      <span class="copyright">Phone: +82-2-2077-1414  Fax: +82-2-2077-1472. Copyright &copy; 2005-<%=year%> <a class="BlackGrayHover" href="http://www.kips.or.kr/eng/obj_01.asp" target="_blank"><b>KIPS</b></a> all rights reserved. </span>
  	</td> 
  </tr> 

</table> 
