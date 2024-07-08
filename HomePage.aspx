<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="RestaurantTableBookingApp.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Table runat="server" >
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblHeading" CssClass="h2" runat="server" Text="WELCOME TO OUR RESTAURANT" Font-Bold ="true" Font-Names="Times New Roman" Font-Underline="true" ForeColor="Black" BackColor="SlateGray" Font-Size="Large"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>

    <img src="img/Restaurant_table.jpg" />
</asp:Content>
