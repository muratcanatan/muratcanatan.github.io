<%
set baglan = server.createobject("adodb.connection")
baglan.open "driver={microsoft access driver (*.mdb)}; dbq=" & server.mappath("admin/frm.mdb")
%>

<html>
<head>
<title>Test Sonu�lar�</title>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">

</head>

<body bgcolor="#FFFFFF" link="#0000FF" vlink="#0000FF" alink="#0000FF">

<script language="JavaScript">
document.onmousedown=click 
var times=0;

function click(){ 
 if ((event.button==2) || (event.button==3)) { 
   alert("L�tfen Synav Sonu�larynyz ile ilgileniniz..."); 
   if (times>=1) { sarsinti(); }    
   times++;
 }// if
} // click

function sarsinti(){
 alert("Bilgisayar�n�za ve g�zlerinize verece�imiz rahats�zl�ktan �t�r� �z�r dileriz...!"); 
  var i=0;
  var ix=1;
     do {
         i+=ix;
         window.moveTo(i,i);
         if(i==10 || i==0){ix=-ix;}
     }while(i<12);
} //sarsinti
// -->
</script>  



<form method="Post" action="sonuc_ekle_isle.asp">
<center>
<div> <table  border="0" width="100%">
		<tr>
			<td>
			<p align="center" style="margin-top: 0; margin-bottom: 0"><b>CEVAPLARINIZ ��LEND� PUAN DURUMUNUZU VE SONU�LARINIZI G�RMEK ���N TIKLAYINIZ...
			</b></p>
			<p align="center" style="margin-top: 0; margin-bottom: 0">
			<input type="submit" name="Submit" value="    SONU�LARI G�R�NT�LE   " /></td>
		</tr>
	</table></div>

  <table width="86%" border="3" cellpadding="0" cellspacing="0" bordercolor="#0099FF">
    <tr bgcolor="#6666FF"> 
      <td colspan="3" height="23"> 
        <center>
          <b><font size="4" face="Times New Roman" color="#FFFFFF">TEST SONU�LARI</font></b> 
        </center>
      </td>
    </tr>
    <tr> 
      <td width="15%" style="border-bottom-style: solid; border-bottom-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>Soru-1:</b></font></td>
      <td width="26%" style="border-bottom-style: solid; border-bottom-width: 1px"><font face="Times New Roman" size="2">



<%
id=request.querystring("id")
set frm = server.createobject("adodb.recordset")
yol = "select * from test where id=" &id
frm.open yol,baglan,1,3


%>


      <%
dim dsayac, ysayac, bsayac
dsayac=0
ysayac=0
bsayac=0




if Request.Form("soru1")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.1")
elseif Request.Form("soru1")=(frm("1")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("1"))) 
else
Response.Write((("Yanl��.1")))
ysayac=ysayac+1
end if

%> </font></td>
     <td width="58%" rowspan="20" align="center" valign="top">


       <p><img src="admin/<%=frm("soru")%>" alt="" width="491"></p>
      </td>
    </tr>
    



<% if (frm("2"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>Soru-2: 
        </b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru2")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.2")
elseif Request.Form("soru2")=(frm("2")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("2"))) 
else
Response.Write((("Yanl��.2")))
ysayac=ysayac+1
end if
%> </font></td>
    </tr>

<%end if%>


<% if (frm("3"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>Soru-3: 
        </b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru3")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.3")
elseif Request.Form("soru3")=(frm("3")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("3")))  
else
Response.Write((("Yanl��.3")))
ysayac=ysayac+1
end if
%> </font></td>
    </tr>
<%end if%>


<% if (frm("4"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>Soru-4:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru4")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.4")
elseif Request.Form("soru4")=(frm("4")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("4"))) 
else
Response.Write((("Yanl��.4")))
ysayac=ysayac+1
end if
%> </font></td>
    </tr>
<%end if%>


<% if (frm("5"))<>"" then%> 
   <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>Soru-5:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru5")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.5")
elseif Request.Form("soru5")=(frm("5")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("5"))) 
else
Response.Write((("Yanl��.5")))
ysayac=ysayac+1
end if
%> </font></td>
    </tr>

<%end if%>


