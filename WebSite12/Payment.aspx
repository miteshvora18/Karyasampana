<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="CSS/StyleSheet.css" runat="server" type="text/css" rel="Stylesheet" />
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <div>
        Payment Module..
    </div>
    <div>
        
        <table class="style1">
            <tr>
                <td class="lbl">
                    <asp:Label ID="lblCreditCard" runat="server" Text="Enter Credit Card Number"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCreditCard" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtCreditCard" ErrorMessage="Credit card number is required">&nbsp;</asp:RequiredFieldValidator>
<asp:RegularExpressionValidator 
        ID="revcontact" runat="server" ControlToValidate="txtCreditCard" 
        ValidationExpression="^[0-9-+ ]+$" ErrorMessage="Only numbers are valid"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblCvv" runat="server" Text="Enter CVV Code"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCvv" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtCvv" ErrorMessage="CVV Code is required">&nbsp;</asp:RequiredFieldValidator>
<asp:RegularExpressionValidator 
        ID="revcontact0" runat="server" ControlToValidate="txtCvv" 
        ValidationExpression="^[0-9-+ ]+$" ErrorMessage="Only numbers are valid"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblAmount" runat="server" Text="Amount"></asp:Label>
                    (in Rs.)</td>
                <td>
                    <asp:TextBox ID="txtAmount" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Make Payment" class="btn" 
                        onclick="btnSubmit_Click" />
                &nbsp;
                    <asp:Button ID="btnBack" runat="server" CausesValidation="False" 
                        onclick="btnBack_Click" Text="Back to Cart" class="btn" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    <br />
                </td>
            </tr>
        </table>
        
    </div>
</div>
</asp:Content>

