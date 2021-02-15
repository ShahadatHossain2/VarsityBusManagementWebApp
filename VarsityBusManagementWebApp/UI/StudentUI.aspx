<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentUI.aspx.cs" Inherits="VarsityBusManagementWebApp.UI.StudentUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
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
  <a href="IndexUI.aspx"><i class="fa fa-fw fa-home"></i> Home</a>
</div>
    <div class="main-block">
        
    <form id="form1" runat="server">
        <h1 style="color: #008000">Registration</h1>
    <div class="info">
    <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="nameTextBox" placeholder="Your Name" runat="server" Height="16px" Width="163px"></asp:TextBox>       
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Metric No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="metricNoTextBox" placeholder="Enter MetricNo" runat="server" Height="16px" Width="163px"></asp:TextBox>       
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Department"></asp:Label>
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="departmentDropDownList" runat="server" Height="22px" Width="126px"></asp:DropDownList>  
            </td>
        </tr>
            <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Semester"></asp:Label>
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="semesterDropDownList" runat="server" Height="22px" Width="126px">
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>  
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Gender"></asp:Label>
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="genderDropDownList" runat="server" Height="22px" Width="126px"></asp:DropDownList>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Program"></asp:Label>
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="courseDropDownList" runat="server" Height="22px" Width="126px"></asp:DropDownList>      
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Mobile No" ></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="mobileNoTextBox" placeholder="Your Mobile No" runat="server" Height="16px" Width="163px"></asp:TextBox>       
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="emailTextBox" placeholder="Your Email" runat="server" Height="16px" Width="163px"></asp:TextBox>       
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Location"></asp:Label>
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="locationDropDownList" runat="server" Height="22px" Width="126px"></asp:DropDownList>        
            </td>
        </tr>
          <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="PasswordTextbox" TextMode="Password" placeholder="Enter Password" runat="server" Height="16px" Width="140px"></asp:TextBox>     
            </td>
              <td>
                <asp:TextBox ID="ConfirmpassTextbox" TextMode="Password" placeholder="Retype Password" runat="server" Height="16px" Width="140px"></asp:TextBox>     
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                
                <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="submitButton_Click" BackColor="#33CC33" ForeColor="White" />
              </td>
        </tr>
        <tr>
            <td>
                
            </td>
             <td>
                <asp:Label ID="outPutLabel" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
       </table>
    </div>
       
    </form>
    </div>

</body>
</html>
