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
<title>ASP Test</title>
<meta http-equiv="Content-Type" content="text/html; charset=1254">


<meta http-equiv="refresh" content="<%=frm("sure")*60%>;url=suredoldu.asp" target="_parent">


</head>

<body bgcolor="#FFFFFF">


<script>

<%
id=request.querystring("id")
set frm = server.createobject("adodb.recordset")
frm.open " select * from test where id=" &id  ,baglan,1,3
%>


var sec = 00;   // set the seconds
var min = <%=frm("sure")%>;   // set the minutes

function countDown() {
  sec--;
  if (sec == -01) {
    sec = 59;
    min = min - 1;
  } else {
   min = min;
  }
if (sec<=9) { sec = "0" + sec; }
  time = "" + (min<=9 ? "0" + min : min) + ":" + sec + "..";
if (document.getElementById) { theTime.innerHTML = time; }
  SD=window.setTimeout("countDown();", 1000);
if (min == '00' && sec == '00') { sec = "00"; window.clearTimeout(SD); }
}

function addLoadEvent(func) {
  var oldonload = window.onload;
  if (typeof window.onload != 'function') {
    window.onload = func;
  } else {
    window.onload = function() {
      if (oldonload) {
        oldonload();
      }
      func();
    }
  }
}

addLoadEvent(function() {
  countDown();
});
</script>

<style>
.timeClass {
  font-family:arial,verdana,helvetica,sans-serif;
  font-weight:bold;
  font-size:18pt;
  color:red;
}
</style>
<center>

