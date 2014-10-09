<%@page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>

<html:html lang="ja">
<body>

<h1>1-5 のサンプル 検証の例3</h1>

<html:errors/>

<p>あなたの年齢を入力してください(0 以上 200 以下の整数でお願いいたします)。</p>
<%--JavaScript による検証--%>
<html:javascript formName="CheckAgeForm3"/>

<html:form action="/CheckAge3" onsubmit="return validateCheckAgeForm3(this)">
  年齢 <html:text property="age"/>
  <html:errors property="age"/>
  <html:submit value="報告"/>
</html:form>

</body>
</html:html>