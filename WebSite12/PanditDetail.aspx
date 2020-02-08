<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="PanditDetail.aspx.cs" Inherits="PanditDetail" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="height:600px">
    <asp:Label ID="lblPanditHeader" runat="server" CssClass="panditDetailHeader" Text=""></asp:Label>
    <br />
    <asp:Image ID="imgPandit" CssClass="imgPanditDetail" runat="server" />
    <asp:Label ID="lblPanditDetail" runat="server" CssClass="panditDetailContent" Text=""></asp:Label>
</div>
<div style="text-align:center">
    <asp:Button ID="btnBack" class="btn" runat="server" Text="Back" 
        onclick="btnBack_Click" />
</div>    
</asp:Content>
