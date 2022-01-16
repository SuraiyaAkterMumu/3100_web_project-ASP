<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .register {
             position:absolute;
            top: 50%;
            left: 50%;
            transform:translate(-50%, -50%);
            width:470px;
            height:450px;
            
            box-sizing:border-box;
            background:rgba(0,0,0,0.2);
            }
        .auto-style1 {
            /*width: 70%;*/
        }
        .t1 {
            padding:20px;
            margin:0;
            color:#330000;
            text-align: center;
            font-size:x-large;
            position:relative;
            top:2px;
            left:-5px;
        }
        .auto-style2 {
           /* width: 252px;*/
            text-align: right;
        }
        .auto-style3 {
            /*width: 252px;*/
            text-align: right;
            color: #808080;
        }
        .auto-style4 {
           /* width: 189px;*/
        }
        .auto-style5 {
            text-align: left;
        }
        .auto-style6 {
            color: #FF0000;
            text-align:center;
        }
        #Reset1 {
           /*width: 56px;*/ 
        }
        body {
            background-image:url('login2.jpg');
            background-size:cover;
        }
        .auto-style7 {
           /* width: 252px;*/
            text-align: right;
            color: #666666;
            width:130px;
        }
        .center {
             position:absolute;
            top: 40px;
            left: 82px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="register">
         <p class="t1">Create Account</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxUN" runat="server" Width="180px" placeholder="Enter User Name" CssClass="auto-style6"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUN" CssClass="auto-style6" ErrorMessage="User Name is required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="180px" placeholder="Enter User Email" CssClass="auto-style6"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail" CssClass="auto-style6" ErrorMessage="Email is required"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="You must enter valid email ID" style="color: #CC0000" ControlToValidate="TextBoxEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password" Width="180px" placeholder="Enter User password" CssClass="auto-style6"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPass" CssClass="auto-style6" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxRPass" runat="server" TextMode="Password" Width="180px" placeholder="Conform Password" CssClass="auto-style6"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxRPass" CssClass="auto-style6" ErrorMessage="Confirm Password is required"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPass" ControlToValidate="TextBoxRPass" ErrorMessage="Both password must be same" style="color: #FF0000"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownListCountry" runat="server" style="color: #999999" Width="188px" CssClass="auto-style6">
                        <asp:ListItem>Select Country </asp:ListItem>
                        <asp:ListItem>Bangladesh</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>Nepal</asp:ListItem>
                        <asp:ListItem>USA</asp:ListItem>
                        <asp:ListItem>UK</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownListCountry" CssClass="auto-style6" ErrorMessage="Select a country name" InitialValue="Select Country"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"> </td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" Visible="true" BackColor="#003366" style="color: #FFFFFF; margin-left: 37px;" Width="103px"/>
                    </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
