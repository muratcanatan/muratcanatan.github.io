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
<table width="100%"><tr><td align=center>..::DUYURULAR::..
</td></tr></table>


<%
set baglan = server.createobject("adodb.connection")
baglan.open "driver={microsoft access driver (*.mdb)}; dbq=" & server.mappath("admin/frm.mdb")
%>

<%
set duyfrm = server.createobject("adodb.recordset")
duyfrm.open " select * from duyuru order by id desc " ,baglan,1,3
%>



<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<title>kayar</title>
</head>

<body>

<table width="100%" border="3" bordercolor="#0099FF" id="table1">
<tr bgColor="#F2F2F2" onMouseOver="bgColor='#FFFFFF'" onMouseOut="bgColor='#F2F2F2'">
		<td>
<marquee onmouseover="this.stop()" onmouseout="this.start()" width="199" height="119" direction=up scrollamount="2">
			<%for i = 1 to 5
if duyfrm.eof then exit for%>

<span style="text-decoration: none; font-weight: 700">
<a href="javascript:void window.open('duydevam.asp?id=<%=duyfrm("id")%>','','width=300,height=200,scrollbars=1')">



<font face="webdings" style="font-size: 18pt" color="#993300">&nbsp;U</font>




<font face="Times New Roman" style="font-size: 10pt" color="#993300">
<%=duyfrm("baslik")%></a>
</font><br /><br />
<%duyfrm.movenext
next
%>
</marquee>
		</td>
	</tr>
</table>

</body>

</html>


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