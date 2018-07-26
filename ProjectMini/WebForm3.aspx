<%@ Page Title="" Language="C#" MasterPageFile="~/VisitorsInformation.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="ProjectMini.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        width: 100%;
    }
    .auto-style6 {
        text-align: center;
        height: 102px;
    }
    .auto-style7 {
        height: 214px;
    }
    .auto-style8 {
        height: 208px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style5">
    <tr>
        <td class="auto-style6">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" Font-Underline="False" Text="Welcome to Shailendra TechPark...!!! "></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Font-Size="X-Small" ForeColor="Red" Text="Note : Please Check-in before getting inside and Check-out while leaving."></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style8" style="font-size: xx-large; font-weight: bold; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; color: #0000FF">CLICK HERE TO CHECK IN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Check IN" BackColor="#CCFF99" Font-Bold="True" Font-Names="Perpetua Titling MT" Font-Size="Large" Height="48px" Width="147px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style7" style="font-size: xx-large; font-weight: bold; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; color: #0000FF">CLICK HERE TO CHECK OUT&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Check OUT" BackColor="#CCFF99" Font-Bold="True" Font-Names="Perpetua Titling MT" Font-Size="Large" Height="48px" Width="131px" />
        </td>
    </tr>
</table>

</asp:Content>
