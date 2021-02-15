<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoutineViewUI.aspx.cs" Inherits="VarsityBusManagementWebApp.UI.RoutineViewUI" %>

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
            background: #00ced1;
}
    </style>

</head>
<body>
  <!-- MENU BAR -->
    <nav class="navbar navbar-expand-lg fixed-top">
        <div class="container">
            <%-- <ul class="navbar-nav ml-lg-auto">
                    <li class="nav-item">
                        <a href="OfficeLoginUI.aspx" class="nav-link smoothScroll"><i class="fa fa-fw fa-backward"></i> </a>
                    </li>
                </ul>--%>

            <a class="navbar-brand" style="color: #ffa500">Class Routine</a>

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
      <asp:GridView ID="routineGridView" runat="server" AutoGenerateColumns="False" CssClass="mydatagrid" PagerStyle-CssClass="pager" style="margin-top: 3px" CellPadding="3" Width="460px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">
            <Columns>
                <asp:TemplateField HeaderText="Department">
                    <ItemTemplate>
                    <asp:Label runat="server" Text='<% #Eval("Department") %>'>'></asp:Label>
                        </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                   <asp:TemplateField HeaderText="Gender">
                    <ItemTemplate>
                    <asp:Label runat="server" Text='<% #Eval("Gender") %>'>'></asp:Label>
                        </ItemTemplate>
                       <HeaderStyle HorizontalAlign="Center" />
                       <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                  <asp:HyperLinkField DataNavigateUrlFields="ClassRoutine" HeaderText="Class Routine" Text="View">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:HyperLinkField>
            </Columns>

            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />

            <HeaderStyle CssClass="header" BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle CssClass="pager" ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle CssClass="rows" BackColor="#FFF7E7" ForeColor="#8C4510" />

            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />

        </asp:GridView>
    </div>
    </form>
</body>
</html>
