<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="whoIsAtmel.aspx.cs" Inherits="Day01_20140603.Page.whoIsAtmel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
            font-family: DFKai-SB;
        }
        .style2
        {
            font-family: 华文彩云;
            color: #000000;
            font-weight: bold;
        }
    </style>
    <link href="../Site/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="../../Site/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1" style="text-align: center">
        WHO IS ATMEL</div>
        <div style="margin-left: 2px">
        &nbsp;&nbsp;&nbsp; <span class="style2">Who is Atmel? The famous sige semiconductor? 
            No,Atmel is a strong demon in the word of Mabinogi. </span>
        </div>
        <div style="text-align: center; font-family: 仿宋; font-size: large">
            <asp:ImageButton ID="ImageButton1" runat="server" 
                ImageUrl="~/Image/snapshot.jpg" 
                PostBackUrl="http://luoqi.tiancity.com" />
            <br />
            If you want to konw the word of Mabinogi,click the image please.</div>
            <div style="text-align: center">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Page/Index.aspx" 
                    style="color: #000000; font-size: large; text-align: center">Return to the index</asp:HyperLink>
            </div>
    </form>
</body>
</html>
