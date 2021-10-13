<?xml version="1.0" encoding="iso-8859-1"?><!-- DWXMLSource="Sports.xml" -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<style>
table {
  border-collapse: collapse;
  width: 80%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #FFFFFF}

th {
  background-color: #6F1521;
  color: white;
}
h1 {
  font-family: Trattatello, fantasy;

}
.header {
  background-color: #6F1521;
  text-align: center;
  padding:inherit;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
<title>List of students </title>
</head>
<div class="header">
  <h1><font color="#FFFFFF" size="+4">CHRIST UNIVERSITY IT fest</font></h1>
</div>
 <center><img src="christ.jpeg" /></center>
<body>
 <h2 align="center"><font><u><b> List of Student for fest </b></u></font></h2>
   <table align="center" border="1" bordercolor="#000099">
   <tr>
    <th >Sno</th>
    <th >Name </th>
    <th >college_name</th>

   </tr>
    <xsl:for-each select="bloodgroup/details">
   <tr>
    <td ><xsl:value-of select="Sno"/></td>
    <td ><xsl:value-of select="Name"/></td>
    <td ><xsl:value-of select="college_name"/></td>

   </tr>
    </xsl:for-each>
    </table><br />
<center>

<h2>IT fest on November 6th </h2>
<p id="state"></p>
<p id="location"></p>
<p id="date"></p>
<p id="start_time"></p>
<p id="contactus"></p>



<script>
var parser, xmlDoc;
var text = "<EventDetails><ed>" +
"<state>Karnataka,Banglore</state>" +
"<location>Christ university </location>" +
"<date>29 November 2021</date>" +
"<start_time>10.00AM[IST]</start_time>" +
"<contactus>fest.cs@christ.in</contactus>" +
"</ed></EventDetails>";

if (window.DOMParser) {
  parser = new DOMParser();
  xmlDoc = parser.parseFromString(text,"text/xml");
} else {
  xmlDoc = new ActiveXObject("Microsoft.XMLDOM");
  xmlDoc.async = false;
  xmlDoc.loadXML(text);
}

document.getElementById("state").innerHTML =
xmlDoc.getElementsByTagName("state")[0].childNodes[0].nodeValue;
document.getElementById("location").innerHTML =
xmlDoc.getElementsByTagName("location")[0].childNodes[0].nodeValue;
document.getElementById("date").innerHTML =
xmlDoc.getElementsByTagName("date")[0].childNodes[0].nodeValue;
document.getElementById("start_time").innerHTML =
xmlDoc.getElementsByTagName("start_time")[0].childNodes[0].nodeValue;
document.getElementById("contactus").innerHTML =
xmlDoc.getElementsByTagName("contactus")[0].childNodes[0].nodeValue;




</script>
</center>
</body>
</html>

</xsl:template>
</xsl:stylesheet>
