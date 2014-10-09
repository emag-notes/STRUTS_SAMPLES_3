<%@page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<html:html lang="ja">

<%--複数の Form クラスや Action クラスからなるのでリクエストパラメータから取り出す--%>
<bean:parameter id="result" name="age"/>

<body>

<h1>1-5 のサンプル 検証の例</h1>

<p>あなたの年齢は、<bean:write name="result"/> です。</p>

</body>
</html:html>