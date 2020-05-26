<% 
 Session("uid")=""
 Session.Abandon
Response.Cookies("uyeler").Expires = now() - 1
if  Request.ServerVariables("HTTP_REFERER")<>"" then
 Response.redirect Request.ServerVariables("HTTP_REFERER")
 else
 response.redirect "panel.asp"
 end if
%>