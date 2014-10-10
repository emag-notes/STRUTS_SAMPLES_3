<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>

<html:form action="/Entry">
  <div>ユーザ ID <html:text property="userid"/></div>
  <div>パスワード <html:password property="password"/></div>
  <div>氏名 <html:text property="name"/></div>
  <div>年齢 <html:text property="age"/></div>
  <html:submit value="登録"/>
</html:form>