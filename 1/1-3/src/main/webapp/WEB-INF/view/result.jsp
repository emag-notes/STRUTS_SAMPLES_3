<%@page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>

<html:html lang="ja" >
  <body>
  <table border="0">
    <tbody>
    <tr>
      <th bgcolor="#000000"><FONT color="#ffffff">check1</FONT></th>
      <td><bean:write name="VariousInputForm" scope="session" property="check1" /></td>
    </tr>
    <tr>
      <th bgcolor="#000000"><FONT color="#ffffff">check2(デフォルトはオン)</FONT></th>
      <td><bean:write name="VariousInputForm" scope="session" property="check2" /></td>
    </tr>
    <tr>
      <th bgcolor="#000000"><FONT color="#ffffff">一まとまりで管理するチェックボックス(muliti1)</FONT></th>
      <td><logic:iterate id="seleach" name="VariousInputForm" scope="session" property="multi1" >
        <bean:write name="seleach" />
      </logic:iterate>
      </td>
    </tr>
    <tr>
      <th bgcolor="#000000"><FONT color="#ffffff">ラジオボタン(押されていればcheck1という値になる)</FONT></th>
      <td><bean:write name="VariousInputForm" scope="session" property="radio1" /></td>
    </tr>
    <tr>
      <th bgcolor="#000000"><FONT color="#ffffff">リストボックス(select1)</FONT></th>
      <td><logic:iterate id="seleach" name="VariousInputForm" scope="session" property="select1" >
        <bean:write name="seleach" />
      </logic:iterate>
      </td>
    </tr>
    </tbody>
  </table>
  </body>
</html:html>