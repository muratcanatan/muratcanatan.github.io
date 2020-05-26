<%
set baglan = server.createobject("adodb.connection")
baglan.open "driver={microsoft access driver (*.mdb)}; dbq=" & server.mappath("admin/frm.mdb")
%>

<%
set frm = server.createobject("adodb.recordset")
frm.open " select * from sonuc order by id desc " ,baglan,1,3
%>

<%
Xsayfa = request.querystring("Xsayfa")
if Xsayfa = "" then
Xsayfa = 1
end if
%>

<html>

<head>
<meta http-equiv="Content-Language" content="tr">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<title>Test No</title>
</head>

<body>
&nbsp;&nbsp;&nbsp;&nbsp; <a href="default.asp">Anasayfa</a><div align="left">
	<table width="100%" border="3" bordercolor="#0099FF" id="table1">
<tr>
			<td width="96%" bgcolor="#C0C0C0" colspan="10">
			
<table border="1" width="100%" id="table2">
	<tr>
		<td>
			
<p align="center">GENEL TEST DÖKÜMÜ
			
			
			
			&nbsp;</td>
		<td>
		
		<INPUT TYPE="BUTTON" VALUE="Kapat" 
NAME="lowerButton" onClick="self.close()" style="float: right"> 

		
		</td>
		</tr>
	</table>
</td>
		</tr>

		<tr>
			<td width="6%" bgcolor="#C0C0C0">Test No</td>
			<td width="13%" bgcolor="#C0C0C0">Adı</td>
			<td width="14%" bgcolor="#C0C0C0">Soyadı</td>
			<td width="11%" bgcolor="#C0C0C0">Kategori</td>
			<td width="4%" bgcolor="#C0C0C0">Puanı </td>
			<td width="4%" bgcolor="#C0C0C0">Doğru</td>
			<td width="2%" bgcolor="#C0C0C0">Yanlış </td>
			<td width="2%" bgcolor="#C0C0C0">Boş</td>
			<td bgcolor="#C0C0C0" width="28%">&nbsp;Açıklama</td>
			<td bgcolor="#C0C0C0" width="12%">&nbsp;Tarih/Saat</td>
		</tr>

		<%
frm.pagesize = 10
frm.absolutepage = Xsayfa
Xsahife = frm.pagecount
for i =1 to frm.pagesize
if frm.eof then exit for
%>

		<tr>
			<td width="6%"><%=frm("testid")%></td>
			<td width="13%"><%=frm("adi")%></td>
			<td width="14%"><%=frm("soyadi")%></td>
			<td width="11%"><%=frm("kategori")%></td>
			<td width="4%"><%=left(frm("puan"),5)%></td>
			<td width="4%"><%=frm("dogru")%></td>
			<td width="2%"><%=frm("yanlis")%></td>
			<td width="2%"><%=frm("bos")%></td>
			<td><%=frm("aciklama")%></td>
			<td><%=frm("tarih")%>&nbsp;-<%=frm("saat")%></td>
			

	
<%
frm.movenext
next
%>		</tr>
	</table>
</div>

								<td>



								<align="left"><font face="Georgia" style="font-size: 9pt">
								Sayfa Sayısı :&nbsp;&nbsp;
<%
for y = 1 to Xsahife
if Xsayfa = y then
response.write y
else
response.write " <b> <a href=""dokum.asp?Xsayfa="&y&""">"&y&"</a></b>"
end if
next
%> </font></td>
							</tr>
</body>

</html>