<%@page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>

<html:html lang="ja">
<body>

<h1>1-7 のサンプル メールアドレスの検証</h1>

<html:errors/>

<p>登録するメールアドレスを入力してください。</p>

<html:form action="/CheckMail">
  <div>
    メールアドレス <html:text property="mailAddress"/>
    <html:errors property="mailAddress"/>
  </div>
  <div>
    メールアドレス(確認用) <html:text property="reMailAddress"/>
    <html:errors property="reMailAddress"/>
  </div>
  <html:submit value="登録"/>
</html:form>

</body>
</html:html>