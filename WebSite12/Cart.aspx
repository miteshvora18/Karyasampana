<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <div style="text-align:center">
        <asp:Label ID="lblCart" runat="server" Font-Size="X-Large" ForeColor="#003300" 
            Text="Shopping Cart List"></asp:Label>
    </div>
    <br />
    <div style="text-align:center">
    
        <asp:Label ID="lblData" runat="server" Text=""></asp:Label>
    </div>
    <br />
    <div style="text-align:center">
        <asp:Button ID="btnPay" Width="60px" class="btn" runat="server" Text="Next" 
            onclick="btnPay_Click" />
        <asp:Button ID="btnCancel" Width="60px" class="btn" runat="server" Text="Cancel" 
            onclick="btnCancel_Click" />
    </div>
    <div>
    </div>
</div>
</asp:Content>

