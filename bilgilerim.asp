<% Response.Buffer = True %>
<%yonlen = "uyemesajlari.asp?aksiyon=3"%>
<!--#include file="baglanti.asp"-->
<%
aks = Request.QueryString("aks")
if aks = "guncelle" then
call guncelle
else
Set uset = Server.CreateObject("ADODB.RecordSet")
SQL = "Select * from uyeler Where uid = "&session("uid")
uset.open SQL,bag,1,3
%><link rel="stylesheet" href="stil.css" type="text/css">
<title>| Üyelik Bilgileriniz |</title>
<body bgcolor="#FFFFFF">
<form method="POST" action="<%=sayfaadresi%>?aks=guncelle">
  <div align="center">
    <center>
  <table width="600" border="3" cellspacing="0" cellpadding="2" bordercolor="#0099FF" style="border-collapse: collapse">
    <tr> 
      <td> 
        <table border="0" height="45" cellspacing="0" cellpadding="0" width="595">
          <tr> 
            <td width="595" bgcolor="#FF0000"> 
              <div align="center">
                <font color="#FFFFFF" face="Trebuchet MS" style="font-size: 15pt">
                <b>:. B i l g i l e r i m .:</b></font></div>
            </td>
            
            <html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">


          
            
          </tr>
        </table>
      </td>
    </tr>
    <tr> 
      <td valign="top" bgcolor="#FFFFCC"> 
        <table border="0" align="center" cellpadding="0" cellspacing="0" >
          <tr> 
            <td colspan="2" height="30"> 
              <div align="center"><font color="#006600"><b>Kiþisel Bilgileriniz</b></font></div>
          </tr>
          <tr> 
            <td>Adýnýz<br>
              &nbsp;
<input maxlength="30" name="adi" class="yaziyeri" value="<%=uset("adi")%>" size="20">
            </td>
            <td>Soyadýnýz<br>
              &nbsp;
<input maxlength="30" name="soyadi" class="yaziyeri" value="<%=uset("soyadi")%>" size="20">
            </td>
          </tr>
          <tr> 
            <td> 
              <div align="left">Web Siteniz<br>
                &nbsp;
<input maxlength="30" name="web" class="yaziyeri" value="<%=uset("web")%>" size="20">
              </div>
            </td>
            <td> 
              <div align="left">E-Mail Adresiniz<br>
                &nbsp;
<input type=text name=email value="<%=uset("email")%>" class="yaziyeri" maxlength="255" size="20" >
              </div>
            </td>
          </tr>
          <tr> 
            <td colspan="2" height="30"> 
              <div align="center"><font color="#006600"><b>Kullanýcý Bilgileriniz;</b></font></div>
            </td>
          </tr>
          <tr> 
            <td>Kullanýcý Adýnýz<br>
              &nbsp;<font color="#FF0000"><b><%=uset("kullaniciadi")%></b></font></td>
            <td>Þifreniz<br>
              &nbsp;
<input maxlength="30" name="sifre" class="yaziyeri" value="<%=uset("sifre")%>" size="20">
            </td>
          </tr>
          <tr> 
            <td> 
              <div align="left">Hatýrlatma Sorunuz<br>
                &nbsp;
<input maxlength="30" name="soru" class="yaziyeri" value="<%=uset("soru")%>" size="20">
              </div>
            </td>
            <td> 
              <div align="left">Cevabýnýz<br>
                &nbsp;
<input maxlength="30" name="cevap" class="yaziyeri" value="<%=uset("cevap")%>" size="20">
              </div>
            </td>
          </tr>
          <td colspan="2">&nbsp; 
            </td>
          </tr>
          <tr> 
            <td colspan="2"><img src="img/Bosluk.gif" width="438" height="1"></td>
          </tr>
          <tr>
            <td colspan="2"> 
              <div align="center">
                <input type="submit" name="Submit" value="Bilgilerimi Güncelle" class="buton">
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
sub guncelle
adi= Request.Form("adi")
soyadi = Request.Form("soyadi")
email = Request.Form("email")
web = Request.Form("web")
sifre = Request.Form("sifre")
soru = Request.Form("soru")
cevap = Request.Form("cevap")
uid = Request.Form("uid")
imza = Request.Form("imza")

Set uset = Server.CreateObject("ADODB.RecordSet")
SQL = "Select * from uyeler WHERE uid= "&session("uid")
uset.open SQL,bag,1,3
uset("adi") = adi
uset("soyadi") = soyadi
uset("email") = email
uset("web") = web
uset("sifre") = sifre
uset("soru") = soru
uset("cevap") = cevap

uset.update
Response.redirect "uyemesajlari.asp?aksiyon=iyi"
end sub
%>
</body>
</html>