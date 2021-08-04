<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>


<!DOCTYPE html>
<script runat="server">

   
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 253px;
            margin-left: 0px;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 235px;
        }
        .auto-style4 {
            height: 26px;
            width: 235px;
        }
        .auto-style5 {
            width: 235px;
            height: 163px;
        }
        .auto-style6 {
            height: 163px;
        }
        .auto-style7 {
            width: 235px;
            height: 34px;
        }
        .auto-style8 {
            height: 34px;
        }
        .auto-style9 {
            height: 28px;
            width: 235px;
        }
        .auto-style10 {
            height: 28px;
        }
        .auto-style11 {
            width: 787px;
        }
        .auto-style12 {
            height: 28px;
            width: 787px;
        }
        .auto-style13 {
            height: 34px;
            width: 787px;
        }
        .auto-style14 {
            height: 26px;
            width: 787px;
        }
        .auto-style15 {
            height: 163px;
            width: 787px;
        }
    </style>
</head>
<body>
    <div style="background-color: lightgoldenrodyellow" >

    <form id="form2" runat="server">
        <asp:Button ID="Button5" runat="server" CausesValidation="False" OnClick="Button5_Click" Text="HOME" />
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">name</td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox1" runat="server" Width="218px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="please enter name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">password</td>
                <td class="auto-style12">
                    <asp:TextBox ID="password" runat="server" Width="222px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style10">
                    <asp:Button ID="Button4" runat="server" CausesValidation="False" OnClick="Button4_Click" Text="Login " />
                    <asp:Label ID="Label4" runat="server" Text="for login click here"></asp:Label>
                </td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style3">confirm password</td>
                
                <td class="auto-style11">
                    <asp:TextBox ID="confirm" runat="server" Width="224px" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="confirm" ErrorMessage="confirm passwor" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="confirm" ControlToValidate="password" ErrorMessage="password not match" ForeColor="Red"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">city</td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox4" runat="server" Width="223px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="enter your city name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">gender</td>
                <td class="auto-style13">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                        <asp:ListItem Value="1">male</asp:ListItem>
                        <asp:ListItem Value="2">female</asp:ListItem>
                        <asp:ListItem Value="3">other</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style4">email</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox6" runat="server" Width="226px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="enter your email address" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="enter correct email address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style11">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                    <asp:Label ID="Label1" runat="server" AssociatedControlID="Button1"></asp:Label>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update" />
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Delete" />
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style15">

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" >
                        <Columns>
                           
                            <asp:TemplateField HeaderText="id">
                                <ItemTemplate>
                                    <a href='register.aspx?ID=<%#Eval("id")%> ' ><%#Eval("id")%></a>
                                     

                                </ItemTemplate>

                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="name">
                                <ItemTemplate>
                                    <a href='register.aspx?ID=<%#Eval("id")%> ' ><%#Eval("name")%></a>
                                     

                                </ItemTemplate>

                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="password">
                                <ItemTemplate>
                                    <a href='register.aspx?ID=<%#Eval("id")%>'><%#Eval("password")%></a>
                                </ItemTemplate>

                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="confirm password">
                                <ItemTemplate>
                                    <a href='register.aspx?ID=<%#Eval("id")%>'><%#Eval("confirm password")%></a>
                                </ItemTemplate>

                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="city">
                                <ItemTemplate>
                                    <a href='register.aspx?ID=<%#Eval("id")%>'><%#Eval("city")%></a>
                                </ItemTemplate>

                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="gender">
                                <ItemTemplate>
                                    <a href='register.aspx?ID=<%#Eval("id")%>'><%#Eval("gender")%></a>
                                </ItemTemplate>
                             </asp:TemplateField>
                             <asp:TemplateField HeaderText="email">
                                <ItemTemplate>
                                    <a href='register.aspx?ID=<%#Eval("id")%>'><%#Eval("email")%></a>
                                </ItemTemplate>

                            </asp:TemplateField>

                            

                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                </td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
            </tr>
        </table>

    </form>
        </div>
</body>
</html>
