<%@page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html:html lang="ja">
  <body>
  <h1>1-3のサンプル</h1>
  <html:form action="/Result">
    入力部品名()の中は属性名<hr/>
    <table border="1">
      <tbody>
      <tr>
        <th>チェックボックスデフォルトオフ(check1)</th>
        <td><html:checkbox property="check1"/>チェック1</td>
      </tr>
      <tr>
        <th>チェックボックスデフォルトオン(check2)HTMLで記述している</th>
        <td><input type="checkbox" name="check2" checked/>チェック2</td>
      </tr>
      <tr>
        <th rowspan="2">マルチボックス(multi1)同じmulti1で複数の選択をサポート</th>
        <td><html:multibox property="multi1" value="Check1"/>チェック1</td>
      </tr>
      <tr>
        <td><html:multibox property="multi1" value="Check2"/>チェック2</td>
      </tr>
      <tr>
        <th>ラジオボタン(radio1)</th>
        <td><html:radio property="radio1" value="check1">ラジオ1</html:radio></td>
      </tr>
      <tr>
        <th>セレクト(select1)複数選択可能</th>
        <td><html:select property="select1" multiple="true" size="3">
          <html:option value="S1">リスト1</html:option>
          <html:option value="S2">リスト2</html:option>
          <html:option value="S3">リスト3</html:option>
        </html:select>
        </td>
      </tr>
      <tr>
        <td>
          <html:submit value="送信"/>
        </td>
      </tr>
      </tbody>
    </table>
  </html:form>
  </body>
</html:html>