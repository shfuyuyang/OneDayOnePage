<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jump.aspx.cs" Inherits="Day02_20140604.Page.Day16_20140622.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../Site/Site1.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
    <script>
        function onload() {
                        document.body.scrollTop = 100;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
            Text="Button" />
    </div>
    <div id="Div1" style="height: 1000px">
        1
    </div>
    </form>
</body>
</html>
