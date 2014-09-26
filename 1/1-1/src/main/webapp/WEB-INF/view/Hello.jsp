<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<html:html lang="ja">
  <body>
  <!-- 1)HTMLのFORMタグに変換される -->
  <html:form action="/HelloWorld">

    <!-- 2)メッセージリソースを表示する -->
    <bean:message key="greeting"/><br/>

    お名前をどうぞ。<br/><html:text property="name"/><br/>
    <html:submit>
      <bean:message key="greeting"/>
    </html:submit>
  </html:form>
  </body>
</html:html>