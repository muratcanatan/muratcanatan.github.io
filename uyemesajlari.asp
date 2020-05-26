<html>
<head>
<title>| Üyelik | İşlem Sonucu > |</title>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">


<meta http-equiv="Content-Type" content="text/html; charset=">
<link rel="stylesheet" href="Stil.css" type="text/css">
</head>
<body bgcolor="#F5F5F5" leftmargin="3" topmargin="3" marginwidth="3" marginheight="3" vlink="#006600"><%
If request("aksiyon") = "iyi" then
Call iyi
ElseIf request("aksiyon") = "bad" then
Call bad
ElseIf request("aksiyon") = "oops" then
Call oops
End If
%>
<% sub iyi%>
<p><br>
&nbsp;</p>
<div align="center">
  <center>
<table border="1" cellspacing="0" cellpadding="0" bgcolor="#FFFFCC" width="558" height="50" bordercolor="#FF0000" style="border-collapse: collapse">
  <tr> 
    <td bgcolor="#FFFFCC" bordercolor="#FF0000" width="554"> 
      <div align="center"><b><font size="3"><br>
        </font><font color="#000080">İş</font><font color="#000080">leminiz; Başarıyla Gerçekleşmiştir.!<br>
        <font size="1">Bu Pencereyi Kapatyp 
        ve Üye Giri?i Yapabilirsiniz.. <br><a style="text-decoration: none" href="JavaScript:onClick=%20window.close()">[ KAPAT ]</a>
        &nbsp;</font></font></b></div>
    </td>
  </tr>
</table>
  </center>
</div>
<% end sub %>
<% sub bad%>
<div align="center">
  <center>
<table border="1" cellspacing="0" cellpadding="0" bgcolor="#FFFFCC" width="557" height="50" bordercolor="#FF0000" style="border-collapse: collapse">
  <tr> 
    <td bgcolor="#FFFFCC" bordercolor="#FF0000" width="555"> 
      <div align="center"><b><br>
        <font color="#000080">İş</font><font color="#000080">leminiz; Gerçekleşirken Bir Hata Oluştu.!<br>
        <a style="text-decoration: none" href="JavaScript:onClick=%20window.close()">[ KAPAT ]</a>
&nbsp;</font></b></div>
    </td>
  </tr>
</table>
  </center>
</div>
<% end sub %>
<% sub oops%>
<div align="center">
  <center>
<table border="1" cellspacing="0" cellpadding="0" bgcolor="#FFFFCC" width="557" height="50" bordercolor="#FF0000" style="border-collapse: collapse">
  <tr> 
    <td bgcolor="#FFFFCC" bordercolor="#FF0000" width="555"> 
      <div align="center"><b><br>
        <font color="#000080">Üzgünüm.! Buraya Sadece Üyeler Girebilir <br><a style="text-decoration: none" href="JavaScript:onClick=%20window.close()">[ KAPAT ]</a>
&nbsp;</font></b></div>
    </td>
  </tr>
</table>
  </center>
</div>
<% end sub %>
</body>
</html>