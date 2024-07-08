<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Codebehind="DatewiseRetrieval.aspx.cs" Inherits="RestaurantTableBookingApp.DatewiseRetrieval" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="UserStyleSheet.css" rel="stylesheet" />

    <asp:GridView ID="GridView1" runat="server"></asp:GridView>

    <asp:Table runat="server"  CssClass="table">
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblHeading" Font-Size="Medium" runat="server" Text="TO RETRIEVE A TABLEWISE RECORDS" Font-Bold ="true" Font-Underline="true" ForeColor="Black"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lbldate" runat="server" Text="Date" Font-Size="Medium" Font-Bold ="true"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtdate" runat="server" Font-Size="Medium" Font-Bold ="true"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell>
                <asp:Button ID="BtnSearch" CssClass="button" Font-Size="Medium" runat="server" Text="Search" width="150px" BackColor="LightSlateGray" Font-Bold ="true" ForeColor="Black" OnClick="BtnSearch_Click" />
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblValidmsg" Font-Bold ="true" ForeColor="Black" width="150px" runat="server" CssClass="lblmsg"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</asp:Content>