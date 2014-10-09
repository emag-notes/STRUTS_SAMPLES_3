<%@page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>

<html:html lang="ja">
<body>

<h1>1-4 のサンプル 複数対応の例</h1>

<p>繰り返す回数を入力してください。</p>
<p>(正の整数 入力値チェックは 1-5 以降を参照してください)</p>

<html:form action="/PluralRequest">
  繰り返し回数<html:text property="count"/>
  <html:submit value="データ生成"/>
</html:form>

</body>
</html:html>