<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ScheduleUpdate.aspx.cs" Inherits="VarsityBusManagementWebApp.UI.ScheduleUpdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="../Style/mdtimepicker.css" rel="stylesheet" />
    <script src="//code.jquery.com/jquery.min.js"></script>
    <script src="../Style/mdtimepicker.min.js"></script>
     <script>
         $(document).ready(function () {
             $('#timeTextBox').mdtimepicker();
         });

     </script>   <link href="../Style/Main/css/bootstrap.min.css" rel="stylesheet" />
      <link href="../Style/Main/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Style/Main/css/font-awesome.min.css" rel="stylesheet" />
    <link href="../Style/Main/css/aos.css" rel="stylesheet" />

     <!-- MAIN CSS -->
    <link href="../Style/Main/css/tooplate-gymso-style.css" rel="stylesheet" />

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
  <a href="OfficeLoginUI.aspx"><i class="fa fa-fw fa-home"></i> Home</a>
</div>
    <div class="main-block">
      
      <form id="form1" runat="server">
        <h2>Update Bus Schedule</h2>
        <div class="info">
     <table>
                     
                     <tr>
                         <td>
                             <asp:Label ID="Label11" runat="server" Text="Routine Type"></asp:Label>
                         </td>
                         <td class="auto-style1">
                             <asp:DropDownList ID="rtypeDropDownList" runat="server"></asp:DropDownList>
                         </td>
                     </tr>
                     
                         <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Way"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="roadDropDownList" runat="server"></asp:DropDownList>
                </td>
            </tr>
                     
                     <tr>
                         <td>
                             <asp:Label ID="Label10" runat="server" Text="Gender"></asp:Label>
                         </td>
                         <td class="auto-style1">
                             <asp:DropDownList ID="genderDropDownList" runat="server"></asp:DropDownList>
                         </td>
                     </tr>
        
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Location"></asp:Label>  
            </td>
            <td class="auto-style1">
                <asp:DropDownList ID="pickupPointDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="pickupPointDropDownList_SelectedIndexChanged"></asp:DropDownList>
            </td>
        </tr>
          <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Previous Time"></asp:Label>   
            </td>
            <td class="auto-style1">
                <asp:DropDownList ID="timeDropDownList" runat="server"></asp:DropDownList>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="New Time"></asp:Label>   
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="timeTextBox" runat="server" OnTextChanged="timeTextBox_OnTextChanged"></asp:TextBox>
   
            </td>
        </tr>
         <tr>
             <td></td>
             <td>
                 <asp:Button ID="Button1" runat="server" Text="Update" BackColor="Black" ForeColor="Red" OnClick="Button1_Click" />   
             </td>
         </tr>
          <tr>
             <td></td>
             <td>
                 <asp:Label ID="outputLabel" runat="server" Text=""></asp:Label>
             </td>
         </tr>
    </table>
    </div>
    </form>
</body>
    
    <script src="//code.jquery.com/jquery.min.js"></script>
    <script src="../Style/mdtimepicker.js"></script>
</html>
