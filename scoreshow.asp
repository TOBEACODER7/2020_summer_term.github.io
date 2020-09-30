<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta charset="utf-8">
</head>
<body>
  <h1>历史答卷情况</h1>
  <table width="100%" border="1">
  <%
    set conn = Server.CreateObject("ADODB.Connection")
    conn.Provider = "Microsoft.Jet.OLEDB.4.0"

    conn.Open("K:\work space\web\2020 summer term\finalwork\Database.mdb")

    set rs = Server.CreateObject("ADODB.recordset")
    rs.Open "select * from score", conn

    do until rs.EOF
    response.Write("<tr>")
      for each x in rs.fields
        response.Write("<td>")
        response.Write(x)
        response.Write("</td>")
      next
      rs.MoveNext
    response.Write("</tr>")
    loop
  %>

<body>
<footer>
  <a href="textpage.html">点击此处返回问卷</a>
</footer>
</html>
