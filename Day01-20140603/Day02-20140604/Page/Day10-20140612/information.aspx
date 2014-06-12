<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="information.aspx.cs" Inherits="Day02_20140604.Page.Day10_20140612.imageMap" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../Site/Site1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
<div style="text-align: center">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
<div style="text-align: center">
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </div>
<div style="text-align: center">
    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    </div>
    <div style="text-align: center">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Page/Index.aspx" 
            style="color: #000000; font-size: large">Return to Index</asp:HyperLink>
    </div>
    </form>
    </body>
</html>
