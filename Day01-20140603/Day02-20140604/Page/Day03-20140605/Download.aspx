<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Download.aspx.cs" Inherits="Day02_20140604.Page.Day03_20140605.Download" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>小说下载</title>
    <link href="../../Site/Site1.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            font-size: large;
            color: #000000;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        下载小说：</div>
    <div>
        <table class="style1">
            <tr>
                <td>
                <div style="text-align: center">
                    <asp:ImageButton ID="ImageButton1" runat="server" 
                        ImageUrl="~/Image/GOSICK-image.jpg" 
                        PostBackUrl="~/Page/Day03-20140605/GOSCIK下载页.aspx" />
                    </div>
                <div style="text-align: center">
                    <asp:HyperLink ID="HyperLinkGOSICK" runat="server" 
                        NavigateUrl="~/Page/Day03-20140605/GOSCIK下载页.aspx" 
                        style="text-align: center">GOSICK</asp:HyperLink>
                        </div>
                </td>
                <td>
                                <div style="text-align: center">
                                    <asp:ImageButton ID="ImageButton2" runat="server" 
                                        ImageUrl="~/Image/凉宫春日-image.jpg" 
                                        PostBackUrl="~/Page/Day03-20140605/凉宫下载页.aspx" />
                                </div>
                <div style="text-align: center">
                    <asp:HyperLink ID="HyperLinkHar" runat="server" 
                        NavigateUrl="~/Page/Day03-20140605/凉宫下载页.aspx" style="text-align: center">凉宫春日</asp:HyperLink>
                        </div>
                </td>
            </tr>
        </table>
    </div>
    <div class="style2">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Page/Index.aspx">return</asp:HyperLink>
    </div>
    </form>
</body>
</html>
