<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FeedbackUI.aspx.cs" Inherits="VarsityBusManagementWebApp.UI.Feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet"/>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
    <link rel="stylesheet" href="/resources/demos/style.css" />
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $(function () {
            $("#<%= fromDateTextBox.ClientID %>").datepicker({ dateFormat: 'yy-mm-dd' }).datepicker("setDate", 1);

        });
    </script>
     <script>
         $(function () {
             $("#<%= toDateTextBox.ClientID %>").datepicker({ dateFormat: 'yy-mm-dd' }).datepicker("setDate", 15);

         });
     </script>
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
           
  <a href="StudentMenu.aspx"><i class="fa fa-fw fa-home"></i> Home</a>
  <a href="CheckStatusUI.aspx"><i class="fa fa-fw fa-check"></i> Status</a>
<a href="StudentLogin.aspx"><i class="fa fa-fw fa-sign-out"></i> Logout</a>
</div>
    <div class="main-block">
        
    <form id="form1" runat="server">
        <h1 style="color: #008000">Give Feedback</h1>
    <div class="info">
    <table>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>   
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="nameTextBox" runat="server" ReadOnly="True" Height="20px" Width="160px"></asp:TextBox>  
            </td>
        </tr>
           <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label> 
                
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="emailTextBox" runat="server" ReadOnly="True" Height="20px" Width="160px"></asp:TextBox>  
                <asp:Button ID="Button1" runat="server" Text="Update" BackColor="Black" ForeColor="White" Height="29px" Width="66px" OnClick="Button1_Click" />
                
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Pickup Point"></asp:Label>   
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="pickupTextBox" runat="server" ReadOnly="True" Height="20px" Width="160px"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" Text="Update" BackColor="Black" ForeColor="White" Height="29px" Width="66px" OnClick="Button2_Click" />  
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="From Date"></asp:Label>   
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="fromDateTextBox" runat="server"></asp:TextBox>  
            </td>
        </tr>
          <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="To Date"></asp:Label>   
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="toDateTextBox"  runat="server"></asp:TextBox>  
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Confirm Status"></asp:Label>   &nbsp;
            </td>
            <td>
<%--                <asp:DropDownList ID="statusDropDownList" runat="server" Height="45px" Width="101px"></asp:DropDownList>--%>
                <asp:RadioButton ID="RadioButton1" Text="Yes" GroupName="confirm" runat="server" />
                <asp:RadioButton ID="RadioButton2" Text="No" GroupName="confirm" runat="server" />
                <asp:Label ID="statusLabel" runat="server" ForeColor="red" Text=""></asp:Label>
            </td>
            <%-- <td>
                 
             </td>
             <td>
                 
             </td>--%>
        </tr>
        <tr>
            <td>
                
            </td>
            <td class="auto-style1">
                <asp:Button ID="confirmButton" runat="server" Text="Confirm" OnClick="confirmButton_Click" BackColor="#ffa500" ForeColor="Blue" />
            </td>
        </tr>
        <tr>
            <td></td>
            <td>  <asp:Label ID="outputLabel" runat="server" ForeColor="red" Text=""></asp:Label></td>
             
        </tr>
        
    </table>
        
    </div>

    </form>
          </div>
</body>
</html>
