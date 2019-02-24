<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="DEV_CMS_Handin01.Index" Theme="ThemeCMS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="section">
        <div class="card-item double-row">
            <asp:Repeater ID="RepeaterMainItem" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <figure class="card">
                        <img src="~/Pictures/<%# Eval("img") %>" alt="Item">
                        <figcaption class="caption">
                            <h1 class="caption-title"><%# Eval("ItemName") %></h1>
                            <p class="p-small">Category: <%# Eval("Category") %></p>
				            <p class="p-main"><%# Eval("Description") %></p>
                        </figcaption>
                    </figure> 
                </ItemTemplate>
            </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CMSConnectionString11 %>" SelectCommand="SELECT * FROM Item; SELECT * FROM Company; SELECT * FROM Joke; SELECT * FROM Selections;"></asp:SqlDataSource>
        </div>

        <div class="card-item">
            <asp:Repeater ID="RepeaterSecondItem" runat="server">
                <ItemTemplate>
                    <figure class="card">
                        <img src="Pictures/<%# Eval("Picture") %>" alt="Item">
                        <figcaption class="caption">
                            <h2 class="caption-title"><%# Eval("Headline") %></h2>
                            <p class="p-small">Category: <%# Eval("Category") %></p>
				            <p><%# Eval("Description") %></p>
                        </figcaption>
                    </figure> 
                </ItemTemplate>
            </asp:Repeater>
        </div> 

        <div class="card-item">
            <asp:Repeater ID="RepeaterThirdItem" runat="server">
                    <ItemTemplate>
                        <figure class="card">
                            <img src="Pictures/<%# Eval("Picture") %>" alt="Item">
                            <figcaption class="caption">
                                <h2 class="caption-title"><%# Eval("Headline") %></h2>
                                <p class="p-small">Category: <%# Eval("Category") %></p>
				                <p><%# Eval("Description") %></p>
                            </figcaption>
                        </figure> 
                    </ItemTemplate>
            </asp:Repeater>
        </div>

        <div class="card-item double-column">
            <asp:Repeater ID="RepeaterJokeItem" runat="server">
                <ItemTemplate>
                    <figure class="card">
                        <img class="image" src="Pictures/<%# Eval("Picture") %>" alt="item" />
                        <figcaption class="caption">
                            <h3 class="caption-title"><%# Eval("Headline") %></h3>
				            <p><%# Eval("Description") %></p>
                        </figcaption>
                    </figure>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
