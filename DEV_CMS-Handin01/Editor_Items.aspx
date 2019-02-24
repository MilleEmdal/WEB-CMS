<%@ Page Language="C#" AutoEventWireup="true" Code="Editor_Items.aspx.cs" Inherits="DEV_CMS_Handin01.Editor_Items" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Administration - Editor: Items</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Label ID="LabelHeading" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Administration"></asp:Label>
            <br />
            <asp:Label ID="LabelTitel" runat="server" Font-Italic="True" Font-Size="Large" Text="Editor page: Items"></asp:Label>
            <br />
            <br />
            <asp:Label ID="LabelSubheading1" runat="server" Font-Bold="True" Font-Size="Medium" Text="Edit or Delete a Item:"></asp:Label>
            <asp:GridView ID="GridViewItems" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ItemID" DataSourceID="SqlDataSource1" Width="600px">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="ItemID" HeaderText="ItemID" ReadOnly="True" SortExpression="ItemID" />
                    <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                    <asp:BoundField DataField="ItemName" HeaderText="ItemName" SortExpression="ItemName" />
                    <asp:BoundField DataField="img" HeaderText="img" SortExpression="img" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CMSConnectionString4 %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Item]">
            </asp:SqlDataSource>
            <br />
            <asp:Label ID="LabelSubheading2" runat="server" Font-Bold="True" Font-Size="Medium" Text="Create a new Item:"></asp:Label>
            <asp:DetailsView ID="DetailsViewItems" runat="server" AutoGenerateRows="False" DataKeyNames="ItemID" DataSourceID="SqlDataSource2" DefaultMode="Insert" EmptyDataText="No selection is made" Height="50px" OnItemInserted="DetailsViewItems_ItemInserted" Width="350px">
                <Fields>
                    <asp:BoundField DataField="ItemID" HeaderText="ItemID" ReadOnly="True" SortExpression="ItemID" />
                    <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                    <asp:BoundField DataField="ItemName" HeaderText="ItemName" SortExpression="ItemName" />
                    <asp:BoundField DataField="img" HeaderText="img" SortExpression="img" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CMSConnectionString5 %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Item]">
            </asp:SqlDataSource>
            <br />
            <asp:Label ID="LabelSubheading3" runat="server" Font-Bold="True" Font-Size="Medium" Text="Upload image to folder:"></asp:Label>
            <br />
            <asp:FileUpload ID="FileUploadImage" runat="server" />
            <br />
            <br />
            <asp:Button ID="ButtonImage" runat="server" OnClick="ButtonImage_Click" Text="Upload Image to folder" />
            <br />
&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Label ID="LabelMessages" runat="server" Font-Bold="True" Text="No messages"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="LabelSubheading7" runat="server" Text="Create, Update or Delete a Item, Joke or a Company:" Font-Bold="True" Font-Size="Medium"></asp:Label>
            <br />
            <br />
            <asp:Button ID="ButtonItems" runat="server" Font-Bold="True" Text="Items" PostBackUrl="~/Editor_Items.aspx" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonJokes" runat="server" Font-Bold="True" Text="Jokes" PostBackUrl="~/Editor_Jokes.aspx" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonCompanies" runat="server" Font-Bold="True" Text="Company" PostBackUrl="~/Editor_Company.aspx" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonContentSelection" runat="server" Font-Bold="True" PostBackUrl="~/Editor.aspx" Text="Selections" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonFrontend" runat="server" Font-Bold="True" ForeColor="#009933" PostBackUrl="~/Index.aspx" Text="View Frontend" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
