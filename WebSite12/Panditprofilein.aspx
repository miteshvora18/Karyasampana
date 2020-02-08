<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Panditprofilein.aspx.cs" Inherits="Panditprofilein" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 81%;
        }
        .style3
        {
            width: 37px;
            height: 210px;

        }
        .style4
        {
            width: 345px;
            height: 210px;
        }
        .style5
        {
            width: 345px;
        }
        </style>
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="frmpoojapkg" action="Pooja packagesin.aspx"></form>
      
    <table align="center" class="style1">
        <tr>
            <td class="style3" align="center">
            <h3 style="width: 163px">Asaram Bapu</h3>
                <asp:ImageButton ID="imgsatyanarayan" runat="server" ImageUrl="~/Images/pandit satyanarayan.jpg" 
                    Width="270px" Height="230px" onclick="imgsatyanarayan_Click" 
                    ToolTip="Click to view pandit detail" />
                    &nbsp;
                    <asp:Button ID="btnsatyanarayan" class="btn" runat="server" Text="Add To Cart" 
                    Width="128px" onclick="btnsatyanarayan_Click" />
                    
            </td>
            <td class="style4" align="center">
            <h3 style="width: 163px">Ravishri Maharaj</h3>
             <asp:ImageButton ID="Image1" runat="server" ImageUrl="~/Images/pandit%203.jpg" 
                    Width="270px" Height="230px" onclick="Image1_Click" ToolTip="Click to view pandit detail" />
                <%--<img src="Images/pandit%203.jpg" Width="270px" Height="230px"  />--%>
                &nbsp;
                     
                     <asp:Button ID="btnshanti" runat="server" class="btn" Text="Add To Cart" 
                    Width="128px" onclick="btnshanti_Click" />
                    
            </td>
        </tr>
        <tr>
            <td class="style3" align="center">
            <h3 style="width: 163px">Swami Ramdev</h3>
                <asp:ImageButton ID="imgnavgraha" runat="server" Height="230px" ToolTip="Click to view pandit detail" 
                    ImageUrl="~/Images/pandit navgraha.jpg" Width="270px" 
                    onclick="imgnavgraha_Click" />
                 &nbsp;
                    <asp:Button ID="btnnavgraha" runat="server" Text="Add To Cart" class="btn" 
                    Width="128px" onclick="btnnavgraha_Click" />      
   
            </td >
            <td class="style4" align="center">
            <h3 style="width: 163px">Nemi Suri Maharaj</h3>
                <asp:ImageButton ID="imgmarrage" runat="server" Height="230px" ToolTip="Click to view pandit detail"
                    ImageUrl="~/Images/pandit Marrage.jpg" Width="270px" 
                    onclick="imgmarrage_Click" />
                &nbsp;
                    <asp:Button ID="btnmarrage" runat="server" Text="Add To Cart" class="btn"
                    Width="128px" onclick="btnmarrage_Click" />
                    

            </td>
        </tr>
        <tr>
            <td class="style3" align="center">
            <h3 style="width: 163px">Namra Maharaj</h3>
                <asp:ImageButton ID="imggharpravesh" runat="server" ToolTip="Click to view pandit detail" 
                    ImageUrl="~/Images/pandit Ghar pravesh.jpg" Height="230px" Width="270px" 
                    onclick="imggharpravesh_Click" />
                &nbsp;
                    <asp:Button ID="btngharparvesh" runat="server" Text="Add To Cart" class="btn"
                    Width="128px" onclick="btngharparvesh_Click" />
            </td>
            <td class="style5" align="center">
                <h3 style="width: 163px">Aditya Maharaj</h3>
                <asp:ImageButton ID="imgfastival" runat="server" 
                    ImageUrl="~/Images/pandit fest.jpg" ToolTip="Click to view pandit detail" 
                    Width="270px" Height="230px" onclick="imgfastival_Click" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnfastival" runat="server" Text="Add To Cart" class="btn"
                    Width="128px" onclick="btnfastival_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

