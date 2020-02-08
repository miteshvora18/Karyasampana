<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Pooja packagesin.aspx.cs" Inherits="Pooja_packagesin" Title="Untitled Page" %>

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


<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <form id="frmpoojapkg" action="Pooja packagesin.aspx"></form>
      
    <table align="center" class="style1">
        <tr>
            <td class="style3" align="center">
            <h3 style="width: 163px">Satyanarayan Pooja</h3>
                <asp:Image ID="imgsatyanarayan" runat="server" ImageUrl="~/Images/satyanarayan.jpg" 
                    Width="270px" Height="230px" />
                    &nbsp;
                    <asp:Button ID="btnsatyanarayan" runat="server" class="btn" Text="Add To Cart" 
                    Width="128px" onclick="btnsatyanarayan_Click" />
                    
            </td>
            <td class="style4" align="center">
             <h3 style="width: 163px">Shanti Havan</h3>
                <asp:Image ID="imgshanti" runat="server" ImageUrl="~/Images/Shanti havan.jpg" />
                &nbsp;
                     <asp:Button ID="btnshanti" runat="server" Text="Add To Cart" class="btn" 
                    Width="128px" onclick="btnshanti_Click" />
                    
            </td>
        </tr>
        <tr>
            <td class="style3" align="center">
            <h3 style="width: 163px">Navgraha Shanti</h3>
                <asp:Image ID="imgnavgraha" runat="server" Height="182px" 
                    ImageUrl="~/Images/Navgraha shanti.jpg" />
                 &nbsp;
                    <asp:Button ID="btnnavgraha" runat="server" Text="Add To Cart" class="btn"
                    Width="128px" onclick="btnnavgraha_Click" />      
   
            </td >
            <td class="style4" align="center">
            <h3 style="width: 163px">Marriage Ceremony</h3>
                <asp:Image ID="imgmarrage" runat="server" Height="182px"
                    ImageUrl="~/Images/Marrage ceremony.jpg" />
                &nbsp;
                    <asp:Button ID="btnmarrage" runat="server" Text="Add To Cart" class="btn"
                    Width="128px" onclick="btnmarrage_Click" />
                    

            </td>
        </tr>
        <tr>
            <td class="style3" align="center">
            <h3 style="width: 163px">Graha Pravesh</h3>
                <asp:Image ID="imggharpravesh" runat="server" ImageUrl="~/Images/Ghar pravesh.jpg" />
                &nbsp;
                    <asp:Button ID="btngharparvesh" runat="server" Text="Add To Cart" class="btn"
                    Width="128px" onclick="btngharparvesh_Click" />
            </td>
            <td class="style5">
                <h3 style="width: 163px">Festival Pooja</h3>
                <asp:Image ID="imgfastival" runat="server" ImageUrl="~/Images/Fastival havan.jpg" 
                    Width="260px" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnfastival" runat="server" Text="Add To Cart" class="btn"
                    Width="128px" onclick="btnfastival_Click" />
            </td>
        </tr>
    </table>
      
</asp:Content>



