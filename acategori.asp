<div align="center">
<table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" id="table5">
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
<table width="100%"><tr><td align=center>..::KATEGORÝLER::..
</td></tr></table>


<%
set baglanti = Server.CreateObject("ADODB.Connection")
baglanti.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("admin/frm.mdb"))
%> 
<%
MM_connDUgallery_STRING = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("admin/frm.mdb") %>

<%
set rsCat = Server.CreateObject("ADODB.Recordset")
rsCat.ActiveConnection = MM_connDUgallery_STRING
rsCat.Source = "SELECT *, (SELECT COUNT(*) FROM test WHERE ktgr = kategori) AS PIC_COUNT  FROM kategori ORDER BY kategori"
rsCat.CursorType = 0
rsCat.CursorLocation = 2
rsCat.LockType = 3
rsCat.Open()
rsCat_numRows = 0
%>


<head>

<STYLE>
BODY {
	FONT-FAMILY: verdana,arial,helvetica,sans-serif;
	FONT-SIZE: 14px;
}
P {
	FONT-FAMILY: verdana,arial,helvetica,sans-serif; FONT-SIZE: 14px
}
DIV {
	FONT-FAMILY: verdana,arial,helvetica,sans-serif; FONT-SIZE: 14px
}
SPAN {
	FONT-FAMILY: verdana,arial,helvetica,sans-serif; FONT-SIZE: 14px
}
TH {
	FONT-FAMILY: verdana,arial,helvetica,sans-serif; FONT-SIZE: 14px
}
TD {
	FONT-FAMILY: verdana,arial,helvetica,sans-serif; FONT-SIZE: 14px
}
MARQUEE {
	FONT-FAMILY: verdana,arial,helvetica,sans-serif; FONT-SIZE: 14px
}
font {  }
table {  }
tr {  }
a:link {
	text-decoration: none;
	color: #000000;
	font-size: 14px;
}
hr {  color: #3399FF}
a:visited {
	color: #333333;
	text-decoration: none;
	font-size: 14px;
}
a:active {
	color: #000000;
	text-decoration: none;
	font-size: 14px;
}
a:hover {
	color: #0066FF;
	text-decoration: none;
	font-size: 16px;
}
.sol_ok {
	font-size: 9px;
	font-family: Arial, Helvetica, sans-serif;
}
.sol_menuler  {
	font-size: 16px;
	font-weight: normal;
	color: #006699;
	font-family: "Century Gothic", "lucida console", "Lucida Sans Unicode", verdana, sans-serif;
}
input {
	font-family: verdana;
	font-size: 16px;
}
</STYLE>



</head>
<a href="default.asp"><b>(_) Anasayfa</b></a>
<hr>
          <%
startrw = 0
endrw = HLooper1__index
numberColumns = 1
numrows = -1
while((numrows <> 0) AND (Not rsCat.EOF))
	startrw = endrw + 1
	endrw = endrw + numberColumns
 %>
       
            <%
While ((startrw <= endrw) AND (Not rsCat.EOF))
%>



 
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="baslik">
              <tr> 
              
<td onmouseover="style.backgroundColor='#eaeee3';" onmouseout="style.backgroundColor='#ffffff'; background=''"><b>
<a class="thumbnail" href="kategori.asp?kategori=<%=rsCat("kategori")%>">(<%=(rsCat.Fields.Item("PIC_COUNT").Value)%>)&nbsp;<%=(rsCat.Fields.Item("kategori").Value)%></a></font></b>
<hr>
</td>
              </tr>

            </table>
   

            <%
	startrw = startrw + 1
	rsCat.MoveNext()
	Wend
	%>

          <%
 numrows=numrows-1
 Wend
 %>

<%
rsCat.Close()
%>

<a href="admin/default.asp"><b>(_) Yönetim Paneli</b></a>
<hr>

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