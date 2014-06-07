<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="music.aspx.cs" Inherits="Day02_20140604.Page.Day05_20140607.music" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../Site/Site1.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        #MediaPlayer
        {
            width: 351px;
        }
        .style1
        {
            font-size: large;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    <EMBED SRC="http://www.sherlockroiland.com/Music/初音 - 罗密欧与灰姑娘.mp3" autostart=true hidden=true loop=true>
    </div>
    <div class="style1">
    
        因为光有一个空空的网页不太好，所以就放一个BGM的下载吧：<asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/Music/初音 - 罗密欧与灰姑娘.mp3">点我下载背景音乐（右键另存）</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
