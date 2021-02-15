<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClassRoutin.aspx.cs" Inherits="VarsityBusManagementWebApp.UI.ClassRoutin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Class-Routine-Upload</title>
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
          <h1 style="color: #008000">Upload Class Routine </h1>
    <div class="info">
    <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Department"></asp:Label> 
            </td>
            <td>
                <asp:DropDownList ID="departmentDropDownList" runat="server"></asp:DropDownList>
                &nbsp; <asp:Button ID="Button2" runat="server" Text="Add New" BackColor="Red" ForeColor="White" Height="29px" OnClick="Button2_Click" Width="86px" />
            </td>
        </tr>
           <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Gender"></asp:Label> 
            </td>
            <td>
                <asp:DropDownList ID="genderDropDownList" runat="server"></asp:DropDownList> 
            </td>
        </tr>
          <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Class Routine"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload" runat="server" BackColor="White" ForeColor="Red" /> 
                <br />
                <asp:Label ID="warningLabel" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
         <tr>
             <td>
               
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" BackColor="Black" ForeColor="White" />
            </td>
            
        </tr>
        <tr>
            <td></td>
            <td> <asp:Label ID="OutputLabel" runat="server" ForeColor="Red"></asp:Label> </td>

        </tr>
    </table>
    </div>
    </form>
</body>
</html>
