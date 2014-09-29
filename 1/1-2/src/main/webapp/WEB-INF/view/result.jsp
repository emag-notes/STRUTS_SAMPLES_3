<%@page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<html:html lang="ja" >
  <!-- 1)Beanが存在する場合の処理 -->
  <logic:present name="isCancel" >
    <bean:message key="cancel" />
  </logic:present>
  <body>
  <table border="0">
    <tbody>
    <tr>
      <th bgcolor="#000000"><font color="#ffffff">name</font></th>
      <!-- 2)フォーム情報の取り出し -->
      <td><bean:write name="VariousInputForm" property="name" /></td>
    </tr>
    <tr>
      <th bgcolor="#000000"><font color="#ffffff">password</font></th>
      <td><bean:write name="VariousInputForm" property="password" /></td>
    </tr>
    <tr>
      <th bgcolor="#000000"><font color="#ffffff">etc</font></th>
      <td><bean:write name="VariousInputForm" property="etc" /></td>
    </tr>
    <tr>
      <th bgcolor="#000000"><font color="#ffffff">check1</font></th>
      <td><bean:write name="VariousInputForm" property="check1" /></td>
    </tr>
    <tr>
      <th bgcolor="#000000"><font color="#ffffff">check2</font></th>
      <td><bean:write name="VariousInputForm" property="check2" /></td>
    </tr>
    <tr>
      <th bgcolor="#000000"><font color="#ffffff">multi1(複数選択可能) 単純な表示</font></th>
      <td><bean:write name="VariousInputForm" property="multi1" />
      </td>
    </tr>
    <tr>
      <th bgcolor="#000000"><font color="#ffffff">multi1(複数選択可能) ちゃんとした表示</font></th>
      <!-- 3)配列を表示する方法 -->
      <td><logic:iterate id="seleach" name="VariousInputForm" property="multi1" >
        <bean:write name="seleach" />
      </logic:iterate></td>
    </tr>
    <tr>
      <th bgcolor="#000000"><font color="#ffffff">radio1</font></th>
      <td><bean:write name="VariousInputForm" property="radio1" /></td>
    </tr>
    <tr>
      <th bgcolor="#000000"><font color="#ffffff">select1</font></th>
      <td><bean:write name="VariousInputForm" property="select1" /></td>
    </tr>
    <tr>
      <th bgcolor="#000000"><font color="#ffffff">select2(複数選択可能) 単純な表示</font></th>
      <td><bean:write name="VariousInputForm" property="select2" /></td>
    </tr>
    <tr>
      <th bgcolor="#000000"><font color="#ffffff">select2(複数選択可能) ちゃんとした表示</font></th>
      <!-- 3)配列を表示する方法 -->
      <td><logic:iterate id="seleach" name="VariousInputForm" property="select2" >
        <bean:write name="seleach" />
      </logic:iterate></td>
    </tr>
    <tr>
      <th bgcolor="#000000"><font color="#ffffff">hiddenタグの値</font></th>
      <td><bean:write name="VariousInputForm" property="hidden1" /></td>
    </tr>
    </tbody>
  </table>
  </body>
</html:html>