<% Response.Buffer = True %>
<!--#include file="baglanti.asp"-->
<html>
<head>
<title>| Üye Listesi |</title>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">


<link rel="stylesheet" href="../V_img/style.css" type="text/css">
<body bgcolor="#F5F5F5" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" vlink="#006600">
<table border="0" width="100%" cellspacing="0" cellpadding="0" align="center">
  <tr bgcolor="#009900"> 
    <td height="30" align="center" colspan="4" bgcolor="#FF0000">
    <font size="4" color="#FFFFFF" face="Trebuchet MS"><b>Üye Listesi</b></font></td>
  </tr>
  <tr> 
    <td colspan="2" align="center" bgcolor="#FFFF99"><font color="#000000" size="2"><b>
    :.Üye 
      Adı.:</b></font></td>
    <td colspan="2" align="center" bgcolor="#FFFF99" height="25"><font color="#000000" size="2"><b>
    :.Kayıt 
      tarihi.:</b></font></td>
  </tr>
  <%
shf = Request.QueryString("shf")
if shf="" then 
shf=1
end if
set yaz = Server.CreateObject("ADODB.RecordSet")
SQL_yaz ="Select * from uyeler ORDER BY tarih desc"
yaz.open SQL_yaz,bag,1,3
yaz.pagesize = 25
yaz.absolutepage = shf
sayfa = yaz.pagecount
for i=1 to yaz.pagesize
if yaz.eof then exit for
%>
  <tr> 
    <td colspan="2" align="center"> 
      <p align="left"><font face="Trebuchet MS" size="2">&nbsp;&nbsp;&nbsp;&nbsp;<a href="uyedetay.asp?adi=<%=yaz("adi")%>"><%=yaz("adi")%>&nbsp;<%=yaz("soyadi")%></a>
      </font>
    </td>
    <td colspan="2" align="center"> 
      <p align="center"> <font size="2" face="Trebuchet MS" color="#999999"><%=yaz("tarih")%> 
        - <%=yaz("saat")%></font><font face="Trebuchet MS" size="2"> </font>
    </td>
  </tr>
  <%
yaz.movenext
Next
%>
  <tr> 
    <td width="22%" align="center"> </td>
    <td width="22%" align="center"> </td>
    <td width="22%" align="center"> </td>
    <td width="22%" align="center"> </td>
  </tr>
  <tr> 
    <td align="center" colspan="4"><font size="1"><b><br>
      Sayfalar : 
      <%
for z=1 to sayfa 
if shf=z then
response.write z
else
response.write "[<a href=""uyeler.asp?shf="&z&""">"&z&"</a>]"
end if
next
%>
      </b></font></td>
  </tr>
  <tr> 
    <td align="center" colspan="4"><font size="1"><b>Toplam üye : <%=yaz.recordcount%> 
      </b></font></td>
  </tr>
</table>
</body>
</html>