<%@ Page Title="" Language="C#" MasterPageFile="~/VisitorsInformation.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ProjectMini.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        width: 110px;
    }
    .auto-style6 {
        width: 196px;
    }
    .auto-style7 {
        text-align: left;
    }
    .auto-style8 {
        text-align: center;
        height: 70px;
    }
        .auto-style10 {
            width: 110px;
            height: 27px;
        }
        .auto-style11 {
            width: 196px;
            height: 27px;
        }
        .auto-style12 {
            width: 196px;
            height: 58px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table cellpadding="3" cellspacing="3" class="auto-style1">
            <tr>
                <td class="auto-style8" colspan="2" style="background-color: #663300; font-family: 'Arial Rounded MT Bold'; font-size: x-large; color: #FFFFFF; font-style: normal; font-weight: bolder; text-transform: uppercase; text-decoration: underline" title="VISITOR INFORMATION">VISITORS&nbsp; iNFORMATION</td>
            </tr>
            <tr>
                <td class="auto-style6" style="font-family: Georgia, 'Times New Roman', Times, serif; font-size: large; font-weight: bold">First Name : </td>
                <td>
                    <asp:TextBox ID="txtfname" runat="server" Font-Size="Large"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name should not be blank" ControlToValidate="txtfname"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="font-family: Georgia, 'Times New Roman', Times, serif; font-size: large; font-weight: bold">Last Name :</td>
                <td>
                    <asp:TextBox ID="txtlname" runat="server" Font-Size="Large"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name should not be blank" ControlToValidate="txtlname"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="font-family: Georgia, 'Times New Roman', Times, serif; font-size: large; font-weight: bold">Company :</td>
                <td>
                    <asp:TextBox ID="txtcmpy" runat="server" Font-Size="Large"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Company name should not be blank" ControlToValidate="txtcmpy"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="font-family: Georgia, 'Times New Roman', Times, serif; font-size: large; font-weight: bold">Visiting :</td>
                <td>
                    <asp:TextBox ID="txtvisiting" runat="server" Font-Size="Large"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Visiting place should not be blank" ControlToValidate="txtvisiting"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="font-family: Georgia, 'Times New Roman', Times, serif; font-size: large; font-weight: bold">ID Type :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td style="font-family: Georgia, 'Times New Roman', Times, serif; font-size: small; font-weight: normal">
                    <asp:TextBox ID="txtidtype" runat="server" Font-Size="Large"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="ID Type should not be blank" ControlToValidate="txtidtype"></asp:RequiredFieldValidator>
                    &nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="font-family: Georgia, 'Times New Roman', Times, serif; font-size: large; font-weight: bold">Vehicle Number:</td>
                <td>
                    <asp:TextBox ID="txtvehicle" runat="server" Font-Size="Large"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtvehicle" ErrorMessage="It Should be alphanumeric" ValidationExpression="^[A-Z]{2}[0-9]{2}[-][A-Z]{2}[0-9]{4}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="font-family: Georgia, 'Times New Roman', Times, serif; font-size: large; font-weight: bold">Contact Number :</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtcontact" runat="server" Font-Size="Large"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Contact number should not be blank" ControlToValidate="txtcontact"></asp:RequiredFieldValidator>
                    .&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcontact" ErrorMessage="Only 10 digits" ValidationExpression="^([6-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="font-family: Georgia, 'Times New Roman', Times, serif; font-size: large; font-weight: bold">Purpose of Visit :</td>
                <td>
                    <asp:TextBox ID="txtpurpose" runat="server" Font-Size="Large"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Purpose of Visit should be mentioned" ControlToValidate="txtpurpose"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style10"><asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Button ID="Button1" runat="server" BackColor="#FFCCFF" Font-Bold="True" Font-Names="Microsoft New Tai Lue" Font-Size="Large" ForeColor="Black" Text="Cancel " CausesValidation="False" OnClick="Button1_Click" />
                </td>
                <td class="auto-style12">
                    <asp:Button ID="Button2" runat="server" BackColor="#FFCCFF" Font-Bold="True" Font-Names="Microsoft New Tai Lue" Font-Size="Large" ForeColor="Black" Text="Save" OnClick="Button2_Click1" />
                &nbsp;</td>
            </tr>
        </table>
</asp:Content>
