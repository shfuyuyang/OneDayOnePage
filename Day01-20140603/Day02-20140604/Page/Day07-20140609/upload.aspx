<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="upload.aspx.cs" Inherits="Day02_20140604.Page.Day07_20140609.upload" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../Site/Site1.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            color: #CC00CC;
        }
        .style2
        {
            width: 100%;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1" style="text-align: center">
    
        UPLOAD</div>
    <div style="font-size: large; text-align: center">&nbsp;&nbsp;&nbsp; You can
        <asp:Button ID="ButtonUp" runat="server" Text="UPLOAD FILES" 
            onclick="ButtonUp_Click" />
&nbsp;by this page or
        <asp:Button ID="ButtonDown" runat="server" Text="DOWNLOAD FILES" 
            onclick="ButtonDown_Click" />
        .</div>

    <div>
        <table class="style2">
            <tr>
                <td style="text-align: center">
                    <asp:FileUpload ID="FileUpload1" runat="server" 
                        style="text-align: center; margin-left: 0px" Width="225px" />
                </td>
                <td style="text-align: center">
                    <asp:TextBox ID="TextBox1" 
                        runat="server"></asp:TextBox>
                </td>
                <td style="text-align: center">
                    <asp:Button ID="ButtonUpload" runat="server" Text="Upload" 
                        onclick="ButtonUpload_Click" />
                </td>
            </tr>
        </table>
    </div>
    <div style="text-align: center">
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;
        <asp:ListBox ID="ListBox1" runat="server" style="text-align:left" 
            Width="435px"></asp:ListBox>
&nbsp;
        <asp:Button ID="ButtonDownload" runat="server" Text="Download" 
            onclick="ButtonDownload_Click" />
    </div>
    <div style="text-align: center">
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Page/Index.aspx" 
            style="text-align: center; color: #000000; font-size: large">Click here to return Index</asp:HyperLink>
    </div>
    </form>
</body>
</html>
