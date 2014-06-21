<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Day02_20140604.Index" %>

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
    <div style="text-align: left; font-size: large; color: #000000">DAYS05-20140607:<asp:HyperLink 
            ID="HyperLink5" runat="server" NavigateUrl="~/Page/Day05-20140607/music.aspx">music.aspx</asp:HyperLink>
    </div>
    <div style="text-align: left; color: #000000; font-size: large">
        DAYS06-20140608:<asp:HyperLink ID="HyperLink6" runat="server" 
            NavigateUrl="~/Page/Day06-20140608/masterHomepage.aspx">masterHomepage.aspx</asp:HyperLink>
    </div>
    <div style="font-size: large; color: #000000; text-align: left">
        DAYS07-20140609:<asp:HyperLink ID="HyperLink7" runat="server" 
            NavigateUrl="~/Page/Day07-20140609/upload.aspx">upload.aspx</asp:HyperLink>
    </div>
    <div style="color: #000000; font-size: large; text-align: left">
        DAYS08-20140610:<asp:HyperLink ID="HyperLink8" runat="server" 
            NavigateUrl="~/Page/Day08-20140610/database.aspx">database.aspx</asp:HyperLink>
    </div>
    <div style="color: #000000; text-align: left; font-size: large">
        DAYS09-20140611:<asp:HyperLink ID="HyperLink9" runat="server" 
            NavigateUrl="~/Page/Day09-20140611/draw.aspx">draw.aspx</asp:HyperLink>
    </div>
    <div style="text-align: left; color: #000000; font-size: large">
        DAYS10-20140612:<asp:HyperLink ID="HyperLink10" runat="server" 
            NavigateUrl="~/Page/Day10-20140612/information.aspx">information.aspx</asp:HyperLink>
    </div>
    <div style="color: #000000; text-align: left; font-size: large">
        DAYS11-20140614:<asp:HyperLink ID="HyperLink11" runat="server" 
            NavigateUrl="~/Page/Day11-20140614/cloudComputing.aspx">cloudComputing.aspx</asp:HyperLink>
    </div>
    <div style="text-align: left; color: #000000; font-size: large">
        DAYS12-20140615:<asp:HyperLink ID="HyperLink12" runat="server" 
            NavigateUrl="~/Page/Day12-20140615/worldCupSearch.aspx">worldCupSearch.aspx</asp:HyperLink>
    </div>
    <div style="text-align: left; color: #000000; font-size: large">
        DAYS13-20140616:<asp:HyperLink ID="HyperLink13" runat="server" 
            NavigateUrl="~/Page/Day13-20140616/connectMySQL.aspx">connectMySQL.aspx</asp:HyperLink>
    </div>
    <div style="text-align: left; color: #000000; font-size: large">
        DAYS14-20140618:<asp:HyperLink ID="HyperLink14" runat="server" 
            NavigateUrl="~/Page/Day14-20140618/baiduMap.aspx" style="text-align: left">baiduMap.aspx</asp:HyperLink>
    </div>
    <div style="text-align: left; color: #000000; font-size: large">
        DAYS15-20140621:<asp:HyperLink ID="HyperLink15" runat="server" 
            NavigateUrl="~/Page/Day15-20140621/chatRoom.aspx">chatRoom.aspx</asp:HyperLink>
    </div>
    </form>
    
</body>
</html>
