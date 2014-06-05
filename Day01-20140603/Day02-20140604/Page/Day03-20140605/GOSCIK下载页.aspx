<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GOSCIK下载页.aspx.cs" Inherits="Day02_20140604.Page.Day03_20140605.GOSCIK下载页" %>

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
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        选择卷数：</div>
        <div>
            <table class="style1">
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" 
                            NavigateUrl="~/Novel/GOSICK/GOSICK前传.txt">前传</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" 
                            NavigateUrl="~/Novel/GOSICK/GOSICK S2.txt">S2</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink3" runat="server" 
                            NavigateUrl="~/Novel/GOSICK/GOSICK前传3.txt">前传3</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink4" runat="server" 
                            NavigateUrl="~/Novel/GOSICK/GOSICK第二卷.txt">第二卷</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink5" runat="server" 
                            NavigateUrl="~/Novel/GOSICK/GOSICK第三卷.txt">第三卷</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink6" runat="server" 
                            NavigateUrl="~/Novel/GOSICK/GOSICK第四卷.txt">第四卷</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink7" runat="server" 
                            NavigateUrl="~/Novel/GOSICK/GOSICK第五卷.txt">第五卷</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink8" runat="server" 
                            NavigateUrl="~/Novel/GOSICK/GOSICK第六卷.txt">第六卷</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
        <div style="text-align: center">
            <asp:HyperLink ID="HyperLink9" runat="server" 
                NavigateUrl="~/Page/Day03-20140605/Download.aspx" 
                style="font-size: large; color: #000000; text-align: center">return</asp:HyperLink>
    </div>
    </form>
</body>
</html>
