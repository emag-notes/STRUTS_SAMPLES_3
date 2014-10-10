<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<div>ユーザ ID: <bean:write name="UserEntryForm" property="userid"/></div>
<div>パスワード: <bean:write name="UserEntryForm" property="password"/></div>
<div>氏名: <bean:write name="UserEntryForm" property="name"/></div>
<div>年齢: <bean:write name="UserEntryForm" property="age"/> 歳</div>