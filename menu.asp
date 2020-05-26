<%
set baglan = server.createobject("adodb.connection")
baglan.open "driver={microsoft access driver (*.mdb)}; dbq=" & server.mappath("admin/frm.mdb")
%>

<table width="100%"  border="1" cellpadding="3" cellspacing="0" bordercolor="#E6E6E6" style="border-collapse:collapse">
      <tr bgColor="#000000" onMouseOver="bgColor='#FFFFFF'" onMouseOut="bgColor='#000000'">
        <td align="left"><strong>
		<a style="color:#C0C0C0; text-decoration:none" href="default.asp">Anasayfa</a></strong></td>
      </tr>

  
<%
Set gkn = Server.CreateObject("ADODB.Recordset")
sor = "Select * from kategori order by id desc"
gkn.Open sor,baglan,1,3
%>
<%
do while not gkn.eof
%>
      <tr bgColor="#000000" onMouseOver="bgColor='#FFFFFF'" onMouseOut="bgColor='#000000'">
        <td align="left"><b>
		<a style="color:#C0C0C0;text-decoration:none"  href="kategori.asp?kategori=<%=gkn("kategori")%>"><%=gkn("kategori")%></a></b></td>
      </tr>
	  			<%
gkn.movenext
Loop
%>

<tr bgColor="#000000" onMouseOver="bgColor='#FFFFFF'" onMouseOut="bgColor='#000000'">
        <td align="left"><strong>
		<a style="color:#C0C0C0; text-decoration:none" href="admin/default.asp">Yönetim Paneli</a></strong></td>
      </tr>

    </table>
