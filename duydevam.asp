<%
set baglan = server.createobject("adodb.connection")
baglan.open "driver={microsoft access driver (*.mdb)}; dbq=" & server.mappath("admin/frm.mdb")
%>
<%
id=request.querystring("id")
set frm = server.createobject("adodb.recordset")
frm.open " select * from duyuru where id=" &id  ,baglan,1,3
%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<title><%=frm("baslik")%></title>
</head>

<body>
    
<div align="center">

<table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#0099FF" id="table5">

<tr>
<td valign="top" width="14">
<img src="img/1.gif" width="14" height="12"  border="0"></td>
<td valign="top" width="1198" background="img/2.gif"></td>
<td valign="top" width="14">
<img src="img/3.gif" width="14" height="12"  border="0"></td>
</tr>
<tr>
<td width="14" background="img/4.gif" height="136"></td>
<td height="136">
					<div align="center">
						<table width="100%" height="135" border="3" cellpadding="0" bordercolor="#0099FF" id="table6" style="border-collapse: collapse">
			  <tr>
								<td valign="top" height="21">
								<div align="center">
									<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" id="table7" height="22">
										<tr>
											<td width="100%" bgcolor="#F7F7F7" align="left">
											<span lang="en-us"><b>
											<font face="Georgia" style="font-size: 13pt" color="#CC0000">&nbsp;»</font></b></span><b><font face="Georgia" color="#CC0000" style="font-size: 13pt">&nbsp;<%=frm("baslik")%></font></b></td>
										</tr>
									</table>
								</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
						<font face="Georgia" style="font-size: 8pt; ">&nbsp;&nbsp; <br><%=frm("icerik")%></font></td>
							</tr>
							<tr>
								<td valign="top" height="23">
						<div align="center">
							<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" id="table8">
								<tr>
									<td width="50%" valign="bottom" align="center">
									<b>
<a style="text-decoration: none" href="JavaScript:onClick=%20window.close()">[ KAPAT ]</a></b>
									
									</td>
									<td width="50%" valign="bottom" align="center">
									<font face="Georgia" style="font-size: 8pt">
											Tarihi :&nbsp;<%=frm("tarih")%></font></td>
								</tr>
							</table>
						</div>
								</td>
							</tr>
						</table>
		</div>
</td>
<td width="14" background="img/6.gif" height="136">
<font face="Tahoma" style="font-size: 8pt">
<img height="20" src="img/spacer.gif" width="14" border="0"></font></td>
</tr>
<tr>
<td valign="top" width="14">
<img src="img/8.gif" width="14" height="12" border="0"></td>
<td valign="top" width="1198" background="img/10.gif"></td>
<td valign="top" width="14">
<img src="img/9.gif" width="14" height="12" border="0"></td>
</tr>

</table>
</div>
</body>
</html>