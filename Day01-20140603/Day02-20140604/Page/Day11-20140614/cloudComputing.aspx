<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cloudComputing.aspx.cs" Inherits="Day02_20140604.Page.Day11_20140614.cloudComputing" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../Site/Site1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="刷新进行列表" />
    
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="运行getName进程" />
    
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="结束选中进程" />
    
    </div>
    <div style="text-align: center">
        <asp:ListBox ID="ListBox1" runat="server" Height="660px" 
            style="text-align: left" Width="418px"></asp:ListBox>
    </div>
    </form>
</body>
</html>
