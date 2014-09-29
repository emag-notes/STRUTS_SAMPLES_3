<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<html:html lang="ja">
  <body>
  <h1>1-2のサンプル</h1>
  <html:form action="/Result">
    入力部品名（）の中は属性名<HR>
    <table border="0">
      <tbody>
      <tr>
        <td>
          <table border="1">
            <tbody>
            <tr>
              <th>テキストボックス(name)</th>
              <td><html:text property="name"/></td>
            </tr>
            <tr>
              <th>パスワード(password)</th>
              <!-- 1）入力されたパスワードを隠蔽する -->
              <td><html:password property="password" redisplay="false"/></td>
            </tr>
            <tr>
              <th>テキストエリア(etc)</th>
              <td><html:textarea property="etc"/></td>
            </tr>
            <tr>
              <th>チェックボックスデフォルトオフ（check1)</th>
              <td><html:checkbox property="check1"/>チェック1</td>
            </tr>
            <tr>
              <!-- 2）デフォルト値を設定する-->
              <th>チェックボックスデフォルトオン（check2）</th>
              <td><html:checkbox property="check2" value="on"/>チェック2</td>
            </tr>
            <tr>
              <th rowspan="2">マルチボックス(multi1)同じmulti1で複数の選択をサポート</th>
              <td><html:multibox property="multi1" value="Check1"/>チェック1</td>
            </tr>
            <!-- 3） 一まとまりとして管理する チェックボックスの例 -->
            <tr>
              <td><html:multibox property="multi1" value="Check2"/>チェック2</td>
            </tr>
            <tr>
              <!-- 3） 一まとまりとして管理する ラジオボタンの例 -->
              <th rowspan="2">ラジオボタン(radio1)ラジオ1とラジオ2で同じradio1の属性のためどちらかしか選べない</th>
              <td><html:radio property="radio1" value="check1">ラジオ1</html:radio></td>
            </tr>
            <tr>
              <td><html:radio property="radio1" value="check2">ラジオ2</html:radio></td>
            </tr>

            <tr>
              <th>セレクト(select1)複数選択不可</th>
              <td><html:select property="select1" value="S2">
                <html:option value="S1">セレクト1</html:option>
                <html:option value="S2">セレクト2(デフォルト値)</html:option>
                <html:option value="S3">セレクト3</html:option>
              </html:select>
             </td>
            </tr>

            <tr>
              <!-- 4）複数のデータを選択できるようにする -->
              <th>セレクト(select2)複数選択可能</th>
              <td><html:select property="select2" multiple="true" size="3">
                <html:option value="S1">リスト1</html:option>
                <html:option value="S2">リスト2</html:option>
                <html:option value="S3">リスト3</html:option>
              </html:select>
              </td>
            </tr>
            </tbody>
          </table>
        </td>

        <td>
          <table border="1">
            <tbody>
            <!-- 5）リンクを作成する -->
            <tr>
              <th>リンクを記述するケース1-1にLinkしています。</th>
              <td><html:link href="http://localhost:8080/1-1/view/Hello.jsp">1-1へ</html:link></td>
            </tr>
            <%--<!--6）入力フォーム内に不可視フィールドを作成する -->--%>
            <html:hidden property="hidden1" value="hidden1"/>
            <tr>
              <th>単純なイメージ</th>
              <td><html:img page="/image/a002btn.gif"/></td>
            </tr>
            <tr>
              <!-- 7）様々なボタンを表示する 通常のボタン -->
              <th>JavaScriptなどを実行するためのbuttonタグ(noReAction)の生成、JavaScriptが実行されます</th>
              <td><html:button property="noReAction" onclick="alert('ボタンが押されました')"/></td>
            </tr>
            <tr>
              <!-- 7）様々なボタンを表示する イメージボタン -->
              <th>イメージボタン(imagebutton) 押すとSubmitと同じ効果があります。</th>
              <td><html:image page="/image/a001btn.gif" property="imagebutton"/></td>
            </tr>
            <tr>
              <!-- 7）様々なボタンを表示する サブミットボタン -->
              <th>Submitボタン</th>
              <td>
                <html:submit/><br/>
                <html:submit value="送信"/><br/>
                <html:submit disabled="true"/><br/>
              </td>
            </tr>
            <tr>
              <!-- 7）様々なボタンを表示する リセットボタン -->
              <th>Resetボタン</th>
              <td><html:reset/></td>
            </tr>
            <tr>
              <th>キャンセルボタン、リクエストがサーバに行く。処理を記述しないとSubmitと同じ操作</th>
              <!-- 7）様々なボタンを表示する キャンセルボタン -->
              <td><html:cancel/></td>
            </tr>
            </tbody>
          </table>
        </td>
      </tbody>
    </table>
  </html:form>
  </body>
</html:html>