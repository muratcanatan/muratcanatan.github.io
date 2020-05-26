<%
set baglan = server.createobject("adodb.connection")
baglan.open "driver={microsoft access driver (*.mdb)}; dbq=" & server.mappath("admin/frm.mdb")
%>


<%
kategori=request.querystring("kategori")
set frm = server.createobject("adodb.recordset")
frm.open " select * from test where ktgr like '%" & kategori & "%' order by tarih desc " ,baglan,1,3
%>


<%
Xsayfa = request.querystring("Xsayfa")
if Xsayfa = "" then
Xsayfa = 1
end if
%>

<%
If frm.eof then
Response.Write "<center><font color=#800000 face=Monotype Corsiva size=5>Bu kategoride kayıt bulunmamaktadir...<br /><a href=javascript:history.go(-1)>Geri</a></font></center>"
else
%>



<html>

<head>
<meta http-equiv="Content-Language" content="tr">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<SCRIPT LANGUAGE="JavaScript">
<!-- Original:  Paul Deron (trombonepaul@yahoo.com) -->
<!-- Begin
function fullScreen(theURL) {
window.open(theURL, '', 'fullscreen=yes, scrollbars=auto');
}
//  End -->
</script>


<title>Kategori</title>
<style type="text/css">
<!--
.stil1 {
	color: #FFFFFF
}
-->
</style>
</head>

<body>

<body>
<table width="98%" border="3" bordercolor="#0099FF" id="table1">
<tr>
		<td colspan="2">


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
<table bgcolor="#000000" border="0" cellpadding="0" style="border-collapse: collapse" width="99%" id="table6">
							<tr>
<td valign="top" bgcolor="#FFFFFF">
		
		
		
<table bgcolor="#000000" border="0" cellpadding="0" style="border-collapse: collapse" width="100%" id="table6">
						<tr>
<td valign="top" bgcolor="#0099FF">			
	
		<p align="center" class="stil1"><b><font size="6">ŞEHİT ÜMİT KARAMUSTAFA ORTAOKULU</font></b></p>
		<p align="center"><span class="stil1"><b><font size="6">ÇEVRİM İÇİ DENEME SINAVI</font><font size="6"></font></b></span></p>
		<p align="center"><br /></p>			</td>
			
		</tr>
	</table>

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





		</td>
	</tr>
	<tr>
		<td align="left" valign="top">
		<!--#include file="panel.asp"--><br />
		<!--#include file="duyuru.asp"--><br />
		
		<!--#include file="acategori.asp"--><br />

		</td>
		<td width="100%" align="left" valign="top">










<div align="center">










<div align="center">
<table cellspacing="0" cellpadding="0" width="100%" border="0" id="table9" height="56">
<tr>
<td valign="top" width="14" height="12">
<align="left">
<img src="img/1.gif" width="14" height="12"  border="0"></td>
<td valign="top" width="100%" background="img/2.gif" height="12">
<align="left"></td>
<td valign="top" width="15" height="12">
<align="left">
<img src="img/3.gif" width="14" height="12"  border="0"></td>
</tr>
<tr>
<td width="14" background="img/4.gif" height="32">
<align="left"></td>
<td height="32">
					<div align="center">
						<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" id="table10">
				<tr bgColor="#F2F2F2" onMouseOver="bgColor='#FFFFFF'" onMouseOut="bgColor='#F2F2F2'">
								<td>
								







<marquee onMouseOver="this.stop()" onMouseOut="this.start()" width="100%" height="30" scrollamount="4">
			<%for i = 1 to 5
if frm.eof then exit for%>

<a href="javascript:void(0);" onClick="fullScreen('devami.asp?id=<%=frm("id")%>');" >




<span style="text-decoration: none; font-weight: 700">

<font face="webdings" style="font-size: 18pt" color="#993300">&nbsp;U</font>




<font face="Times New Roman" style="font-size: 10pt" color="#993300">
<%=frm("aciklama")%></a>
</font>
<%frm.movenext
next
%>
</marquee>



</td>
</tr>
</table>
</div></td>
<td width="15" background="img/6.gif" height="32">
<align="left">
<font face="Tahoma" style="font-size: 8pt">
<img height="32" src="img/spacer.gif" width="14" border="0"></font></td>
</tr>
<tr>
<td valign="top" width="14" height="12">
<align="left">
<img src="img/8.gif" width="14" height="12" border="0"></td>
<td valign="top" width="100%" background="img/10.gif" height="12">
<align="left"></td>
<td valign="top" width="15" height="12">
<align="left">
<img src="img/9.gif" width="14" height="12" border="0"></td>
</tr>
</table>
</div>















