<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Candite_CV.aspx.cs" Inherits="Candite_CV" %>

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
            text-align: right;
        }
        .auto-style2 {
            text-align: center;
            position: absolute;
            top: 30%;
            left: 60%;
            transform: translate(-60%, -40%);
            width: 630px;
            height: 420px;
            padding: 80px 55px;
            box-sizing: border-box;
            background: rgba(0, 0, 0,0);
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
                    <li><a href="Admin_client.aspx">Client</a></li>
                    <li><a class="active" href="javascript:void(0)">Candite</a></li>
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
        <div style="font-family: Arial" class="auto-style2">

            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
                <Columns>
                    <asp:TemplateField HeaderText="File">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("File") %>' CommandName="Download" Text='<%# Eval("File") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Size" HeaderText="Size in Bytes" />
                    <asp:BoundField DataField="Type" HeaderText="File Type" />
                </Columns>


                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>

        </div>
    </form>
</body>
</html>
