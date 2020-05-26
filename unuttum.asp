<!--#include file="baglanti.asp"-->
<html>
<style type="text/css">
<!--
.stil1 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
<head>
<title>|  Şifremi Unuttum! |</title>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">




<link rel="stylesheet" href="../V_img/style.css" type="text/css">
</head>
<body bgcolor="#F5F5F5" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<%
aks = request("aks")
if aks="sifre" then
call sifre
else
%>  
<table border="0" width="350" cellspacing="0" cellpadding="0" align="center">
  <tr>
      
    <td width="100%"> 
      <form method="POST" action="<%=sayfaadresi%>?aks=sifre">
          
        <table width="100%" border="3" cellpadding="0" cellspacing="0" bordercolor="#0099FF">
          <tr bgcolor="#009900"> 
            <td width="17%" height="20" bgcolor="#FF0000"></td>
            <td colspan="2" height="20" bgcolor="#FF0000"><span class="stil1"><font face="Verdana" size="2">Şifremi 
              Unuttum..:</font></span></td>
          </tr>
          <tr> 
            <td colspan="3">&nbsp;</td>
          </tr>
          <tr> 
            <td colspan="3">
            <p align="center"><font size="1" color="#0000FF">&nbsp;</font><font size="2" color="#0000FF"><b>Lütfen 
            Şifrenizi Almak İçin,</b></font><b><font color="#008000" size="3" face="Trebuchet MS"><br>
            </font>
            <font color="#008000" face="Trebuchet MS" style="font-size: 9pt">Üye Olurken 
            Belitti?iniz Gizli Soru ve Yanytynyzy Yazynyz..</font></b></p>
            </td>
          </tr>
          <tr> 
            <td colspan="3">&nbsp;</td>
          </tr>
          <tr> 
            <td colspan="2"> 
              <div align="right"><b><font size="1">Hatırlatma sorusu :&nbsp;&nbsp;&nbsp; </font>
                </b></div>
            </td>
            <td width="58%" colspan="-1"><font size="1" face="Verdana" color="#DBD9D2"> 
              <input type="text" name="soru" size="20" class="yaziyeri">
              </font></td>
          </tr>
          <tr> 
            <td colspan="2"> 
              <div align="right"><b><font size="1">Hatırlatma cevabı :&nbsp;&nbsp;&nbsp; </font>
                </b></div>
            </td>
            <td width="58%" colspan="-1"><font size="1" face="Verdana" color="#DBD9D2"> 
              <input type="password" name="cevap" size="20" class="yaziyeri">
              </font></td>
          </tr>
          <tr> 
            <td colspan="3"> 
              <div align="center"><font size="1" face="Verdana" color="#DBD9D2"><br>
                <input type="submit" value="Şifremi Verir misin ?" class="buton">
                </font></div>
            </td>
          </tr>
          <tr> 
            <td colspan="2"></td>
            <td width="58%" colspan="-1"></td>
          </tr>
        </table>
      </form>
        </td>
    </tr>
  </table>
  <p align="center"></p>
<%
end if
sub sifre
soru = request.form("soru")
cevap = request.form("cevap")
if soru="" or cevap="" then
response.write "<font face=Verdana, Arial, Helvetica, sans-serif size=2>Soru yanly?</font>"
response.end
else

Set uset = Server.CreateObject("ADODB.Recordset")
SQL = "select * from uyeler where soru = '" & soru & "'"
uset.open SQL,bag,1,3

if uset.eof then 
response.write "<font face=Verdana, Arial, Helvetica, sans-serif size=2>Yine Yanly?</font>" 
response.end
else

uset.movefirst
if uset("cevap") <> cevap then
response.write "<font face=Verdana, Arial, Helvetica, sans-serif size=2>Yanly? Cevap</font>"
response.end
else

%>
<table width="350" border="3" align="center" cellpadding="0" cellspacing="0" bordercolor="#0099FF">
  <tr bgcolor="#009900"> 
    <td width="6%" height="20" bgcolor="#FF0000">&nbsp; </td>
    <td height="20" width="94%" bgcolor="#FF0000"><b><font color="#FFFFFF">Sayın; <%=uset("adi")%></font></b> 
      <b><font color="#FFFFFF"><%=uset("soyadi")%></font></b> </td>
  </tr>
  <tr> 
    <td colspan="2"></td>
  </tr>
  <tr> 
    <td colspan="2" height="25"> 
      <div align="center"><br>
        <b><font face="Trebuchet MS" color="#0000FF">
        <span style="font-size: 9pt">Kullanıcı Adı ve Şifreniz Aşağıda Yer Almaktadır.<br>
        Teşekkürler ;)</span></font></b></div>
    </td>
  </tr>
  <tr> 
    <td colspan="2"></td>
  </tr>
  <tr valign="bottom"> 
    <td height="60" colspan="2">
      <table border="0" align="center">
        <tr valign="bottom"> 
          <td height="30" colspan="2"> <font face="Trebuchet MS"> <b>Kullanıcı Adınız<font size="2"> 
          -&gt;</font></b></font></td>
        </tr>
        <tr> 
          <td valign="top"> 
            <div align="right"><img src="img/sifre.gif" align="left"></div>
          </td>
          <td><b><font color="#FF0000"><%=uset("kullaniciadi")%></font></b></td>
        </tr>
        <tr valign="bottom"> 
          <td height="30" colspan="2"><font face="Trebuchet MS"><b>Şifreniz -&gt;</b></font></td>
        </tr>
        <tr> 
          <td valign="top"> 
            <div align="right"><img src="img/sifre.gif" align="left"></div>
          </td>
          <td><b><font color="#FF0000"><%=uset("sifre")%></font></b></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
</body>
</html>
<%
end if
end if
end if
end sub
%>