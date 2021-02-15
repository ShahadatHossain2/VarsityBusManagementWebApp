<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LocationUpdateUI.aspx.cs" Inherits="VarsityBusManagementWebApp.UI.LocationUpdateUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <link href="../Style/Main/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Style/Main/css/font-awesome.min.css" rel="stylesheet" />
    <link href="../Style/Main/css/aos.css" rel="stylesheet" />

     <!-- MAIN CSS -->
    <link href="../Style/Main/css/tooplate-gymso-style.css" rel="stylesheet" />
    <style>
        body {
  background: #3cb371;
}
    </style>

</head>
<body>
  <!-- MENU BAR -->
    <nav class="navbar navbar-expand-lg fixed-top">
        <div class="container">
             <ul class="navbar-nav ml-lg-auto">
                    <li class="nav-item">
                        <a href="FeedbackUI.aspx" class="nav-link smoothScroll"><i class="fa fa-fw fa-backward"></i> </a>
                    </li>
                </ul>

            <a class="navbar-brand" style="color: #ffa500">Update Pickup point</a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-lg-auto">
                    <li class="nav-item">
                        <%--<a href="IndexUI.aspx" class="nav-link smoothScroll"><i class="fa fa-fw fa-home"></i> Home</a>--%>
                       
                    </li>

                </ul>

                
            </div>

        </div>
    </nav>
    <br/>
        <br/>
        <br/>
        <br/>
    <form id="form1" runat="server">
    <div align="center">
        
    <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Pickup point"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="pickuppointDropDownList" runat="server"></asp:DropDownList>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" BackColor="Black" ForeColor="White" />
            </td>
        </tr>
    </table>
        <asp:Label ID="outputLabel" runat="server" ForeColor="Red"></asp:Label>

    </div>
    </form>
</body>
</html>
