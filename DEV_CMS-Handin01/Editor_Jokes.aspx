<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Editor_Jokes.aspx.cs" Inherits="DEV_CMS_Handin01.Editor_Jokes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Administration - Editor: Jokes</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Label ID="LabelHeading" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Administration"></asp:Label>
            <br />
            <asp:Label ID="LabelTitel" runat="server" Font-Italic="True" Font-Size="Large" Text="Editor page: Jokes"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="LabelSubheading1" runat="server" Font-Bold="True" Font-Size="Medium" Text="Edit or Delete a Joke:"></asp:Label>
            <asp:GridView ID="GridViewJokes" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="JokeID" DataSourceID="SqlDataSource1" Width="600px">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="JokeID" HeaderText="JokeID" ReadOnly="True" SortExpression="JokeID" />
                    <asp:BoundField DataField="Joke" HeaderText="Joke" SortExpression="Joke" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CMSConnectionString6 %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Joke]">
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="LabelSubheading2" runat="server" Font-Bold="True" Font-Size="Medium" Text="Create a new Joke:"></asp:Label>
            <asp:DetailsView ID="DetailsViewJokes" runat="server" AutoGenerateRows="False" DataKeyNames="JokeID" DataSourceID="SqlDataSource2" DefaultMode="Insert" EmptyDataText="No selection is made" Height="50px" OnItemInserted="DetailsViewJokes_ItemInserted" Width="350px">
                <Fields>
                    <asp:BoundField DataField="JokeID" HeaderText="JokeID" ReadOnly="True" SortExpression="JokeID" />
                    <asp:BoundField DataField="Joke" HeaderText="Joke" SortExpression="Joke" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CMSConnectionString7 %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Joke]">
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="LabelSubheading3" runat="server" Font-Bold="True" Font-Size="Medium" Text="Upload image to folder:"></asp:Label>
            <br />
            <asp:FileUpload ID="FileUploadImage" runat="server" />
            <br />
            <br />
            <asp:Button ID="ButtonImage" runat="server" OnClick="ButtonImage_Click" Text="Upload Image to folder" />
            <br />
            <br />
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