<table width="21%" border="0" align="left" cellpadding="0" cellspacing="0">
<tr><td width="100%" align="center">Kalan Süreniz:<span id="theTime" class="timeClass"></span></td></tr>
  <tr> 
      <td bgcolor="#6666FF" height="25"> 
        <center>
          <font size="2" face="Tahoma"><b><font size="3" color="#FFFFFF">CEVAP KAĞIDI</font></b></font> 
        </center>      </td>
  </tr>
  <tr valign="middle"> 
      <td height="110"> 
        <center>

          <form method="post" action="asptestisle.asp?id=<%=frm("id")%>"  name="fname">
            <table width="100%" border="3" cellpadding="0" cellspacing="0" bordercolor="#0099FF" style="padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px; border-left-style:double; border-left-width:3px; border-right-style:double; border-right-width:3px; border-top-style:double; border-top-width:0px; border-bottom-style:double; border-bottom-width:0px">
              <% if (frm("1"))<>"" then%>
              <tr>
                <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><font size="2" face="Tahoma">1.</font></td>
                <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">A</td>
                <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
                    <input type="radio" name="soru1" value="A" style="float: left">
                </td>
                <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><p align="right">B</td>
                <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><p align="right">
                    <input type="radio" name="soru1" value="B" style="float: left">
                </td>
                <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">C</td>
                <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
                    <input type="radio" name="soru1" value="C" style="float: left">
                </td>
                <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><p align="right">D</td>
                <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><input type="radio" name="soru1" value="D"></td>
                <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0">&nbsp;</td>
                <td width="3%" rowspan="50" valign="bottom" bgcolor="#FFFFFF" style="border-left-style: none; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px">&nbsp;</td>
              </tr>
              <%end if%>
              <% if (frm("2"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><font face="Tahoma" size="2">2.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru2" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru2" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru2" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><input type="radio" name="soru2" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080">&nbsp;</td>
  </tr>
  <%end if%>
  <% if (frm("3"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><font face="Tahoma" size="2">3.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru3" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><p align="right">
          <input type="radio" name="soru3" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru3" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><input type="radio" name="soru3" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0">&nbsp;</td>
  </tr>
  <%end if%>
  <% if (frm("4"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><font face="Tahoma" size="2">4.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru4" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru4" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru4" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><input type="radio" name="soru4" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080">&nbsp;</td>
  </tr>
  <%end if%>
  <% if (frm("5"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><font face="Tahoma" size="2">5.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru5" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><p align="right">
          <input type="radio" name="soru5" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru5" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><input type="radio" name="soru5" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0">&nbsp;</td>
  </tr>
  <%end if%>
  <% if (frm("6"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><font face="Tahoma" size="2">6.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru6" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru6" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru6" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><input type="radio" name="soru6" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080">&nbsp;</td>
  </tr>
  <%end if%>
  <% if (frm("7"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><font face="Tahoma" size="2">7.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru7" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><p align="right">
          <input type="radio" name="soru7" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru7" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><input type="radio" name="soru7" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0">&nbsp;</td>
  </tr>
  <%end if%>
  <% if (frm("8"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><font face="Tahoma" size="2">8.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru8" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru8" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru8" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><input type="radio" name="soru8" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080">&nbsp;</td>
  </tr>
  <%end if%>
  <% if (frm("9"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><font face="Tahoma" size="2">9.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru9" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><p align="right">
          <input type="radio" name="soru9" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru9" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><input type="radio" name="soru9" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0">&nbsp;</td>
  </tr>
  <%end if%>
  <% if (frm("10"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><font size="2" face="Tahoma">10.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru10" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru10" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru10" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><input type="radio" name="soru10" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080">&nbsp;</td>
  </tr>
  <%end if%>
  <% if (frm("11"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><font size="2" face="Tahoma">11.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru11" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><p align="right">
          <input type="radio" name="soru11" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru11" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><input type="radio" name="soru11" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0">&nbsp;</td>
  </tr>
  <%end if%>
  <% if (frm("12"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><font size="2" face="Tahoma">12.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru12" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru12" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru12" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><input type="radio" name="soru12" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080">&nbsp;</td>
  </tr>
  <%end if%>
  <% if (frm("13"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><font size="2" face="Tahoma">13.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru13" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><p align="right">
          <input type="radio" name="soru13" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru13" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><input type="radio" name="soru13" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0">&nbsp;</td>
  </tr>
  <%end if%>
  <% if (frm("14"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><font size="2" face="Tahoma">14.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru14" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru14" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru14" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><input type="radio" name="soru14" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080">&nbsp;</td>
  </tr>
  <%end if%>
  <% if (frm("15"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><font size="2" face="Tahoma">15.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru15" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><p align="right">
          <input type="radio" name="soru15" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru15" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><input type="radio" name="soru15" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0">&nbsp;</td>
  </tr>
  <%end if%>
  <% if (frm("16"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><font size="2" face="Tahoma">16.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru16" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru16" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru16" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><input type="radio" name="soru16" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080">&nbsp;</td>
  </tr>
  <%end if%>
  <% if (frm("17"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><font size="2" face="Tahoma">17.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru17" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><p align="right">
          <input type="radio" name="soru17" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru17" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><input type="radio" name="soru17" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0">&nbsp;</td>
  </tr>
  <%end if%>
  <% if (frm("18"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><font size="2" face="Tahoma">18.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru18" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru18" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru18" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><input type="radio" name="soru18" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080">&nbsp;</td>
  </tr>
  <%end if%>
  <% if (frm("19"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><font size="2" face="Tahoma">19.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru19" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><p align="right">
          <input type="radio" name="soru19" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru19" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px"><input type="radio" name="soru19" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0">&nbsp;</td>
  </tr>
  <%end if%>
  <% if (frm("20"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><font face="Tahoma" size="2">20.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru20" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru20" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru20" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><input type="radio" name="soru20" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080">&nbsp;</td>
  </tr><%end if%>
  <% if (frm("21"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><font face="Tahoma" size="2">21.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru21" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">
          <input type="radio" name="soru21" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru21" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><input type="radio" name="soru21" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0">&nbsp;</td>
  </tr><%end if%>
  <% if (frm("22"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><font face="Tahoma" size="2">22.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru22" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru22" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru22" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><input type="radio" name="soru22" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080">&nbsp;</td>
  </tr><%end if%>
  <% if (frm("23"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><font face="Tahoma" size="2">23.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru23" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">
          <input type="radio" name="soru23" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru23" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><input type="radio" name="soru23" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0">&nbsp;</td>
  </tr><%end if%>
  <% if (frm("24"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><font face="Tahoma" size="2">24.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru24" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru24" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru24" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><input type="radio" name="soru24" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080">&nbsp;</td>
  </tr><%end if%>
  <% if (frm("25"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><font face="Tahoma" size="2">25.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru25" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">
          <input type="radio" name="soru25" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru25" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><input type="radio" name="soru25" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0">&nbsp;</td>
  </tr><%end if%>
  <% if (frm("26"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><font face="Tahoma" size="2">26.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru26" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru26" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru26" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><input type="radio" name="soru26" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080">&nbsp;</td>
  </tr><%end if%>
  <% if (frm("27"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><font face="Tahoma" size="2">27.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru27" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">
          <input type="radio" name="soru27" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru27" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><input type="radio" name="soru27" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0">&nbsp;</td>
  </tr><%end if%>
  <% if (frm("28"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><font face="Tahoma" size="2">28.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru28" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru28" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru28" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><input type="radio" name="soru28" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080">&nbsp;</td>
  </tr><%end if%>
  <% if (frm("29"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><font face="Tahoma" size="2">29.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru29" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">
          <input type="radio" name="soru29" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru29" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><input type="radio" name="soru29" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0">&nbsp;</td>
  </tr><%end if%>
  <% if (frm("30"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><font face="Tahoma" size="2">30.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru30" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru30" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru30" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><input type="radio" name="soru30" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080">&nbsp;</td>
  </tr><%end if%>
  <% if (frm("31"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><font face="Tahoma" size="2">31.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru31" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">
          <input type="radio" name="soru31" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru31" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><input type="radio" name="soru31" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0">&nbsp;</td>
  </tr><%end if%>
  <% if (frm("32"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><font face="Tahoma" size="2">32.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru32" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru32" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru32" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><input type="radio" name="soru32" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080">&nbsp;</td>
  </tr><%end if%>
  <% if (frm("33"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><font face="Tahoma" size="2">33.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru33" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">
          <input type="radio" name="soru33" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru33" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><input type="radio" name="soru33" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0">&nbsp;</td>
  </tr><%end if%>
  <% if (frm("34"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><font face="Tahoma" size="2">34.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru34" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru34" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru34" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><input type="radio" name="soru34" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080">&nbsp;</td>
  </tr><%end if%>
  <% if (frm("35"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><font face="Tahoma" size="2">35.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru35" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">
          <input type="radio" name="soru35" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru35" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><input type="radio" name="soru35" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0">&nbsp;</td>
  </tr><%end if%>
  <% if (frm("36"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><font face="Tahoma" size="2">36.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru36" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru36" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru36" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><input type="radio" name="soru36" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080">&nbsp;</td>
  </tr><%end if%>
  <% if (frm("37"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><font face="Tahoma" size="2">37.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru37" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">
          <input type="radio" name="soru37" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru37" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><input type="radio" name="soru37" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0">&nbsp;</td>
  </tr><%end if%>
  <% if (frm("38"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><font face="Tahoma" size="2">38.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru38" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru38" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru38" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><input type="radio" name="soru38" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080">&nbsp;</td>
  </tr><%end if%>
  <% if (frm("39"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><font face="Tahoma" size="2">39.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru39" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">
          <input type="radio" name="soru39" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru39" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><input type="radio" name="soru39" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0">&nbsp;</td>
  </tr><%end if%>
  <% if (frm("40"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><font face="Tahoma" size="2">40.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru40" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru40" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru40" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><input type="radio" name="soru40" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080">&nbsp;</td>
  </tr><%end if%>
  <% if (frm("41"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><font face="Tahoma" size="2">41.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru41" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">
          <input type="radio" name="soru41" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru41" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><input type="radio" name="soru41" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0">&nbsp;</td>
  </tr><%end if%>
  <% if (frm("42"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><font face="Tahoma" size="2">42.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru42" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru42" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru42" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><input type="radio" name="soru42" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080">&nbsp;</td>
  </tr><%end if%>
  <% if (frm("43"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><font face="Tahoma" size="2">43.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru43" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">
          <input type="radio" name="soru43" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru43" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><input type="radio" name="soru43" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0">&nbsp;</td>
  </tr><%end if%>
  <% if (frm("44"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><font face="Tahoma" size="2">44.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru44" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru44" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru44" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><input type="radio" name="soru44" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080">&nbsp;</td>
  </tr><%end if%>
  <% if (frm("45"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><font face="Tahoma" size="2">45.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru45" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">
          <input type="radio" name="soru45" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru45" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><input type="radio" name="soru45" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0">&nbsp;</td>
  </tr><%end if%>
  <% if (frm("46"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><font face="Tahoma" size="2">46.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru46" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru46" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru46" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><input type="radio" name="soru46" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080">&nbsp;</td>
  </tr><%end if%>
  <% if (frm("47"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><font face="Tahoma" size="2">47.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru47" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">
          <input type="radio" name="soru47" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru47" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><input type="radio" name="soru47" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0">&nbsp;</td>
  </tr><%end if%>
  <% if (frm("48"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><font face="Tahoma" size="2">48.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru48" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru48" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru48" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><input type="radio" name="soru48" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080">&nbsp;</td>
  </tr><%end if%>
  <% if (frm("49"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><font face="Tahoma" size="2">49.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru49" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">
          <input type="radio" name="soru49" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0"><p align="right">
          <input type="radio" name="soru49" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#FFFFFF"><input type="radio" name="soru49" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#C0C0C0">&nbsp;</td>
  </tr><%end if%>
  <% if (frm("50"))<>"" then%>
  <td width="12%" valign="bottom" style="border-left-style: solid; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><font face="Tahoma" size="2">50.</font></td>
      <td width="9%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">A</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru50" value="A" style="float: left">
    </td>
    <td width="6%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">B</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru50" value="B" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">C</td>
    <td width="13%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">
          <input type="radio" name="soru50" value="C" style="float: left">
    </td>
    <td width="7%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><p align="right">D</td>
    <td width="15%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080"><input type="radio" name="soru50" value="D"></td>
    <td width="2%" valign="bottom" style="border-left-style: none; border-left-width: 1px; border-right-style: none; border-right-width: 1px; border-top-style: ridge; border-top-width: 1px; border-bottom-style: ridge; border-bottom-width: 1px" bgcolor="#808080">&nbsp;</td>
  </tr><%end if%>
  <tr>
    <td colspan="9"><input type="submit" name="testbitir" value="Testi Bitir">
    <input type="reset" name="iptalet" value="&#304;ptal Et">    </td>
  </tr>
            </table>
          </form>
      </center>    </td>
  </tr>
</table>
</center>

</body>
</html>