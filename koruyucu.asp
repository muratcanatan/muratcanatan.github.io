<% 
If Session("Girdim")="" and Session("kullaniciadi")="" then 
%>
<html>
<head>
<title>Uye Kontrol Paneli</title>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">




<link rel="stylesheet" href="Stil.css" type="text/css">
<script language="JavaScript">
<!--
function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}
//-->
</script>
<style type="text/css">
<!--
.stil1 {color: #FFFFFF}
-->
</style>
</head>
<body bgcolor="#F7F7F7" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<form name=login action="uyegiris.asp" method=post>
  <p>&nbsp;</p>
  <div align="center">
    <center>
  <table border="1" cellspacing="3" cellpadding="3" style="border-collapse: collapse" bordercolor="#0099FF" width="433" height="101" >
    <tr> 
      <td colspan="3" width="421" bgcolor="#FFFFCC" height="95" background="img/yasak.jpg"> 
        <div align="center">
          <p style="margin-top: 8; margin-bottom: 8">
			<font face="Trebuchet MS" size="4" color="#FF0000">Sınavları 
			Görüntülemek için<br>
          Üye Olmanız Gerekmektedir..<br>
          </font>
          <b><font face="Trebuchet MS" color="#0000FF" size="2">Üye 
          Değilseniz Hemen Üye Olun, Daha Önceden Üye Olduysanız,<br>
          Aşağıdan Üye Girişi Yapınız..</font></b>
        </div>
    </tr>
    <tr> 
      <td bgcolor="#0099FF" width="131" height="18"> 
        <p align="center">
        <a href="javascript:void window.open('uyeol.asp','','width=625,height=448,scrollbars=0')">
        <font size="4"><b><span class="stil1" style="text-decoration: none">Üye Olayım</span></b></font></a></td>
      <td bgcolor="#0099FF" width="116" height="18"> 
        <p align="center"><b><font size="4"><a href="default.asp">
		<span class="stil1" style="text-decoration: none">Anasayfa</span></a></font></b></td>
      <td width="152" bgcolor="#0099FF" height="18"> 
        <div align="center"><a href="#stay" onClick="MM_openBrWindow('unuttum.asp','','width=400,height=250')"><b>
          <font size="4"><span class="stil1" style="text-decoration: none">Şifremi 
          Unuttum</span></font></b></a></div>
      </td>
    </tr>
    <tr> 
      <td colspan="3" width="421" height="1"> 
      </td>
    </tr>
    <tr> 
      <td colspan="3" width="421" height="113" bgcolor="#FFFFFF"> 
        <div align="center">
          <center> 
        <table border="2" width="251" cellspacing="3" cellpadding="3" bordercolor="#0099FF" style="border-collapse: collapse" height="124">
          <tr> 
            <td bgcolor="#0099FF" width="240" colspan="2" bordercolor="#0099FF" height="24"> 
              <p align="center" class="stil1"> 
                <b>Üye Girişi</b></td>
          </tr>
          <tr> 
            <td bgcolor="#0099FF" width="104" bordercolor="#0099FF" height="19"> 
              <span class="stil1"><b><font size="1">Kullanıcı Adınız:</font></b></span></td>
            <td bgcolor="#0099FF" width="136" bordercolor="#0099FF" height="19"> 
              <div align="center"> 
                <input type=text size=16 name=kullaniciadi onBlur="if(this.value=='')this.value='Kullanycy Ady';" onFocus="if(this.value=='Kullanycy Ady')this.value='';" class="yaziyeri" >
              </div>
            </td>
          </tr>
          <tr> 
            <td bgcolor="#0099FF" width="104" bordercolor="#0099FF" height="19"> 
              <span class="stil1"><b><font size="1">Şifreniz:</font></b></span></td>
            <td bgcolor="#0099FF" width="136" bordercolor="#FFECD8" height="19"> 
              <div align="center"> 
                <input type=password size=16 name=sifre onBlur="if(this.value=='')this.value='?ifre';" onFocus="if(this.value=='?ifre')this.value='';" class="yaziyeri" >
              </div>
            </td>
          </tr>
          <tr> 
            <td bgcolor="#0099FF" width="104" bordercolor="#0099FF" height="23">&nbsp;              </td>
            <td bgcolor="#0099FF" width="136" bordercolor="#0099FF" height="23"> 
              <div align="center"> 
                <p style="margin-top: 2; margin-bottom: 2"> 
                <input type="submit" name="Submit" value="  Giriş Yap  " style="color: #FF0000; font-family: Tahoma; font-size: 8pt; font-weight: bold; border-style: solid; border-width: 1; background-color: #FFFF00">
              </div>
            </td>
          </tr>
        </table>
          </center>
        </div>
      </td>
    </tr>
  </table>
    </center>
  </div>
</form>
<%response.End%>
<%end if%>