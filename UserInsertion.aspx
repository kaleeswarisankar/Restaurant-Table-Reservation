<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserInsertion.aspx.cs" Inherits="RestaurantTableBookingApp.UserInsertion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="UserStyleSheet.css" rel="stylesheet" />

    <asp:Table runat="server" Height="310px" Width="615px" CssClass="table">
        <asp:TableRow>
            <asp:TableCell>
                <h1>

                </h1>
                <asp:Label ID="lblHeading" runat="server" Text="TO BOOK A TABLE" Font-Bold ="true" Font-Underline="true" ForeColor="Black" BackColor="SkyBlue" Font-Size="Medium"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblname" runat="server" Text="User Name" Font-Bold ="true" ></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtname" runat="server" Font-Bold ="true"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblphone"  runat="server" Text="Phone Number" Font-Bold ="true"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox  ID="txtphone" runat="server" Font-Bold ="true"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblEmail" runat="server" Text="Email-ID" Font-Bold ="true"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtemail" runat="server" Font-Bold ="true"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lbltable" runat="server" Text="Table" Font-Bold ="true"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold ="true">
                    <asp:ListItem Value="5"></asp:ListItem>
                    <asp:ListItem Value="10"></asp:ListItem>
                </asp:DropDownList> 
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lbldate" runat="server" Text="Date" Font-Bold ="true"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtdate" runat="server" Font-Bold ="true"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell>
                <asp:Button ID="BtnSubmituser" CssClass="button" runat="server" Text="Submit" width="150px" BackColor="SlateGray" Font-Bold ="true" ForeColor="Black" OnClick="BtnSubmituser_Click"  />
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblValidmsg" Font-Bold ="true" ForeColor="Black" width="150px" runat="server" CssClass="lblmsg"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</asp:Content>

