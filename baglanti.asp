<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">


<%
if len(session("uid")) = 0 then
Session("uid") = Request.Cookies("uyeler")("uid")
Session("kullaniciadi") = Request.Cookies("uyeler")("kullaniciadi")
Session("uid") = Request.Cookies("uyeler")("uid")
end if
Set bag = Server.CreateObject("ADODB.Connection")
bag.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("admin/frm.mdb")
%>