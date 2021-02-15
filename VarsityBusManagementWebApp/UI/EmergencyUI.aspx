<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmergencyUI.aspx.cs" Inherits="VarsityBusManagementWebApp.UI.EmergencyUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <%-- 
     <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
    <link rel="stylesheet" href="/resources/demos/style.css" />
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>--%>

      <link href="../Style/mdtimepicker.css" rel="stylesheet" />
    <script src="//code.jquery.com/jquery.min.js"></script>
    <script src="../Style/mdtimepicker.min.js"></script>

     <script>
         $(document).ready(function () {
             $('#timepickerTextBox').mdtimepicker();
         });

     </script>
   
    <script>
        $(function () {
            $("#<%= fromDateTextBox.ClientID %>").datepicker(
                {
                    dateFormat: 'yy-mm-dd',
                    changeMonth: true,
                    changeYear: true,
                    yearRange: '1950:2100'
                });
        });
    </script>
 
   <%-- <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
    <link rel="stylesheet" href="/resources/demos/style.css" />--%>
 
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
        <h1>Emergency</h1>
        <div class="info">

    <table>
     
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Department"></asp:Label>

            </td>
            <td>
                <asp:DropDownList ID="departmentDropDownList" runat="server" Height="30px" Width="138px"></asp:DropDownList>
            </td>
        </tr>
           <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Semester"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="semesterDropDownList" runat="server" Height="30px" Width="138px"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="genderDropDownList" runat="server" Height="30px" Width="138px"></asp:DropDownList>
            </td>
        </tr>
           
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Location"></asp:Label>    
            </td>
            <td>
                <asp:DropDownList ID="locationDropDownList" runat="server" Height="30px" Width="138px"></asp:DropDownList>
            </td>
        </tr>
        
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Way"></asp:Label>   
            </td>
            <td>
                <asp:DropDownList ID="wayDropDownList" runat="server" Height="30px" Width="138px"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Time"></asp:Label>   
            </td>
            <td>
                <asp:TextBox ID="timepickerTextBox" runat="server" OnTextChanged="timepickerTextBox_OnTextChanged" Height="30px" Width="138px"></asp:TextBox>
   
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Date"></asp:Label> 
            </td>
            <td>
                <asp:TextBox ID="fromDateTextBox" runat="server" placeholder="YYYY-MM-DD" Height="30px" Width="138px"></asp:TextBox>
            </td>
        </tr>
     <%--   <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Number of Bus"></asp:Label> 
            </td>
            <td>
                <asp:TextBox ID="busNumberTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>--%>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />    
            </td>
            <td>
                <asp:Label ID="Outputlabel" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
     
        <br/>
        <asp:Button ID="Button2" runat="server" Text="Delete Previous" BackColor="Red" ForeColor="Black" OnClick="Button2_Click" />
           <br/>
        <asp:Label ID="CheckLabel" runat="server" ForeColor="Red"></asp:Label>
    </div>
    </form>
</body>
<%--    <script src="//code.jquery.com/jquery.min.js"></script>
    <script src="../Style/mdtimepicker.js"></script>--%>

</html>

