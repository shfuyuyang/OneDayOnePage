﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Day02_20140604.Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            text-align: center;
        }
        .style1
        {
            color: #000000;
            font-size: large;
            text-align: left;
        }
        .style2
        {
            font-size: large;
            color: #000000;
        }
    </style>
    <link href="../Site/Site1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    ONE DAY ONE PAGE
    <div></div>
    <div></div>
    <div class="style1">
        DAYS01-20140603:<asp:HyperLink 
            ID="HyperLink1" runat="server" 
            NavigateUrl="~/Page/Day01-20140603/whoIsAtmel.aspx">whoisatmel.aspx</asp:HyperLink>
    </div>
    <div class="style1">
        DAYS02-20140604:<asp:HyperLink ID="HyperLink2" runat="server" 
            NavigateUrl="~/Page/Index.aspx">Index.aspx</asp:HyperLink>
    </div>
    <div class="style2" style="text-align: left">DAYS03-20140605:<asp:HyperLink 
            ID="HyperLink3" runat="server" 
            NavigateUrl="~/Page/Day03-20140605/Download.aspx">Download.aspx</asp:HyperLink>
    </div>
    <div style="font-size: large; color: #000000; text-align: left">DAYS04-20140606:<asp:HyperLink 
            ID="HyperLink4" runat="server" 
            NavigateUrl="~/Page/Day04-20140606/loginPage.aspx">login.aspx</asp:HyperLink>
    </div>
    </form>
    
</body>
</html>
