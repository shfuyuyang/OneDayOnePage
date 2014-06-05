<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="凉宫下载页.aspx.cs" Inherits="Day02_20140604.Page.Day03_20140605.凉宫下载页" %>

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
                            NavigateUrl="~/Novel/凉宫春日/第1卷-凉宫春日的忧郁.txt">第一卷：凉宫春日的忧郁</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" 
                            NavigateUrl="~/Novel/凉宫春日/第2卷-凉宫春日的叹息.txt">第二卷：凉宫春日的叹息</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink3" runat="server" 
                            NavigateUrl="~/Novel/凉宫春日/第3卷-凉宫春日的退屈.txt">第三卷：凉宫春日的退屈</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink4" runat="server" 
                            NavigateUrl="~/Novel/凉宫春日/第4卷-凉宫春日的消失.txt">第四卷：凉宫春日的消失</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink5" runat="server" 
                            NavigateUrl="~/Novel/凉宫春日/第5卷-凉宫春日的暴走.txt">第五卷：凉宫春日的暴走</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink6" runat="server" 
                            NavigateUrl="~/Novel/凉宫春日/第6卷-凉宫春日的动摇.txt">第六卷：凉宫春日的动摇</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink7" runat="server" 
                            NavigateUrl="~/Novel/凉宫春日/第7卷-凉宫春日的阴谋.txt">第七卷：凉宫春日的阴谋</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink8" runat="server" 
                            NavigateUrl="~/Novel/凉宫春日/第8卷-凉宫春日的愤慨.txt">第八卷：凉宫春日的愤慨</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink9" runat="server" 
                            NavigateUrl="~/Novel/凉宫春日/第9卷-凉宫春日的分裂.txt">第九卷：凉宫春日的分裂</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
        <div style="text-align: center; color: #000000">
            <asp:HyperLink ID="HyperLink10" runat="server" 
                NavigateUrl="~/Page/Day03-20140605/Download.aspx" style="font-size: large">return</asp:HyperLink>
    </div>
    </form>
</body>
</html>
