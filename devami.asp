<!--#include file="koruyucu.asp"-->
<%
set baglan = server.createobject("adodb.connection")
baglan.open "driver={microsoft access driver (*.mdb)}; dbq=" & server.mappath("admin/frm.mdb")
%>
<%
id=request.querystring("id")
set frm = server.createobject("adodb.recordset")
frm.open " select * from test where id=" &id  ,baglan,1,3
%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">

<title><%=frm("ktgr")%></title>
</head>
<body>

<style type="text/css">
   .soru
       {
           height:900px;
           width: 850px;
           overflow: scroll;
       }
    </style>




<script language="JavaScript">
document.onmousedown=click 
var times=0;

function click(){ 
 if ((event.button==2) || (event.button==3)) { 
   alert("Lütfen Sınavınız ile igileniniz...."); 
   if (times>=1) { sarsinti(); }    
   times++;
 }// if
} // click

function sarsinti(){
 alert("Bilgisayarınıza ve gözlerinize vereceğimiz rahatsızlıktan ötürü özür dileriz...!"); 
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









<div align="center">

<table width="110%" border="0" cellpadding="0" cellspacing="0" bordercolor="#0099FF" id="table5" onscroll>
<tr>
<td valign="top" width="14">
<img src="img/1.gif" width="14" height="12"  border="0"></td>
<td valign="top" width="1010" background="img/2.gif"></td>
<td valign="top" width="21">
<img src="img/3.gif" width="14" height="12"  border="0"></td>
</tr>
<tr>
<td width="14" background="img/4.gif" height="136"></td>
<td height="136">
					<div align="center">
						<table border="0" cellpadding="0" style="border-collapse: collapse" width="87%" id="table6" height="165">
<tr>
								<td valign="top" height="21" colspan="2">
								<div align="center">
									<table width="95%" height="22" border="0" align="left" cellpadding="0" id="table7" style="border-collapse: collapse">
<tr>
											<td width="16%" bgcolor="#F7F7F7">
											<span lang="en-us"><b>
											<font face="Georgia" style="font-size: 13pt" color="#CC0000">&nbsp;»</font></b></span><b><font face="Georgia" color="#CC0000" style="font-size: 13pt">&nbsp;<%=frm("ktgr")%></font></b></td>
											<td width="21%" bgcolor="#F7F7F7">
											Hoşgeldin:&nbsp;
<!--#INCLUDE FILE="baglanti.asp"-->
<%
Set uset = Server.CreateObject("ADODB.RecordSet")
SQL = "Select * from uyeler Where uid = "&session("uid")
uset.open SQL,bag,1,3
%>


<%=uset("adi")%>&nbsp;<%=uset("soyadi")%>											



 </td>
											<td width="34%" bgcolor="#F7F7F7">
											Süren:<b><font size="4" color="#FF0000">&nbsp;<%=frm("sure")%>&nbsp;</font></b>dakikadır.
											
											
											
<INPUT TYPE="BUTTON" VALUE="Kapat" 
NAME="lowerButton" onClick="self.close()"> 

											
											
											</td>
											<td width="22%" bgcolor="#F7F7F7">
<%
id=request.querystring("id")
set frm = server.createobject("adodb.recordset")
frm.open " select * from test where id=" &id&" order by id asc",baglan,1,3
%>											
											
											

											
											Ekleme Tarihi :&nbsp;<%=frm("tarih")%>
		
											</td>
											<td width="7%" bgcolor="#F7F7F7">
											
											<align="right">
											<p align="right">
									<span style="font-weight: 700; text-decoration: underline">
									
									&lt;&lt;</span><a href="default.asp"><font color="#000000">Anasayfa</font></a>
											
											</td>
										</tr>
									</table>
								</div>
								</td>
							</tr>
							<tr>
								
	
    

                  
                   <td valign="top" width="74%">
                  <div class="soru">
                 
                  <table>
                      <tr>
                      <td><img src="admin/<%=frm("soru")%>" width="700"></td>
                    </tr>
                    </table>
                      
						
                 </div>
		           </td>
                     
  

         
                                
<td width="26%" height="100%" align="left" valign="top"><p align="left"><!--#include file="ASPTEST.asp"-->

</td>

</tr>
<tr>
	<td valign="top" colspan="2">
	<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="87%" id="table8">
	<tr>
	<td width="74%" valign="bottom">
<font face="Georgia" style="font-size: 8pt">
<b>&nbsp;Kategori</b></font>
<font face="Georgia" style="font-size: 9pt"> :<font color="#990033">
<a href="kategori.asp?kategori=<%=frm("ktgr")%>" style="text-decoration: none"><font color="#990033">&nbsp;<%=frm("ktgr")%>
					</font></a></font></font></td>
									<td width="6%">&nbsp;</td>
									<td width="20%" valign="bottom">
									</td>
					</tr>
				  </table>
				</div>
			  </td>
						  </tr>
						</table>
					</div>
</td>
<td width="21" background="img/6.gif" height="136">
<font face="Tahoma" style="font-size: 8pt">
<img height="20" src="img/spacer.gif" width="14" border="0"></font></td>
</tr>
<tr>
<td valign="top" width="14">
<img src="img/8.gif" width="14" height="12" border="0"></td>
<td valign="top" width="1010" background="img/10.gif"></td>
<td valign="top" width="21">
<img src="img/9.gif" width="14" height="12" border="0"></td>
</tr>

</table>
</div>

</body>

</html>