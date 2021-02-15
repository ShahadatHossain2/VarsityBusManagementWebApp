<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NoticeUI.aspx.cs" Inherits="VarsityBusManagementWebApp.UI.NoticeUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet"/>
        <link href="../Style/Login.css" rel="stylesheet" />
      <link href="../Style/LoginNavBar.css" rel="stylesheet" />
 <link href="../Style/Edit/slidenav.css" rel="stylesheet" />
      <link href="../Style/Edit/textarea.css" rel="stylesheet" />

</head>
<body>
 <div class="sidenav">
<br/>  
<br/>        
<br/>        
           
  <a href="OfficeLoginUI.aspx"><i class="fa fa-fw fa-home"></i> Home</a>
</div>
    <div class="main-block">
        
    <form id="form1" runat="server">
        <h1 style="color: #008000">Notice</h1>
    <div class="info">
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Write"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                   
                    <asp:TextBox ID="noticeTextBox" runat="server" Height="20px" Width="227px"></asp:TextBox> 
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Send" BackColor="#33CC33" ForeColor="White" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="outputLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    </form>
    </div>

</body>
</html>
