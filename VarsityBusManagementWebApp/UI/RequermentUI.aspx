<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequermentUI.aspx.cs" Inherits="VarsityBusManagementWebApp.UI.RequermentUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
    <link rel="stylesheet" href="/resources/demos/style.css" />
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $(function () {
            $("#<%= dateTextBox.ClientID %>").datepicker({ dateFormat: 'yy-mm-dd' }).datepicker("setDate", 1);

        });
    </script>
 
    <link href="../Style/Grid.css" rel="stylesheet" />
    <link href="../Style/Main/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Style/Main/css/font-awesome.min.css" rel="stylesheet" />
    <link href="../Style/Main/css/aos.css" rel="stylesheet" />

    <!-- MAIN CSS -->
    <link href="../Style/Main/css/tooplate-gymso-style.css" rel="stylesheet" />
    <style>
        body {
            background: #00bfff;
        }
    </style>

</head>
<body>
    <!-- MENU BAR -->
    <nav class="navbar navbar-expand-lg fixed-top">
        <div class="container">
            <ul class="navbar-nav ml-lg-auto">
                <li class="nav-item">
                    <a href="OfficeLoginUI.aspx" class="nav-link smoothScroll"><i class="fa fa-fw fa-backward"></i></a>
                </li>
            </ul>

            <a class="navbar-brand" style="color: #ffa500">Number of students in each pickup point</a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-lg-auto">
                    <li class="nav-item">
                        <a href="OfficeLoginUI.aspx" class="nav-link smoothScroll"><i class="fa fa-fw fa-home"></i>Home</a>

                    </li>
                    <li class="nav-item">
                        <a href="OfficeUI.aspx" class="nav-link smoothScroll"><i class="fa fa-fw fa-sign-out"></i>LogOut</a>
                    </li>
                </ul>


            </div>

        </div>
    </nav>
    <br />
    <br />
    <br />
    <br />
    <form id="form1" runat="server">
      
        <div align="center">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Date"></asp:Label>   
                    </td>
                    <td>
            <asp:TextBox ID="dateTextBox" runat="server" ForeColor="Green"></asp:TextBox>
                        </td>
                      <td>
                    <asp:Button ID="Button1" runat="server" ForeColor="White" BackColor="Orange" Text="See The List" OnClick="unassignButton_Click" />
                </td>
                    </tr>
                
                </table>
            <br/>
            <br/>
            <asp:Label ID="Outputlabel" runat="server" Text=""></asp:Label>
        </div>
        <div align="center">
            <asp:GridView ID="requermentListGridView" runat="server" AutoGenerateColumns="False" CssClass="mydatagrid" PagerStyle-CssClass="pager" Style="margin-top: 3px">
                <Columns>
                    <asp:TemplateField HeaderText="Pickup Point">
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<% #Eval("Location")%>'>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Number Of Students">
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<% #Eval("StudentNumber")%>'>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Gender">
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<% #Eval("Gender")%>'>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

                <HeaderStyle CssClass="header" />
                <PagerStyle CssClass="pager" />
                <RowStyle CssClass="rows" />

            </asp:GridView>

        </div>
        <br />
         

    </form>
</body>

</html>
