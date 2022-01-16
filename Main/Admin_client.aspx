<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_client.aspx.cs" Inherits="Admin_client" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %> 
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Phoenix</title>
    <link rel="stylesheet" href="home.css">
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <style type="text/css">
        .auto-style1 {
            text-align: center;
            position: absolute;
            top: 40%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 630px;
            height: 420px;
            padding: 80px 55px;
            box-sizing: border-box;
            background: rgba(0, 0, 0,0);
        }
        .auto-style2 {
            text-align: right;
        }
        .auto-style3 {
            font-weight: 700;
             font-size: medium; 
             color: #FFFFFF; 
             margin-top: 10px; 
             margin-left: 0px;
             
        }
        
        body {
            background-image:url('login2.jpg');
            background-size:cover;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <section >
            <nav class="navbarr">
                <div class="logo">
                    <h4><span>P</span>hoenix</h4>
                </div>
                <ul id="Ul1" class="nav-links">
                    
                    <li><a href="Admin.aspx">Home</a></li>
                    <li><a href="Admin_employee.aspx">Employee</a></li>
                    <li><a class="active" href="javascript:void(0)">Client</a></li>
                    <li><a href="Admin_Candite_CV.aspx">Candite</a></li>
                    <li>
                        <asp:Button ID="B_logout" OnClick="B_logout_Click" runat="server" Text="Logout" CssClass="ccolor" /></li>
                    <li>
                        <asp:Label ID="Label_welcome" runat="server" Text="" ForeColor="White"></asp:Label></li>

                </ul>

                <div class="burger">
                    <div class="line1"></div>
                    <div class="line2"></div>
                    <div class="line3"></div>
                </div>
            </nav>
           
        </section>


        <script src="home.js"></script>
     <div class ="auto-style1">
        <table>
            <tr>
                <td class="auto-style2">Client Name </td>
                <td><asp:TextBox ID="C_name" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style2">Requirment Sector</td>
                <td><asp:TextBox ID="R_sector" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td class="auto-style2">Incharge Team</td>
                <td><asp:TextBox ID="I_team" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style2">Service Start</td>
                <td><asp:TextBox ID="S_start" runat="server"></asp:TextBox>
                    <cc1:CalendarExtender ID="cal1" PopupButtonID="Imbtn1" runat="server" TargetControlID="S_start"  
                        Format="dd/MM/yyyy">  
                    </cc1:CalendarExtender>
                   
                </td>
            </tr>
           
            <tr>
                <td class="auto-style2">Service End</td>
                <td><asp:TextBox ID="S_end" runat="server"></asp:TextBox>
                <cc1:CalendarExtender ID="CalendarExtender1" PopupButtonID="Imbtn1" runat="server" TargetControlID="S_end"  
                        Format="dd/MM/yyyy"> </cc1:CalendarExtender>
                    </td>
            </tr>
            <tr>
                <td class="auto-style2">Payment</td>
                <td><asp:TextBox ID="payment" runat="server"></asp:TextBox></td>
            </tr>
            
            <tr>
                <td class="auto-style2">Enter ID for Update / Delete</td>
                <td><asp:TextBox ID="idd" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan ="10"  align ="right" class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" Width="81px" BackColor="#330000" Height="25px" ForeColor="White"/>
                    <asp:Button ID="Button2" runat="server" Text="Delete" OnClick="Button2_Click" Width="81px" BackColor="#330000" Height="25px" ForeColor="White"/>
                    <asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" Width="68px" BackColor="#330000" Height="25px" ForeColor="White"/>
                 

                </td>
            </tr>
        </table>
        <table>  
            <tr>  
                <td>  
                    <asp:ScriptManager ID="ScriptManager1" runat="server">  
                    </asp:ScriptManager>  
                </td>  
            </tr>  
        </table>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </div>
    </form>
</body>
</html>
