<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProfessorPage.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script src="Scripts/jquery-1.9.1.js"></script>
    <script src="Scripts/ui/jquery.ui.core.js"></script>
    <script src="Scripts/ui/jquery.ui.widget.js"></script>
    <link href="css/demos.css" rel="stylesheet" />
    <link href="css/themes/start/jquery.ui.theme.css" rel="stylesheet" />
    <script src="Scripts/ui/jquery.ui.tabs.js"></script>
    <script src="Scripts/ui/jquery.ui.accordion.js"></script>

    <link href="css/demos.css" rel="stylesheet" />
    <script lang="javascript" type="text/javascript">
        $(document).ready(function () {
            $("#accordion").accordion();
        });

    </script>

    <style type="text/css">
        .newStyle1 {
            background-image: url('Images/blue.jpg');
        }

        .newStyle2 {
            border-style: inset;
            border-color: #00FF00;
        }

        .newStyle3 {
            background-image: url('Images/blue.jpg');
            border: medium inset #00FF00;
            width: 830px;
            text-align: center;
        }

        .newStyle4 {
            background-image: url('Images/blue.jpg');
            border: medium inset #00FF00;
            width: 830px;
            text-align: center;
        }

        .newStyle5 {
            background-image: url('Images/blue.jpg');
            border: medium inset #00FF00;
            width: 960px;
        }

        .newStyle6 {
            border: medium inset #00FF00;
            height: 46px;
        }

        .auto-style3 {
            height: 176px;
            width: 803px;
            margin-left: 21px;
        }

        .newStyle7 {
            position: fixed;
            width: auto;
            height: 1cm;
        }

        .newStyle8 {
            display: block;
            width: 860px;
            color: #0066FF;
            text-align: center;
            height: 44px;
            background-color: #CCFFFF;
        }

        .auto-style4 {
            width: 794px;
            margin-left: 25px;
        }

        #form1 {
            height: 620px;
            width: 848px;
            background-color: #B6F7F0;
            background-image: url('Images/LighBlue.jpg');
        }

        .newStyle9 {
            border: medium double #00FF00;
            background-image: url('Images/LighBlue.jpg');
        }

        .newStyle10 {
            background-image: url('Images/blue.jpg');
            border: medium inset #00FF00;
            height: 44px;
            width: 848px;
            text-align: center;
        }

        .auto-style5 {
            background-image: url('Images/blue.jpg');
            border: medium inset #00FF00;
            width: 830px;
            text-align: center;
        }

        .auto-style6 {
            width: 797px;
            height: 28px;
            margin-left: 21px;
        }
    </style>

</head>
<div class="newStyle10">
    <br />
    Welcome to Psychology 2010
</div>

<body>
    <form id="form1" runat="server" class="newStyle9">
        <div id="accordion">
            <h3 class="newStyle3">View and Update your Profile</h3>
            <div class="auto-style4">
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" DataSourceID="ObjectDataSource1" ShowHeaderWhenEmpty="True" CellPadding="4" ForeColor="#333333" GridLines="None" Width="338px">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="FindPersonById" TypeName="ServiceLayerPerson">
                    <SelectParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>
            <h3 class="auto-style5">Look up ClassList</h3>
            <div class="auto-style3">

                <asp:GridView ID="GridView2" runat="server" AllowSorting="True" CellPadding="4" DataSourceID="ClassList" ForeColor="#333333" GridLines="None" Width="345px">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ClassList" runat="server" SelectMethod="ReturnFullList" TypeName="ServiceLayerPerson"></asp:ObjectDataSource>

            </div>
            <h3 class="newStyle4">&nbsp;View Exam List</h3>
            <div class="auto-style6">
                <asp:GridView ID="GridView3" runat="server" CellPadding="4" DataSourceID="EventList" ForeColor="#333333" ShowHeaderWhenEmpty="True" GridLines="None" Width="343px">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:ObjectDataSource ID="EventList" runat="server" SelectMethod="ReturnFullList" TypeName="ServiceLayerEvent"></asp:ObjectDataSource>
            </div>
        </div>
    </form>
</body>
</html>
