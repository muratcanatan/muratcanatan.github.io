<div align="center">
<table cellspacing="0" cellpadding="0" width="100%" border="0" id="table5">
<tr>
<td valign="top" width="14">
<img src="img/1.gif" width="14" height="12"  border="0"></td>
<td valign="top" background="img/2.gif"></td>
<td valign="top" width="14">
<img src="img/3.gif" width="14" height="12"  border="0"></td>
</tr>
<tr>
<td bgcolor="#000000" width="14" background="img/4.gif" ></td>
<td bgcolor="#FFFFFF" bordercolor="#FFFFFF" align="left" valign="top">
<div align="center">
<table bgcolor="#000000" border="0" cellpadding="0" style="border-collapse: collapse" width="98%" id="table6">
							<tr>
<td valign="top" bgcolor="#FFFFFF">
<table width="100%"><tr><td align=center>ÜYE PANELİ
</td></tr></table>




<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">

<script language="JavaScript">
<!--
function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}
//-->
</script>

<!--#INCLUDE FILE="baglanti.asp"-->

<%
if Len(Session("uid"))= 0 then
call giris_yapmamis
else
call giris_yapmis
end if
%>
<%sub giris_yapmamis%>
<body bgcolor="#FFFFFF">
<table border="0" width="100%" id="table1">
	<tr>
		<td width="63"><form name=login action="uyegiris.asp" method=post>
                Adınız :</td>
		<td colspan="2"><input type=text size=10 name=kullaniciadi onBlur="if(this.value=='')this.value='Kullanıcı Adı';" value="Kullanıcı Adı" onFocus="if(this.value=='Kullanıcı Adı')this.value='';" class="yaziyeri" ></td>
	</tr>
	<tr>
		<td width="63">Şifreniz :</td>
		<td colspan="2"><input type=password size=10 name=sifre onBlur="if(this.value=='')this.value='Şifre';" value="Şifre" onFocus="if(this.value=='Şifre')this.value='';" class="yaziyeri" ></td>
	</tr>
	<tr>
		<td width="63">•<a href="#stay" onClick="MM_openBrWindow('unuttum.asp','','width=350,height=400')" style="text-decoration: none; font-weight: 700">Şifrem</a></td>
		<td>•<a style="text-decoration: none; font-weight: 700" href="javascript:void window.open('uyeol.asp','','width=650,height=448,scrollbars=0')">Üye Ol!</a></td>
<td><input type="submit" value="Giriş" border="2" name="imageField" style="font-family: Tahoma; font-size: 10pt"></td>
	</tr>
</table>

		

		


<% end sub %>
<%sub giris_yapmis%>
<%
Set uset = Server.CreateObject("ADODB.RecordSet")
SQL = "Select * from uyeler Where uid = "&session("uid")
uset.open SQL,bag,1,3
%>	
Hoş Geldiniz;<font color="#FF0000"><b><font face="Bookman Old Style">&nbsp;
	</font>
	<br />
	<font size="3" face="Bookman Old Style"><%=uset("adi")%>&nbsp;<%=uset("soyadi")%></font><font face="Bookman Old Style">
	</font></b></font>
 <br />        <b><font size="2">&nbsp;&nbsp; •</font><a href="javascript:void window.open('bilgilerim.asp','','width=625,height=425,scrollbars=0')">
 <font size="2" color="#0000FF">Bilgilerim</font></a></b><a href="terket.asp">
 <input type="submit" value="Çıkış" border="2" name="imageField2" style="font-family: Tahoma; font-size: 10pt"></a>

</form>
<% end sub %>



</td>
							</tr>
							</table>
					</div>

</td>
<td width="14" background="img/6.gif">
<img  src="img/spacer.gif" width="14" border="0"></td>
</tr>
<tr>
<td valign="top" width="14">
<img src="img/8.gif" width="14" height="12" border="0"></td>
<td valign="top" background="img/10.gif"></td>
<td valign="top" width="14">
<img src="img/9.gif" width="14" height="12" border="0"></td>
</tr>
</table>
</div>