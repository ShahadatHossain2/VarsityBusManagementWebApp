<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckStatusUI.aspx.cs" Inherits="VarsityBusManagementWebApp.UI.CheckStatusUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 
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
                    <a href="FeedbackUI.aspx" class="nav-link smoothScroll"><i class="fa fa-fw fa-backward"></i></a>
                </li>
            </ul>

            <a class="navbar-brand" style="color: #ffa500">Status</a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-lg-auto">
                    <li class="nav-item">
                        <a href="IndexUI.aspx" class="nav-link smoothScroll"><i class="fa fa-fw fa-home"></i>Home</a>

                    </li>
                    <li class="nav-item">
                        <a href="StudentLogin.aspx" class="nav-link smoothScroll"><i class="fa fa-fw fa-sign-out"></i>LogOut</a>
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
      
            <asp:GridView ID="requermentListGridView" runat="server" AutoGenerateColumns="False" CssClass="mydatagrid" PagerStyle-CssClass="pager" Style="margin-top: 3px">
                <Columns>
                     <asp:TemplateField HeaderText="Status">
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<% #Eval("Status")%>'>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Pickup Point">
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<% #Eval("Location")%>'>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="From">
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<% #Eval("FromDate")%>'>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="To">
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<% #Eval("ToDate")%>'>'></asp:Label>
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