<table cellspacing="0" cellpadding="0" width="100%" border="0" id="table1">
<%
frm.pagesize=6
frm.absolutepage = Xsayfa
Xsahife = frm.pagecount
for i =1 to frm.pagesize
if frm.eof then exit for
%>
<tr>
<td valign="top" width="14">
<img src="img/1.gif" width="14" height="12"  border="0"></td>
<td valign="top" width="100%" background="img/2.gif"></td>
<td valign="top" width="14">
<img src="img/3.gif" width="14" height="12"  border="0"></td>
</tr>
<tr>
<td width="14" background="img/4.gif" height="101"></td>
<td height="101">
					<div align="center">
				  <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" id="table2" height="56">
							<tr>
								<td valign="top" height="21" colspan="2">
								<div align="center">
									<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" id="table3" height="22">
										<tr>
											<td width="56%" bgcolor="#F7F7F7">
											<span lang="en-us"><b>
											<font face="Georgia" style="font-size: 13pt" color="#CC0000">&nbsp;»</font></b></span><b><font face="Georgia" color="#CC0000" style="font-size: 13pt">&nbsp;<%=frm("ktgr")%></font></b></td>
											<td width="34%" bgcolor="#F7F7F7">
											<font face="Georgia" style="font-size: 8pt">
											Ekleme Tarihi :&nbsp;<%=frm("tarih")%></font></td>
											<td width="10%" bgcolor="#F7F7F7">
											<a href="default.asp">Anasayfa</a></td>
										</tr>
									</table>
								</div>
								</td>
							</tr>
							<tr>
							  <td valign="top" width="15%">&nbsp;</td>
								<td valign="top" width="85%">
							<font face="Georgia" style="font-size: 9pt"><%=frm("aciklama")%></font></td>
							</tr>
							<tr>
								<td valign="top" colspan="2">
						<div align="center">
							<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" id="table4">
								<tr>
									<td width="36%" valign="bottom">
									<font face="Georgia" style="font-size: 8pt">
									<b>&nbsp;Kategori</b></font><font face="Georgia" style="font-size: 9pt"> :<font color="#990033"><a href="kategori.asp?kategori=<%=frm("ktgr")%>" style="text-decoration: none"><font color="#990033">&nbsp;<%=frm("ktgr")%>
									</font></a></font></font></td>
									<td width="44%">&nbsp;</td>
									<td width="20%" valign="bottom">
									<p align="right">
									<font face="Georgia" style="font-size: 8pt; font-weight: 700">
									<a style="text-decoration: none underline; font-family: Georgia; font-size: 8pt; color: #000000" href="javascript:void(0);" onClick="fullScreen('devami.asp?id=<%=frm("id")%>');" >
									
									Devamı</a></font></td>
								</tr>
							</table>
						</div>
								</td>
							</tr>
						</table>
					</div>
</td>
<td width="14" background="img/6.gif" height="101">
<font face="Tahoma" style="font-size: 8pt">
<img height="20" src="img/spacer.gif" width="14" border="0"></font></td>
</tr>
<tr>
<td valign="top" width="14">
<img src="img/8.gif" width="14" height="12" border="0"></td>
<td valign="top" width="100%" background="img/10.gif"></td>
<td valign="top" width="14">
<img src="img/9.gif" width="14" height="12" border="0"></td>
</tr>
<%
frm.movenext
next
%>
</table>
</div>

<div align="center">
<table cellspacing="0" cellpadding="0" width="100%" border="0" id="table5">
<tr>
<td valign="top" width="14">
<img src="img/1.gif" width="14" height="12"  border="0"></td>
<td valign="top" width="100%" background="img/2.gif"></td>
<td valign="top" width="14">
<img src="img/3.gif" width="14" height="12"  border="0"></td>
</tr>
<tr>
<td width="14" background="img/4.gif"></td>
<td>
					<div align="center">
						<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" id="table6">
							<tr>
								<td>
								<div align="center">
									<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" id="table7">
										<tr>
											<td>
											<p align="right"><font face="Georgia" style="font-size: 9pt">
											Sayfa Sayısı :&nbsp; </font><b>
											<span style="font-size: 10pt">
											<font face="Georgia">
											&nbsp;<%
for y = 1 to Xsahife
if XSayfa = y then
response.write y
else
%>

											</font>
											</span>

<a href="kategori.asp?Xsayfa=<%=(y)%>&kategori=<%=kategori%>">

											<font color="#000000" style="font-size: 10pt; ">

											<%=(y)%></font></a></font><font face="Georgia" style="font-size: 10pt">

<%
end if
next
%>
											</b>
</td>
										</tr>
									</table>
								</div>
								</td>
							</tr>
						</table>
					</div>
</td>
<td width="14" background="img/6.gif">
<font face="Tahoma" style="font-size: 8pt">
<img height="20" src="img/spacer.gif" width="14" border="0"></font></td>
</tr>
<tr>
<td valign="top" width="14">
<img src="img/8.gif" width="14" height="12" border="0"></td>
<td valign="top" width="100%" background="img/10.gif"></td>
<td valign="top" width="14">
<img src="img/9.gif" width="14" height="12" border="0"></td>
</tr>
</table>
</div>






		
		</td>
	</tr>
	<tr>
		<td width="692" colspan="2">&nbsp;</td>
	</tr>
</table>






<%end if%>

</body>

</html>