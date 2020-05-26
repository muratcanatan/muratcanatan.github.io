<%@LANGUAGE="VBSCRIPT" CODEPAGE="1254"%>

<%
set baglan = server.createobject("adodb.connection")
baglan.open "driver={microsoft access driver (*.mdb)}; dbq=" & server.mappath("admin/frm.mdb")
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-9" />
<meta http-equiv="refresh" content="3;url=dokum.asp" target="_parent">

<title>TAMAMLANDI</title>
</head>

<body>

<table width="975" height="186" border="3" cellpadding="0" cellspacing="0" bordercolor="#0099FF">
  <!--DWLayoutDefaultTable-->
  <tr>
    <td height="95" align="center" valign="top">
    
    
    &nbsp;<p><b>
    
<p align="center">&nbsp;
</p>
<p align="center">
LÜTFEN BEKLEYİNİZ...</p>
<p align="center">
<img border="0" src="yukleniyor.gif" width="145" height="12"></p>
    
    
    DEĞERLENDİRMENİZ 
	YAPILMIŞTIR...TÜM SONUÇLAR İÇİN YÖNLENDİRİLİYORSUNUZ</b></p>
	<p>
	<b>ANA SAYFAYA DÖNMEK İÇİN <a href="default.asp">TIKLAYINIZ...</a></b></p>
    <p>
    
    <%
set frm = server.createobject("adodb.recordset")
frm.open " select * from sonuc order by id desc " ,baglan,1,3
%>

<% dim squl, rec

set rec=server.CreateObject("ADODB.Recordset")

squl="SELECT * From sonuc"

rec.open squl,Baglan, 1,3
rec.addnew

			rec("testid") =Request.Form("testid")
			rec("adi") =Request.Form("adi")
			rec("soyadi") =Request.Form("soyadi")
			rec("kategori") =Request.Form("kategori")
			rec("aciklama") =Request.Form("aciklama")
			rec("tarih") =Request.Form("tarih")
			rec("saat") =Request.Form("saat")
			rec("sure") =Request.Form("sure")
			rec("dogru") =Request.Form("dogru")
			rec("yanlis") =Request.Form("yanlis")
			rec("puan") =Request.Form("puan")
			rec("tarih") =Request.Form("tarih")
			rec("bos") =Request.Form("bos")
rec.update

adres = Request.ServerVariables("HTTP_REFERER")
%>    </p>
    
 <script type="text/javascript">
	<!--
	function exec_refresh()
	{
		window.status = "Yönlendiriliyor..." + myvar;
		myvar = myvar + " .";
		var timerID = setTimeout("exec_refresh();", 200);
		if (timeout > 0)
		{
			timeout -= 1;
		}
		else
		{
			clearTimeout(timerID);
			window.status = "";
			window.location = "<%=adres%>";
		}
	}
	
	var myvar = "";
	var timeout = 20;
	exec_refresh();
	//-->
	</script>
   
    
    </td>
  </tr>
	
</table>
</body>
</html>