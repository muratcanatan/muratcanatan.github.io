<% Response.Buffer = True %>
<!--#include file="baglanti.asp"-->
<html>
<head>
<title>|  Üye Detaı |&gt;</title>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">


<link rel="stylesheet" href="../V_img/style.css" type="text/css">
</head>
<body bgcolor="#F5F5F5" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table border="0" width="100%" cellspacing="0" cellpadding="0" align="center">
  <tr bgcolor="#009900"> 
    <td width="14%" height="25" bgcolor="#FF0000"></td>
    <td height="25" bgcolor="#FF0000"><b><font color="#FFFFFF">Üye Detayı</font></b></td>
    <td height="25" bgcolor="#FF0000">
      <div align="right"><a href="uyeler.asp"><b><font color="#FFFF00" size="2">&lt;&lt;Geri Dön&nbsp;
        </font> </b></a></div>
    </td>
  </tr>
  <tr> 
    <td width="88%" align="center" height="1" colspan="3"> 
      <table border="0" width="100%" cellspacing="0" cellpadding="0" height="198">
        <tr> 
          <td width="20%" height="21">&nbsp;</td>
          <td width="12%" height="21">&nbsp;</td>
          <td width="1%" height="21">&nbsp;</td>
          <td width="67%" height="21">&nbsp;</td>
        </tr>
        <%
            adi = Request.QueryString("adi")
            if adi = "" then
            response.end
            end if
            set yaz = Server.CreateObject("ADODB.RecordSet")
            SQL_yaz ="Select * from uyeler Where adi = '"&adi&"'"
            yaz.open SQL_yaz,bag,1,3
            %>
        <tr> 
          <td colspan="2" height="22"> 
            <div align="right"><b>
              <font size="2" color="#008000" face="Trebuchet MS">Adı </font></b></div>
          </td>
          <td width="3%" height="22" align="center"> 
            <p align="center"><b><font size="1" face="Verdana">:</font> </b> 
          </td>
          <td width="67%" height="22"><b><font size="1" color="#003333"><%=yaz("adi")%></font></b></td>
        </tr>
        <tr> 
          <td colspan="2" height="23"> 
            <div align="right"><b>
              <font size="2" color="#008000" face="Trebuchet MS">Soyadı</font></b></div>
          </td>
          <td width="3%" height="23" align="center"> 
            <div align="center"><b><font size="1" face="Verdana">: </font></b></div>
          </td>
          <td width="67%" height="23"><b><font size="1" color="#003333"><%=yaz("soyadi")%></font></b></td>
        </tr>
        <tr> 
          <td colspan="2" height="22"> 
            <div align="right"><b>
              <font size="2" color="#008000" face="Trebuchet MS">E-mail </font></b></div>
          </td>
          <td width="3%" height="22" align="center"> 
            <div align="center"><b><font size="1" face="Verdana">: </font></b></div>
          </td>
          <td width="67%" height="22"><b><a href="mailto:<%=yaz("email")%>"><font size="1" color="#003333"><%=yaz("email")%></font></a></b></td>
        </tr>
        <tr> 
          <td colspan="2" height="24"> 
            <div align="right"><b>
              <font size="2" color="#008000" face="Trebuchet MS">Web</font></b></div>
          </td>
          <td width="3%" height="24" align="center"> 
            <div align="center"><b><font size="1" face="Verdana">: </font></b></div>
          </td>
          <td width="67%" height="24"><b><a href="<%=yaz("web")%>" target="_blank"><font size="1" color="#003333"><%=yaz("web")%></font></a></b></td>
        </tr>
        <tr> 
          <td colspan="2" height="21"> 
            <div align="right"><b>
              <font size="2" color="#008000" face="Trebuchet MS">Kayıt Tarihi</font></b></div>
          </td>
          <td width="1%" height="21"> 
            <p align="center"><b><font size="1" face="Verdana">: </font></b></p>
          </td>
          <td width="67%" height="21"><b><font color="#003333" size="1"><%=yaz("tarih")%> 
            - <%=yaz("saat")%></font></b></td>
        </tr>
        <tr> 
          <td width="20%" height="21"></td>
          <td width="12%" height="21"></td>
          <td width="1%" height="21"></td>
          <td width="67%" height="21">&nbsp;</td>
        </tr>
      </table>
    </td>
  </tr>
</table>
</body>

</html>