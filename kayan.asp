<%
set baglan = server.createobject("adodb.connection")
baglan.open "driver={microsoft access driver (*.mdb)}; dbq=" & server.mappath("admin/frm.mdb")
%>

<%
set frm = server.createobject("adodb.recordset")
frm.open " select * from test order by id desc " ,baglan,1,3
%>



<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<title>kayar</title>
</head>

<body>

<table width="100%" border="3" bordercolor="#0099FF" id="table1">
<tr bgColor="#F2F2F2" onMouseOver="bgColor='#FFFFFF'" onMouseOut="bgColor='#F2F2F2'">
		<td>Son Sınavlar</td>
		<td width="685">

<marquee onMouseOver="this.stop()" onMouseOut="this.start()" width="674" height="19" scrollamount="4">
			<%for i = 1 to 5
if frm.eof then exit for%>
<a href="depo/quiz/devami.asp?id=<%=frm("id")%>" target=_blank>

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

</body>

</html>