<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ONLINE - OLD BOOK STORE</title>
<p aligm = "right"><img alt="books" src="resources/images/buy.jpeg"/></p>
<link rel="stylesheet" href="resources/css/mainIdiot.css" type="text/css"></link>
<link rel="stylesheet" href="resources/css/menuTemplate3.css" type="text/css"></link>
<title><tiles:insertAttribute name="title" ignore="true" />
</title>
</head>
<body>
    <table border="1" cellspacing="2" align="center">
        <tr>
            <td height="" colspan=""><tiles:insertAttribute name="header" />
            </td>
         </tr>   
         <tr>
            <td height="" width=""><tiles:insertAttribute name="menu" />
            </td>
        </tr>
        <tr>
            
            <td width="600"><tiles:insertAttribute name="body" />
            </td>
        </tr>
        <tr>
            <td height="30" colspan="2"><tiles:insertAttribute name="footer" />
            </td>
        </tr>
    </table>
</body>
</html>

