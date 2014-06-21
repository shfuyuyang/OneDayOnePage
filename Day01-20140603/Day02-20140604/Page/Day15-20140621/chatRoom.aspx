<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="chatRoom.aspx.cs" Inherits="Day02_20140604.Page.Day15_20140621.organ" %>

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
    <div style="text-align: center">
        <asp:Label ID="Label1" runat="server" Text="Chatroom"></asp:Label>
    </div>
        <table class="style1">
            <tr>
                <td style="text-align: center">
                    <asp:ListBox ID="ListBox1" runat="server" Height="279px" Width="872px">
                    </asp:ListBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server" Width="632px"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Send" 
                        Width="91px" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
