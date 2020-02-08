<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="foodpackagein.aspx.cs" Inherits="foodpackagein" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 267px;
            height: 307px;
        }
        .style2
        {
            width: 294px;
            height: 307px;
        }
        .style3
        {
            width: 343px;
            height: 307px;
        }
        #tblfoodpkgin
        {
            width: 594px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="frmfoodpkgin" action="foodpackagein.aspx">

<div>
<h3>Food Package Scheme</h3>
    <div style="text-align:center">
        <asp:Label ID="lblPeople" runat="server" Text="Select no. of people"></asp:Label>
        <asp:DropDownList ID="ddlPeople" runat="server">
        </asp:DropDownList>
    </div>
<table id="tblfoodpkgin" runat="server" border="1">
<tr>
<td class="style2">
<center><h3>Package 1</h3></center>
&nbsp;
<asp:Label ID="lbldescription" runat="server" Text="Description"></asp:Label>
<ol title="Menu"> 
<li>Dal and rice</li>
<li>Chapati</li>
<li>3 Types of Bhagi</li>
<li>2 sweet</li>
</ol>
<asp:Label ID="lblrate" runat="server" Text="Rate:-"></asp:Label>
<asp:Label ID="lblcost" runat="server" Text="Rs.300"></asp:Label>
    &nbsp;
    <br />
                                        <center>
                                            <br />
    <br />
    <asp:Button ID="btnaddtocart" class="btn" runat="server" Text="Add To Cart" onclick="btnaddtocart_Click" /></center>
</td>

<td class="style3">
<center><h3>Package 2</h3></center>
&nbsp;
<asp:Label ID="lbldescription1" runat="server" Text="Description"></asp:Label>
<ol title="Menu"> 
<li>Dal and rice</li>
<li>Chapati</li>
<li>2 Types of Bhagi</li>
<li>1 sweet</li>
</ol>
<asp:Label ID="lblrate1" runat="server" Text="Rate:-"></asp:Label>
<asp:Label ID="lblcost1" runat="server" Text="Rs.250"></asp:Label>
    &nbsp;
                                        <br />
    <br />
                                        <center>
    <br />
    <asp:Button ID="Button1" runat="server" class="btn" Text="Add To Cart" onclick="Button1_Click" /></center>
</td>

<td class="style1">
<center><h3>&nbsp;&nbsp;Package 3</h3>
    </center>
&nbsp;
<asp:Label ID="lbldescription2" runat="server" Text="Description"></asp:Label>
<ol title="Menu"> 
<li>Dal and rice</li>
<li>Chapati</li>
<li>1 Type of Bhagi</li>
<li>1 Sweet</li>
</ol>
&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label ID="lblrate2" runat="server" Text="Rate:-"></asp:Label>
<asp:Label ID="lblcost2" runat="server" Text="Rs.150"></asp:Label>
    &nbsp;
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;<center>
    <asp:Button ID="Button2" runat="server" class="btn" Text="Add To Cart" 
            onclick="Button2_Click" /></center>
</td>
</tr>
<tr>
<td class="style2">
<center><h3>Package 4</h3></center>
&nbsp;
<asp:Label ID="Label1" runat="server" Text="Description"></asp:Label>
<ol title="Menu"> 
<li>Dal and rice</li>
<li>Chapati</li>
<li>1 Type of Bhagi</li>
</ol>
    <br />
                                        <br />
<asp:Label ID="lblrate3" runat="server" Text="Rate:-"></asp:Label>
<asp:Label ID="lblcost3" runat="server" Text="Rs.125"></asp:Label>
    &nbsp;
    <br />
                                        <br />
                                        <br />
                                        <center>
    <asp:Button ID="btnaddtocart3" class="btn" runat="server" Text="Add To Cart" onclick="btnaddtocart3_Click" /></center>
</td>

<td class="style3">
<center><h3>Package 5</center>
&nbsp;
<asp:Label ID="lbldescription5" runat="server" Text="Description"></asp:Label>
<ol title="Menu">
<li>Chapati</li>
<li>2 Types of Bhagi</li>
<li>1 sweet</li>
</ol>
    <br />
    <br />
<asp:Label ID="lblrate4" runat="server" Text="Rate:-"></asp:Label>
<asp:Label ID="lblcost4" runat="server" Text="Rs.110"></asp:Label>
    &nbsp;
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
<center>
    <asp:Button ID="btnaddtocart4" runat="server" class="btn" Text="Add To Cart" 
        onclick="btnaddtocart4_Click" /></center>
</td>

<td class="style1">
<center><h3>&nbsp;&nbsp;Package 6</h3>
    </center>
&nbsp;
<asp:Label ID="lbldescription6" runat="server" Text="Description"></asp:Label>
<ol title="Menu"> 
<li>Chapati</li>
<li>1 Type of Bhagi</li>
<li>Prasad</li>
</ol>
    <br />
    <br />
<asp:Label ID="lblrate5" runat="server" Text="Rate:-"></asp:Label>
<asp:Label ID="lblrate6" runat="server" Text="Rs.90"></asp:Label>
    &nbsp;<br />
&nbsp;&nbsp;<center>
        <br />
    <asp:Button ID="btnaddtocart5" runat="server" class="btn" Text="Add To Cart" 
        onclick="btnaddtocart5_Click" /></center>
</td>
</tr>
</table>
</div>
</form>
</asp:Content>

