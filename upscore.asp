<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta charset="utf-8">
</head>
<body>
    <%
        set conn = Server.CreateObject("ADODB.Connection")
        conn.Provider = "Microsoft.Jet.OLEDB.4.0"

        ' 填写你创建的数据库绝对路径
        conn.Open("K:\work space\web\2020 summer term\finalwork\Database.mdb")

        set rs = Server.CreateObject("ADODB.recordset")
        
        

        sql = "insert into score(stu_name, stu_class, stu_number, stu_score) values"
        sql = sql & "(' " &Request.Form("name")& "', "
        sql = sql & " ' " &Request.Form("class")& "', "
        sql = sql & " ' " &Request.Form("number")& "', "
        sql = sql & " ' " &Request.Form("finalscore")& " ')"

        conn.Execute sql, recaffected

        conn.Close()
    %>
    <h1>已完成上传</h1>
    <a href="textpage.html">点击此处返回</a>
</body>
</html>