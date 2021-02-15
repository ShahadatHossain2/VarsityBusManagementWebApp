<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ScheduleUI.aspx.cs" Inherits="VarsityBusManagementWebApp.UI.ScheduleUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link href="../Style/Grid.css" rel="stylesheet" />
   
    <link href="../Style/Main/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Style/Main/css/font-awesome.min.css" rel="stylesheet" />
    <link href="../Style/Main/css/aos.css" rel="stylesheet" />

     <!-- MAIN CSS -->
    <link href="../Style/Main/css/tooplate-gymso-style.css" rel="stylesheet" />
    <style>
        body {
  background: #eee8aa;
}
    </style>

</head>
<body>
  <!-- MENU BAR -->
    <nav class="navbar navbar-expand-lg fixed-top">
        <div class="container">
            <%-- <ul class="navbar-nav ml-lg-auto">
                    <li class="nav-item">
                        <a class="nav-link smoothScroll" href="BusScheduleMenuUi.aspx"><i class="fa fa-fw fa-backward"></i> </a>
                    </li>
                </ul>--%>

            <a class="navbar-brand" style="color: #ffa500">Male Bus Schedule</a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-lg-auto">
                     <li class="nav-item">
                         <a href="ExamBusScheduleUI.aspx" class="nav-link smoothScroll"><i class="fa fa-fw fa-table"></i> During Exam</a>
                    </li>
                    <li class="nav-item">
                         <a href="FemaleBusSchedule.aspx" class="nav-link smoothScroll"><i class="fa fa-fw fa-table"></i> Female Bus Schedule</a>
                    </li>
                      <li class="nav-item">
                         <a href="IndexUI.aspx" class="nav-link smoothScroll"><i class="fa fa-fw fa-home"></i> Home</a>
                    </li>
                </ul>

                
            </div>

        </div>
    </nav>
    <br/>
    <br/>
    <br/>
    <form id="form1" runat="server" >

        <h3 align="center">City To University</h3>
    <div align="center">
    <asp:GridView ID="cityListGridView" runat="server" AutoGenerateColumns="False" CssClass="mydatagrid" PagerStyle-CssClass="pager" style="margin-top: 3px">
            <Columns>
                <asp:TemplateField HeaderText="Pickup Point">
                    <ItemTemplate>
                    <asp:Label runat="server" Text='<% #Eval("Location") %>'>'></asp:Label>
                        </ItemTemplate>
                </asp:TemplateField>
                   <asp:TemplateField HeaderText="Time">
                    <ItemTemplate>
                    <asp:Label runat="server" Text='<% #Eval("Time") %>'>'></asp:Label>
                        </ItemTemplate>
                </asp:TemplateField>
            </Columns>

            <HeaderStyle CssClass="header" />
            <PagerStyle CssClass="pager" />
            <RowStyle CssClass="rows" />

        </asp:GridView>
    </div>
           <h3 align="center">University  To City</h3>
    <div align="center">
    <asp:GridView ID="varsityGridView" runat="server" AutoGenerateColumns="False" CssClass="mydatagrid" PagerStyle-CssClass="pager" style="margin-top: 3px">
            <Columns>
                <asp:TemplateField HeaderText="Pickup Point">
                    <ItemTemplate>
                    <asp:Label runat="server" Text='<% #Eval("Location") %>'>'></asp:Label>
                        </ItemTemplate>
                </asp:TemplateField>
                   <asp:TemplateField HeaderText="Time">
                    <ItemTemplate>
                    <asp:Label runat="server" Text='<% #Eval("Time") %>'>'></asp:Label>
                        </ItemTemplate>
                </asp:TemplateField>
            </Columns>

            <HeaderStyle CssClass="header" />
            <PagerStyle CssClass="pager" />
            <RowStyle CssClass="rows" />

        </asp:GridView>
    </div>
       
    </form>
</body>
</html>
