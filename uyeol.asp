<% Response.Buffer = True %>
<%yonlen = "uyemesajlari.asp?aksiyon=iyi"%>
<!--#include file="baglanti.asp"-->
<html>
<head>
<title>| Yeni Üye Kaydı |</title>


<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">


<link rel="stylesheet" href="stil.css" type="text/css">
</head>
<body bgcolor="#FFFFFF">
<%
aks = request("aks")
if aks="kayit" then
call kayit
else
%>
<form method="post" name="" action="<%=sayfaadresi%>?aks=kayit">
  <div align="center">
    <center>
  <table width="516" border="1" cellpadding="2" style="border-collapse: collapse" bordercolor="#0099FF">
    <tr> 
      <td width="510"> 
        <table border="1" height="45" cellspacing="0" cellpadding="0" width="510" style="border-collapse: collapse" bordercolor="#111111">
          <tr> 
            <td width="508" bgcolor="#FF0000"> 
              <div align="center">
                <font size="5" color="#FFFFFF"><b>&gt; Üye Kaydı&nbsp; Üye 
                Kaydı&gt;&nbsp; Üye Kaydı..</b></font></div>
            </td>
          </tr>
        </table>
      </td>
    </tr>
    <tr> 
      <td valign="top" bgcolor="#FFFFCC" width="510"> 
        <div align="left"></div>
        <table border="0" align="center" cellpadding="0" cellspacing="0" >
          <tr> 
            <td colspan="3" height="30"> 
              <div align="center"><font color="#FF0000">*</font><font size="2"><b> 
                İşareti 
                Olan Yeler Mutlaka Doldurulmalısınız.!</b></font></div>
          </tr>
          <tr> 
            <td colspan="3" height="30"> 
              <div align="center"><font color="#0000FF"><b>Kişisel Bilgileriniz</b></font></div>
          </tr>
          <tr> 
            <td>Adınız<font face="Verdana, Arial, Helvetica, sans-serif" color="#FF0000"><b><font color="#FF0000">*</font></b></font><br>
              &nbsp;
<input maxlength="30" name="adi" class="yaziyeri" size="20">
            </td>
            <td colspan="2">Soyadınız<font face="Verdana, Arial, Helvetica, sans-serif" color="#FF0000"><b><font color="#FF0000">*</font></b></font><br>
              &nbsp;
<input maxlength="30" name="soyadi" class="yaziyeri" size="20">
            </td>
          </tr>
          <tr> 
            <td> 
              <div align="left">Web Siteniz<br>
                &nbsp;
<input maxlength="30" name="web" class="yaziyeri" value="http://" size="20">
              </div>
            </td>
            <td colspan="2"> 
              <div align="left">E-Mail Adresiniz <font face="Verdana, Arial, Helvetica, sans-serif" color="#FF0000"><b><font color="#FF0000">*</font></b></font><br>
                &nbsp;
<input type=text name=email class="yaziyeri" maxlength="255" size="20" value="@" >
              </div>
            </td>
          </tr>
          <tr> 
            <td colspan="3" height="30"> 
              <div align="center"><b><font color="#0000FF">
                Kullancı Bilgileriniz</font></b></div>
            </td>
          </tr>
          <tr> 
            <td>
            Kullanıcı Adınız<font face="Verdana, Arial, Helvetica, sans-serif" color="#FF0000"><b><font color="#FF0000">*</font></b></font><br>
              &nbsp;
<input maxlength="30" name="kullaniciadi" class="yaziyeri" size="20">
            </td>
            <td colspan="2">
            Şifreniz <font face="Verdana, Arial, Helvetica, sans-serif" color="#FF0000"><b><font color="#FF0000">*</font></b></font><br>
              &nbsp;
<input maxlength="30" name="sifre" class="yaziyeri" size="20">
            </td>
          </tr>
          <tr> 
            <td> 
              <div align="left">Hatırlatma Sorunuz <font face="Verdana, Arial, Helvetica, sans-serif" color="#FF0000"><b><font color="#FF0000">*</font></b></font><br>
                &nbsp;
<input maxlength="30" name="soru" class="yaziyeri" size="20">
              </div>
            </td>
            <td colspan="2"> 
              <div align="left">Hatırlatma Cevabınız<font face="Verdana, Arial, Helvetica, sans-serif" color="#FF0000"><b><font color="#FF0000">*</font></b></font><br>
                &nbsp;
<input maxlength="30" name="cevap" class="yaziyeri" size="20">
              </div>
            </td>
          </tr>
          <td colspan="3">&nbsp; 
            </td>
          </tr>
          <tr> 
            <td colspan="3"><img src="img/Bosluk.gif" width="438" height="1"></td>
          </tr>
          <tr>
            <td colspan="3"> 
              <div align="center">
                <input type="submit" name="Submit" value="Kaydı Tamamla" class="buton">
       </div>
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
    </center>
  </div>
</form>
<%
end if
sub kayit 
adi = Request.Form("adi")
soyadi = Request.Form("soyadi")
email = Request.Form("email")
web = Request.Form("web")
kullaniciadi = Request.Form("kullaniciadi")
sifre = Request.Form("sifre")
soru = Request.Form("soru")
cevap = Request.Form("cevap")

if adi="" OR soyadi="" OR kullaniciadi="" OR sifre="" OR soru="" OR cevap="" then
response.write "<font face=verdana size=2>Lütfen alanlary bo? byrakmayynyz...</font>"
response.end
end if

Set kontrol = Server.CreateObject("ADODB.RecordSet")
SQL = "Select * from uyeler WHERE kullaniciadi = '" & kullaniciadi & "'"
kontrol.open SQL,bag,1,3
if not kontrol.eof then
Response.write "<font face=Verdana size=2>Bu kullanycyady bir ba?kasy tarafyndan alynmy?tyr<br>"
Response.end
else


Set kaydet = Server.CreateObject("ADODB.RecordSet")
sql_kaydet = "Select * from uyeler"
kaydet.open sql_kaydet,bag,1,3
kaydet.addnew
kaydet("adi") = adi
kaydet("soyadi") = soyadi
kaydet("email") = email
kaydet("web") = web
kaydet("kullaniciadi") = kullaniciadi
kaydet("sifre") = sifre
kaydet("soru") = soru
kaydet("cevap") = cevap
kaydet("email") = email
kaydet("tarih") = date
kaydet("saat") = time
kaydet.update
response.redirect yonlen
end if
end sub
%>
<b>Hatyrlatma :
<font size="1" color="#009900">Yazdy?ynyz Hatyrlatma Sorunuz ve Cevabynyzy Sakyn 
Unutmayyn ve Bir Yere Not Alyn..!E?er ?ifrenizi Unutursanyz 
?ifrenizi Size Geri Vermek Yçin Sorulacaktyr...</font></b>
</body>
</html>