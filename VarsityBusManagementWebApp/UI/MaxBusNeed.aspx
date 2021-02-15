<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MaxBusNeed.aspx.cs" Inherits="VarsityBusManagementWebApp.UI.MaxBusNeed" %>

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
                        <a href="OfficeLoginUI.aspx" class="nav-link smoothScroll"><i class="fa fa-fw fa-backward"></i> </a>
                    </li>
                </ul>

            <a class="navbar-brand" style="color: #ffa500">Maximum Requirement</a>

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
           <h3 align="center">Max Bus Need</h3>
    <div align="center">
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Select Day" ForeColor="Red"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="dayDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="dayDropDownList_SelectedIndexChanged"></asp:DropDownList>   
                </td>
               <%-- <td>
                    <asp:Button ID="Button1" ForeColor="White" runat="server" Text="Search" OnClick="Button1_Click" BackColor="Black" />  
                </td>--%>
            </tr>
        </table>
       <br/>
    <asp:GridView ID="busNeedGridView" runat="server" AutoGenerateColumns="False" CssClass="mydatagrid" PagerStyle-CssClass="pager" style="margin-top: 3px" CellPadding="4" ForeColor="#333333" GridLines="None" Width="484px">
            <AlternatingRowStyle BackColor="White" />
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
                  <asp:TemplateField HeaderText="Total Student">
                    <ItemTemplate>
                    <asp:Label runat="server" Text='<% #Eval("Total") %>'>'></asp:Label>
                        </ItemTemplate>
                      <HeaderStyle HorizontalAlign="Center" />
                      <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                   <asp:TemplateField HeaderText="Bus Need">
                    <ItemTemplate>
                    <asp:Label runat="server" Text='<% #Eval("BusNeed") %>'>'></asp:Label>
                        </ItemTemplate>
                       <HeaderStyle HorizontalAlign="Center" />
                       <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
            </Columns>

            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />

            <HeaderStyle CssClass="header" BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle CssClass="pager" BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle CssClass="rows" BackColor="#E3EAEB" />

            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />

        </asp:GridView>
        <br/>
        <h4> <asp:Label ID="outputLabel" runat="server" Text=""></asp:Label> </h4>
    </div>
        <section>
            <div align="center">
                <asp:GridView ID="totalGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                <asp:TemplateField HeaderText="Male">
                    <ItemTemplate>
                    <asp:Label runat="server" Text='<% #Eval("Need1") %>'>'></asp:Label>
                        </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                   <asp:TemplateField HeaderText="Female">
                    <ItemTemplate>
                    <asp:Label runat="server" Text='<% #Eval("Need2") %>'>'></asp:Label>
                        </ItemTemplate>
                       <HeaderStyle HorizontalAlign="Center" />
                       <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                
            </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>    
            </div>
        </section>
    </form>
</body>
</html>
