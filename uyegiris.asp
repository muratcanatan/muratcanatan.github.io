<% response.buffer = True %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>�ye Giri�i</title>
</head>
<!--#include file="baglanti.asp"-->
<body bgcolor="#F5F5F5">
<%
kullaniciadi = request.form("kullaniciadi")
sifre = request.form("sifre")
if sifre="" or sifre="" then
response.write "<font face=Verdana, Arial, Helvetica, sans-serif size=2> L�tfen kullan�c� ad� ve �ifrenizi girin. </font>"
response.end
else

Set uset = Server.CreateObject("ADODB.Recordset")
SQL = "select * from uyeler where kullaniciadi = '" & kullaniciadi & "'"
uset.open SQL,bag,1,3

if uset.eof then 
response.write "<font face=Verdana, Arial, Helvetica, sans-serif size=2> Girmi� oldu�unuz kullan�c� ad� ve �ifre ile ilgili bir kay�t bulunmamaktad�r.</font>" 
response.end
else

uset.movefirst
if uset("sifre") <> sifre then
response.write "<font face=Verdana, Arial, Helvetica, sans-serif size=2> �ifrenizi kontrol edip tekrar deneyiniz. </font>"
response.end
else

Response.cookies("mesajbox")("uid") = uset("uid")
Response.cookies("mesajbox")("kullaniciadi") = kullaniciadi
Response.cookies("mesajbox")("id") = session.sessionid
Response.Cookies("mesajbox").Expires = now() + 3650

Session("uid") = uset("uid")
Session("kullaniciadi") = kullaniciadi
Session("id") = session.sessionid

if Request.ServerVariables("HTTP_REFERER") <> "" then
response.redirect Request.ServerVariables("HTTP_REFERER")
else


response.redirect "default.asp"
end if
uset.close
set uset = Nothing
end if
end if
end if
%>


</body>

</html>