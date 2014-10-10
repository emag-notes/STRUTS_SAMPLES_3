<%@page contentType="text/html; charset=utf-8" %>
<p>このプログラムは以下の JVM で実行されています。</p>
<p><%= System.getProperty("java.specification.vendor") %> バージョン <%= System.getProperty("java.specification.version") %></p>