<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    <div>
        <asp:Label ID="lblAdmin" runat="server" Text="Welcome to Admin Page"></asp:Label>
        <div style="float:right">
            <asp:HyperLink ID="hlkLogout" NavigateUrl="Login.aspx?type=logout" runat="server">Logout</asp:HyperLink></div>
    </div>
    <br />
    <div>
        <asp:Label ID="lblHeader" runat="server" Text="List of people that have purchased Packages.."></asp:Label>
    </div>
    <div>
        
        <asp:GridView ID="gvPaymentDirectory" runat="server" BorderColor="#003300" 
            BorderStyle="Solid" BorderWidth="5px" CellSpacing="10" ForeColor="#003300" 
            Width="100%">
            <HeaderStyle ForeColor="Maroon" />
            <AlternatingRowStyle ForeColor="#000066" />
        </asp:GridView>
        
    </div>
</div>
</asp:Content>

