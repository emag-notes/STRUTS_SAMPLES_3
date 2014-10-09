<%@page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<html>
<body>

<h1>1-4 のサンプル 複数対応の例</h1>

<h2>変更内容の表示</h2>

<p>データ番号の色が赤いものはデータが変更されています。</p>

<table border="1">
  <tr>
    <th>データ番号</th>
    <th>Name</th>
    <th>Value</th>
  </tr>
  <logic:iterate id="viewhelper" scope="request" name="Result" type="action.viewhelper.PluralResultHelper" indexId="index">
  <tr>
    <th>
      <logic:equal name="viewhelper" property="changed" value="true">
      <span style="color: #ff0000; ">
        <bean:write name="index"/>
      </span>
      </logic:equal>
      <logic:notEqual name="viewhelper" property="changed" value="true">
      <bean:write name="index"/>
      </logic:notEqual>
    </th>

    <bean:define id="model" name="viewhelper" property="data"/>

    <td>
      <bean:write name="model" property="name"/>
    </td>
    <td>
      <bean:write name="viewhelper" property="data.value"/>
    </td>
  </tr>
  </logic:iterate>
</table>

</body>
</html>