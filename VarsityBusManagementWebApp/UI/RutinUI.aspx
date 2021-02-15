<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RutinUI.aspx.cs" Inherits="VarsityBusManagementWebApp.UI.RutinUI" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Input Student Number</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
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
        <h1>Input Student Number</h1>
        <div class="info">
         <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Day" ForeColor="Blue"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="dayDropDownList" runat="server" Height="30px" Width="138px"></asp:DropDownList>
            </td>
        </tr>
          <tr>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" Text="Department" ForeColor="Blue"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:DropDownList ID="departmentDropDownList" runat="server" Height="30px" Width="138px"></asp:DropDownList>
            </td>
        </tr>
          <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Semester" ForeColor="Blue"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="semesterDropDownList" runat="server"  Height="30px" Width="138px"></asp:DropDownList>
            </td>
        </tr>
          <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Gender" ForeColor="Blue"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="genderDropDownList" runat="server"  Height="30px" Width="138px"></asp:DropDownList>
            </td>
        </tr>
          <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Number Of student" ForeColor="Blue"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="studentNumberTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
                <tr>
             <td></td>
              <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" BackColor="#0066FF" ForeColor="White" />
            </td>
          
             
        </tr>
        <tr>
            <td></td>
               <td>
                <asp:Label ID="outputLabel" runat="server" ForeColor="Red"></asp:Label>
            </td>
          
            
        </tr>
             </table>
        </div>
        
      </form>
    </div>
  </body>
</html>
