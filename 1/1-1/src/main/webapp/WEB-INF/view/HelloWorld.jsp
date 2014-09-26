<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<html:html lang="ja">
  <body>
  <h1>
    <bean:message key="welcome"/>

    <!-- 1）writeタグを利用してFormクラスの内容を表示している -->
    <bean:write name="HelloWorldForm" property="name"/> さん
  </h1>
  </body>
</html:html>
