<%@LANGUAGE="VBSCRIPT" CODEPAGE="1254"%>
<%
Response.ContentType = "application/vnd.ms-excel"
Response.Expires = 0
%>

<%
if len(session("uid")) = 0 then
Session("uid") = Request.Cookies("uyeler")("uid")
Session("kullaniciadi") = Request.Cookies("uyeler")("kullaniciadi")
Session("uid") = Request.Cookies("uyeler")("uid")
end if
Set bag = Server.CreateObject("ADODB.Connection")
bag.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("admin/frm.mdb")
%>
<%
Set rs = Server.Createobject("ADODB.Recordset")
rs.Open "SELECT * FROM test order by id asc" ,BAG,1,3
while not rs.eof
%>
<%
Response.Write("<"&"table border=0 width=100% id=table1"&">")
%>
		
Test No:	&nbsp;<%=rs("id")&vbCrLf%>
Tarih:		&nbsp;<%=rs("tarih")&vbCrLf%>
Kategori:	&nbsp;<%=rs("kategori")&vbCrLf%>
Aç&#305;klama:	&nbsp;<%=rs("aciklama")&vbCrLf%><%Response.Write("<"&"/table>")%><%rs.movenext
wend%>