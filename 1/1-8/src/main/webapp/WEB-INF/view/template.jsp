<%@page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<html>
<head>
  <meta charset="UTF-8">
  <title><tiles:getAsString name="title"/></title>
</head>
<body>

<table cellspacing="2" cellpadding="3" border="0" width="100%">
  <tr>
    <td colspan="3">
      <tiles:insert attribute="header"/>
    </td>
  </tr>
  <tr>
    <td width="20%">
      <tiles:insert attribute="menu"/>
    </td>
    <td>
      <tiles:insert attribute="main"/>
    </td>
    <td width="30%">
      <tiles:insert attribute="info"/>
    </td>
  </tr>
  <tr>
    <td colspan="3">
      <tiles:insert attribute="footer"/>
    </td>
  </tr>
</table>

</body>
</html>