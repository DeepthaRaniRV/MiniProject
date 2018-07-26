<%@ Page Title="" Language="C#" MasterPageFile="~/VisitorsInformation.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="ProjectMini.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <table class="auto-style5">
    <tr>
        <td class="auto-style6" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: x-large; color: #008080">Visitors In&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server"></asp:Label>
            &nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="161px"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search By ID" BackColor="#FFCC99" Font-Size="Large" Height="41px" Width="125px" />
&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Search By Name" BackColor="#FFCC99" Font-Size="Large" Height="40px" Width="149px" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="958px">
                
                <Columns><asp:TemplateField>
               <ItemTemplate>
                   <asp:Button ID="b1" runat="server" Text="Click to Sign out" OnClick="b1_Click1" />

               </ItemTemplate>
           </asp:TemplateField></Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
           
        </td>
    </tr>
</table>


</asp:Content>