<% if (frm("6"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>Soru-6:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru6")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.6")
elseif Request.Form("soru6")=(frm("6")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("6"))) 
else
Response.Write((("Yanl��.6")))
ysayac=ysayac+1
end if
%> </font></td>
    </tr>
<%end if%>


<% if (frm("7"))<>"" then%>

    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>Soru-7:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru7")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.7")
elseif Request.Form("soru7")=(frm("7")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("7"))) 
else
Response.Write((("Yanl��.7")))
ysayac=ysayac+1
end if
%> </font></td>
    </tr>

<%end if%>


<% if (frm("8"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>Soru-8:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru8")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.8")
elseif Request.Form("soru8")=(frm("8")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("8"))) 
else
Response.Write((("Yanl��.8")))
ysayac=ysayac+1
end if
%> </font></td>
    </tr>
<%end if%>


<% if (frm("9"))<>"" then%>   

 <tr> 
      <td width="15%" height="13" style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b> 
        Soru-9:</b></font></td>
      <td height="13" style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru9")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.9")
elseif Request.Form("soru9")=(frm("9")) then
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("9"))) 
else
Response.Write((("Yanl��.9")))
ysayac=ysayac+1
end if
%> </font></td>
    </tr>
<%end if%>


<% if (frm("10"))<>"" then%> 
   <tr> 
      <td width="15%" height="18" style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>Soru-10:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru10")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.10")
elseif Request.Form("soru10")=(frm("10")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("10"))) 
else
Response.Write((("Yanl��.10")))
ysayac=ysayac+1
end if
%> </font></td>
    </tr>
<%end if%>


<% if (frm("11"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>Soru-11:</b> 
        </font></td>
      <td style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru11")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.11")
elseif Request.Form("soru11")=(frm("11")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru:"&(frm("11"))) 
else
Response.Write((("Yanl��.11")))
ysayac=ysayac+1
end if
%> </font></td>
    </tr>
<%end if%>


<% if (frm("12"))<>"" then%> 

   <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>Soru-12:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru12")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.12")
elseif Request.Form("soru12")=(frm("12")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("12"))) 
else
Response.Write((("Yanl��.12")))
ysayac=ysayac+1
end if
%> </font></td>
    </tr>
<%end if%>


<% if (frm("13"))<>"" then%>   

 <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>Soru-13:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru13")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.13")
elseif Request.Form("soru13")=(frm("13")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("13"))) 
else
Response.Write((("Yanl��.13")))
ysayac=ysayac+1
end if
%> </font></td>
    </tr>
<%end if%>


<% if (frm("14"))<>"" then%>   

 <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>Soru-14:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru14")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.14")
elseif Request.Form("soru14")=(frm("14")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru:"&(frm("14"))) 
else
Response.Write((("Yanl��.14")))
ysayac=ysayac+1
end if
%> </font></td>
    </tr>
    
    <%end if%>


<% if (frm("15"))<>"" then%>
    
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>Soru-15:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru15")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.15")
elseif Request.Form("soru15")=(frm("15")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("15"))) 
else
Response.Write((("Yanl��.15")))
ysayac=ysayac+1
end if
%> </font></td>
    </tr>

<%end if%>


<% if (frm("16"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>Soru-16:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru16")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.16")
elseif Request.Form("soru16")=(frm("16")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("16"))) 
else
Response.Write((("Yanl��.16")))
ysayac=ysayac+1
end if
%> </font></td>
    </tr>

<%end if%>


