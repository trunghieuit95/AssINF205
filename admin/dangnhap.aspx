<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="dangnhap.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../styles.css" rel="stylesheet" type="text/css" />
    <title>Đăng nhập</title>
</head>
<body style="text-align: center">
    <div id="wrapper">
    <form id="form1" runat="server" class="loginform">
        <div id="content" style="clear:both; width:100%;">
            <div class="sidebar_header">Login</div>
            <div class="content clearfix">
     	        <p>Username: <asp:TextBox ID="txttaikhoan" runat="server"></asp:TextBox></p>
                <p>Password: <asp:TextBox ID="txtmatkhau" runat="server" TextMode="Password"></asp:TextBox></p>
                <p><asp:Button ID="btndangnhap" runat="server" onclick="btndangnhap_Click" Text="ĐĂNG NHẬP" /></p>
            </div>
          </div>
    </form> 
        </div>
</body>
</html>
