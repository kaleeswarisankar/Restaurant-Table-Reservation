<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserDeletion.aspx.cs" Inherits="RestaurantTableBookingApp.UserDeletion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="UserStyleSheet.css" rel="stylesheet" />

    <asp:Table runat="server" Height="310px" Width="615px" CssClass="table">

        <asp:TableRow>
            <asp:TableCell>
                <h1>
                    
                </h1>
                <asp:Label ID="lblHeading" runat="server" Text="TO DELETE A BOOKING TABLE" Font-Bold ="true" Font-Underline="true" ForeColor="Black" BackColor="SkyBlue" Font-Size="Medium"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblid" runat="server" Text="User Id" Font-Bold ="true"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtid" Font-Bold ="true" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Button ID="deletebtnid" CssClass="button" runat="server" Font-Bold ="true" Text="Delete" width="150px" BackColor="SkyBlue" ForeColor="SlateGray" OnClick="deletebtnid_Click" />
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblValidmsg" Font-Bold ="true" ForeColor="Black" width="150px" runat="server" CssClass="lblmsg"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>

        
    </asp:Table>
</asp:Content>