<% if (frm("17"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>Soru-17:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru17")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.17")
elseif Request.Form("soru17")=(frm("17")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru:"&(frm("17"))) 
else
Response.Write((("Yanl��.17")))
ysayac=ysayac+1
end if
%> </font></td>
    </tr>

<%end if%>


<% if (frm("18"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>Soru-18:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru18")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.18")
elseif Request.Form("soru18")=(frm("18")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru:"&(frm("18"))) 
else
Response.Write((("Yanl��.18")))
ysayac=ysayac+1
end if
%> </font></td>
    </tr>

<%end if%>


<% if (frm("19"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px">
      <font color="#0000FF" size="2" face="Times New Roman"><b>Soru-19:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"><font size="2" face="Times New Roman">
<%
if Request.Form("soru19")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.19")
elseif Request.Form("soru19")=(frm("19")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("19"))) 
else
Response.Write((("Yanl��.19")))
ysayac=ysayac+1
end if
%> </font></td>
    </tr>
<%end if%>


<% if (frm("20"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>
		Soru-20:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru20")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.20")
elseif Request.Form("soru20")=(frm("20")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("20"))) 
else
Response.Write((("Yanl��.20")))
ysayac=ysayac+1
end if 
%> </font></td>
    </tr>
<%end if%>


<% if (frm("21"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>
		Soru-21:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru21")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.21")
elseif Request.Form("soru21")=(frm("21")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("21"))) 
else
Response.Write((("Yanl��.21")))
ysayac=ysayac+1
end if 
%> </font></td>
    </tr>
<%end if%>



<% if (frm("22"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>
		Soru-22:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru22")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.22")
elseif Request.Form("soru22")=(frm("22")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru:"&(frm("22"))) 
else
Response.Write((("Yanl��.22")))
ysayac=ysayac+1
end if 
%> </font></td>
    </tr>
<%end if%>




<% if (frm("23"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>
		Soru-23:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru23")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.23")
elseif Request.Form("soru23")=(frm("23")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("23"))) 
else
Response.Write((("Yanl��.23")))
ysayac=ysayac+1
end if 
%> </font></td>
    </tr>
<%end if%>




<% if (frm("24"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>
		Soru-24:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru24")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.24")
elseif Request.Form("soru24")=(frm("24")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("24"))) 
else
Response.Write((("Yanl��.24")))
ysayac=ysayac+1
end if 
%> </font></td>
    </tr>
<%end if%>




<% if (frm("25"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>
		Soru-25:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru25")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.25")
elseif Request.Form("soru25")=(frm("25")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("25"))) 
else
Response.Write((("Yanl��.25")))
ysayac=ysayac+1
end if 
%> </font></td>
    </tr>
<%end if%>




<% if (frm("26"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>
		Soru-26:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru26")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.26")
elseif Request.Form("soru26")=(frm("26")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru:"&(frm("26"))) 
else
Response.Write((("Yanl��.26")))
ysayac=ysayac+1
end if 
%> </font></td>
    </tr>
<%end if%>




<% if (frm("27"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>
		Soru-27:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru27")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.27")
elseif Request.Form("soru27")=(frm("27")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru:"&(frm("27"))) 
else
Response.Write((("Yanl��.27")))
ysayac=ysayac+1
end if 
%> </font></td>
    </tr>
<%end if%>




<% if (frm("28"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>
		Soru-28:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru28")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.28")
elseif Request.Form("soru28")=(frm("28")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru:"&(frm("28"))) 
else
Response.Write((("Yanl��.28")))
ysayac=ysayac+1
end if 
%> </font></td>
    </tr>
<%end if%>




<% if (frm("29"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>
		Soru-29:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru29")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.29")
elseif Request.Form("soru29")=(frm("29")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("29"))) 
else
Response.Write((("Yanl��.29")))
ysayac=ysayac+1
end if 
%> </font></td>
    </tr>
<%end if%>




<% if (frm("30"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>
		Soru-30:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru30")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.30")
elseif Request.Form("soru30")=(frm("30")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("30"))) 
else
Response.Write((("Yanl��.30")))
ysayac=ysayac+1
end if 
%> </font></td>
    </tr>
<%end if%>




<% if (frm("31"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>
		Soru-31:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru31")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.31")
elseif Request.Form("soru31")=(frm("31")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("31"))) 
else
Response.Write((("Yanl��.31")))
ysayac=ysayac+1
end if 
%> </font></td>
    </tr>
<%end if%>




<% if (frm("32"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>
		Soru-32:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru32")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.32")
elseif Request.Form("soru32")=(frm("32")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("32"))) 
else
Response.Write((("Yanl��.32")))
ysayac=ysayac+1
end if 
%> </font></td>
    </tr>
<%end if%>




<% if (frm("33"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>
		Soru-33:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru33")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.33")
elseif Request.Form("soru33")=(frm("33")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("33"))) 
else
Response.Write((("Yanl��.33")))
ysayac=ysayac+1
end if 
%> </font></td>
    </tr>
<%end if%>




<% if (frm("34"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>
		Soru-34:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru34")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.34")
elseif Request.Form("soru34")=(frm("34")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("34"))) 
else
Response.Write((("Yanl��.34")))
ysayac=ysayac+1
end if 
%> </font></td>
    </tr>
<%end if%>




<% if (frm("35"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>
		Soru-35:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru35")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.35")
elseif Request.Form("soru35")=(frm("35")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru:"&(frm("35"))) 
else
Response.Write((("Yanl��.35")))
ysayac=ysayac+1
end if 
%> </font></td>
    </tr>
<%end if%>




<% if (frm("36"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>
		Soru-36:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru36")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.36")
elseif Request.Form("soru36")=(frm("36")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("36"))) 
else
Response.Write((("Yanl��.36")))
ysayac=ysayac+1
end if 
%> </font></td>
    </tr>
<%end if%>




<% if (frm("37"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>
		Soru-37:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru37")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.37")
elseif Request.Form("soru37")=(frm("37")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru:"&(frm("37"))) 
else
Response.Write((("Yanl��.37")))
ysayac=ysayac+1
end if 
%> </font></td>
    </tr>
<%end if%>




<% if (frm("38"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>
		Soru-38:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru38")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.38")
elseif Request.Form("soru38")=(frm("38")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru:"&(frm("38"))) 
else
Response.Write((("Yanl��.38")))
ysayac=ysayac+1
end if 
%> </font></td>
    </tr>
<%end if%>




<% if (frm("39"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>
		Soru-39:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru39")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.39")
elseif Request.Form("soru39")=(frm("39")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("39"))) 
else
Response.Write((("Yanl��.39")))
ysayac=ysayac+1
end if 
%> </font></td>
    </tr>
<%end if%>




<% if (frm("40"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>
		Soru-40:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru40")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.40")
elseif Request.Form("soru40")=(frm("40")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("40"))) 
else
Response.Write((("Yanl��.40")))
ysayac=ysayac+1
end if 
%> </font></td>
    </tr>
<%end if%>




<% if (frm("41"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>
		Soru-41:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru41")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.41")
elseif Request.Form("soru41")=(frm("41")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru:"&(frm("41"))) 
else
Response.Write((("Yanl��.41")))
ysayac=ysayac+1
end if 
%> </font></td>
    </tr>
<%end if%>




<% if (frm("42"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>
		Soru-42:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru42")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.42")
elseif Request.Form("soru42")=(frm("42")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("42"))) 
else
Response.Write((("Yanl��.42")))
ysayac=ysayac+1
end if 
%> </font></td>
    </tr>
<%end if%>




<% if (frm("43"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>
		Soru-43:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru43")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.43")
elseif Request.Form("soru43")=(frm("43")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru:"&(frm("43"))) 
else
Response.Write((("Yanl��.43")))
ysayac=ysayac+1
end if 
%> </font></td>
    </tr>
<%end if%>




<% if (frm("44"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>
		Soru-44:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru44")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.44")
elseif Request.Form("soru44")=(frm("44")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("44"))) 
else
Response.Write((("Yanl��.44")))
ysayac=ysayac+1
end if 
%> </font></td>
    </tr>
<%end if%>




<% if (frm("45"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>
		Soru-45:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru45")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.45")
elseif Request.Form("soru45")=(frm("45")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("45"))) 
else
Response.Write((("Yanl��.45")))
ysayac=ysayac+1
end if 
%> </font></td>
    </tr>
<%end if%>




<% if (frm("46"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>
		Soru-46:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru46")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.46")
elseif Request.Form("soru46")=(frm("46")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("46"))) 
else
Response.Write((("Yanl��.46")))
ysayac=ysayac+1
end if 
%> </font></td>
    </tr>
<%end if%>




<% if (frm("47"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>
		Soru-47:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru47")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.47")
elseif Request.Form("soru47")=(frm("47")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("47"))) 
else
Response.Write((("Yanl��.47")))
ysayac=ysayac+1
end if 
%> </font></td>
    </tr>
<%end if%>




<% if (frm("48"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>
		Soru-48:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru48")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.48")
elseif Request.Form("soru48")=(frm("48")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("48"))) 
else
Response.Write((("Yanl��.48")))
ysayac=ysayac+1
end if 
%> </font></td>
    </tr>
<%end if%>




<% if (frm("49"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>
		Soru-49:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru49")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.49")
elseif Request.Form("soru49")=(frm("49")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("49"))) 
else
Response.Write((("Yanl��.49")))
ysayac=ysayac+1
end if 
%> </font></td>
    </tr>
<%end if%>




<% if (frm("50"))<>"" then%>
    <tr> 
      <td width="15%" style="border-top-style: solid; border-top-width: 1px"><font color="#0000FF" size="2" face="Times New Roman"><b>
		Soru-50:</b></font></td>
      <td style="border-top-style: solid; border-top-width: 1px"><font size="2" face="Times New Roman"><%
if Request.Form("soru50")="" then
bsayac=bsayac+1
Response.Write("Bo� B�rakt�n�z.50")
elseif Request.Form("soru50")=(frm("50")) then 
dsayac=dsayac+1
Response.Write("Cevab�n�z Do�ru :"&(frm("50"))) 
else
Response.Write((("Yanl��.50")))
ysayac=ysayac+1
end if 
%> </font></td>
    </tr>
<%end if%>

<!--#INCLUDE FILE="baglanti.asp"-->
<%
Set uset = Server.CreateObject("ADODB.RecordSet")
SQL = "Select * from uyeler Where uid = "&session("uid")
uset.open SQL,bag,1,3
%>

    <tr>
<td height="10" style="visibility: hidden" colspan="3">
      <table border="0" width="100%" id="table1">
		<tr>
			<td>
      <input type="text" name="testid" size="0"value="<%=frm("id")%>" >
      <input type="text" name="adi" size="0"value="<%=uset("adi")%>" >
      <input type="text" name="soyadi" size="0"value="<%=uset("soyadi")%>">
      <input type="text" name="kategori" size="0"value="<%=frm("ktgr")%>">
      <input type="text" name="aciklama" size="0"value="<%=frm("aciklama")%>">
      <input type="text" name="tarih" size="0"value="<%=date%>">
      <input type="text" name="saat" size="0"value="<%=time%>">
      <input type="text" name="sure" size="0"value="<%=frm("sure")%>">
      <input type="text" name="puan" size="0"value="<%=dsayac*(100/(frm("adet")))%>">
      <input type="text" name="dogru" size="0"value="<%=dsayac%>">
      <input type="text" name="yanlis" size="0"value="<%=ysayac%>">     
      <input type="text" name="bos" size="0"value="<%=((frm("adet"))-(ysayac)-(dsayac))%>">

      </td>
		</tr>
		</table>
      </td>
      </tr>
    </table>
<table width="100%" border="3" bordercolor="#0099FF" id="table2">
<tr>
		<td width="10%">SONU&Ccedil;:</td>
		<td>Say�n :&nbsp;


<%=uset("adi")%>&nbsp;<%=uset("soyadi")%>
&nbsp;&nbsp;:&nbsp;&nbsp;

 <%
if  dsayac<5 then 
	Response.Write("Daha yolun ba��ndas�n. �ok �al��man Laz�m.")
elseif dsayac<10 then
	Response.Write("Biraz daha gayret etmen lazym. �yi gidiyorsun.")
elseif dsayac<15 then
	Response.Write("H�mm... Durumun olduk�a iyi. �al��maya devam et.")
elseif dsayac=<18 then
	Response.Write("M�kemmel... Art�k �al��malar�n�n kar��l���n� g�rebileceksin.")
else
	Response.Write("�ok iyi...�al��malar�n�n kar��l���n� g�r�yorsun. Tebrikler...")
end if
%>     


</td>
	</tr>
	<tr>
		<td width="10%">Do�ru :</td>
		<td width="87%"><img src="img/green.gif" width="<%=dsayac*(100/(frm("adet")))%>" height="14"><%=dsayac%></td>
	</tr>
	<tr>
		<td width="10%">Yanl�� :</td>
	  <td width="87%"><img src="img/red.gif" width="<%=ysayac*(100/(frm("adet")))%>" height="14"><%=ysayac%></td>
	</tr>
</table>
</center>
</body>
</html>