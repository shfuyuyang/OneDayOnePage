<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="draw.aspx.cs" Inherits="Day02_20140604.Page.Day09_20140611.draw" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../Site/Site1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <asp:Label ID="Label1" runat="server" style="font-size: large" 
            Text="输入一个数（1~10）"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    
    </div>
    <div style="text-align: center">
    
        <asp:Label ID="Label2" runat="server" style="font-size: large" 
            Text="输入你的名字"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    
    </div>
    <div style="text-align: center">
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" Text="获取平方表" 
            style="text-align: center" />
    
    </div>
    <div style="text-align: center">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Page/Index.aspx" 
            style="color: #000000; font-size: large; text-align: center">Return to Index</asp:HyperLink>
    </div>
    </form>
</body>
</html>
