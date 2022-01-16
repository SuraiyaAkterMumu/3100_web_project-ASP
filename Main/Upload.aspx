<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Upload.aspx.cs" Inherits="Upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
    <div style="font-family:Arial">
        <h3 style="text-align:center">Drop Your CV</h3>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="Button1" runat="server" Text="Upload" Height="21px" OnClick="Button1_Click" style="margin-top: 0px" />
    
    </div>

    </form>
</body>
</html>
