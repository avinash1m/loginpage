<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dashbord.aspx.cs" Inherits="My_Project_dashbord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            height: 47px;
        }
        .auto-style3 {
            width: 851px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="HOME" Width="118px" />
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:Button  ID="Button2" runat="server" Text="registeration details" OnClick="Button2_Click" Width="164px" />
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Log out" />
                </td>
                

            </tr>
        </table>
        
        <asp:Image ID="Image1" runat="server" ImageUrl="~/tree.png" />
    </form>
</body>
</html>
