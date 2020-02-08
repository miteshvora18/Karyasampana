<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="RegistrationForm.aspx.cs" Inherits="Registration_Form" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<form id="frmregister" action="RegistrationForm.aspx">
<div>
<h3>Registration Form: -</h3>
<table id="tblreg" border="1" runat="server">
<tr>
    <td class="row">
        <asp:Label ID="lblname" runat="server" Text="Name:"></asp:Label>
    </td>
    <td>
    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="*"></asp:Label>
    <asp:RequiredFieldValidator ID="rfvname" runat="server" 
        ErrorMessage="Name is required" ControlToValidate="txtname">&nbsp;</asp:RequiredFieldValidator>
    </td>
</tr>

<tr>
    <td>
            <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
            :</td>
<td>
        <asp:TextBox ID="txtUsername" CssClass="username" onblur="getusername();" runat="server"></asp:TextBox>
        <asp:Label ID="Label9" runat="server" ForeColor="Red" Text="*"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtUsername" ErrorMessage="Username is required">&nbsp;</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td>
        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
        :</td>
<td>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:Label ID="Label8" runat="server" ForeColor="Red" Text="*"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtPassword" ErrorMessage="Password is required">&nbsp;</asp:RequiredFieldValidator>
</td>
</tr>

<tr>
<td>
        Confirm Password</td>
<td>
        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:Label ID="Label10" runat="server" ForeColor="Red" Text="*"></asp:Label>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" 
            ErrorMessage="Passwords do not match">Passwords do not match</asp:CompareValidator>
</td>
</tr>

<tr>
<td class="style3">
    <asp:Label ID="lbladdress" runat="server" Text="Address:"></asp:Label>
</td>
<td> 
<asp:TextBox ID="txtaddress" runat="server" 
       TextMode="MultiLine"></asp:TextBox> 
        <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"></asp:Label>
    &nbsp; 
        <asp:RequiredFieldValidator ID="rfvaddress" runat="server" 
        ErrorMessage="Address is required" ControlToValidate="txtaddress" >&nbsp;</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="lblcountry" runat="server" Text="Country:"></asp:Label>
</td>
<td>
<asp:TextBox ID="txtcountry" runat="server"></asp:TextBox> 
    <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
<asp:RequiredFieldValidator ID="rfvcountry" runat="server" 
        ErrorMessage="Country is required" ControlToValidate="txtcountry">&nbsp;</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lblstate" runat="server" Text="State:"></asp:Label>
</td>
 <td>
  <asp:TextBox ID="txtstate" runat="server"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="*"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:RequiredFieldValidator ID="rfvstate" runat="server" 
        ErrorMessage="State is required" ControlToValidate="txtstate">&nbsp;</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td>
  <asp:Label ID="lblcity" runat="server" Text="City:"></asp:Label>
</td>
<td>
<asp:TextBox ID="txtcity" runat="server"></asp:TextBox> 
    <asp:Label ID="Label6" runat="server" ForeColor="Red" Text="*"></asp:Label>
     
<asp:RequiredFieldValidator ID="rfvcity" runat="server" 
        ErrorMessage="City is required" ControlToValidate="txtcity">&nbsp;</asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td class="style1">
    <asp:Label ID="lblcontact" runat="server" Text="Contact:"></asp:Label>
 </td>
 <td>
<asp:TextBox ID="txtcontact" runat="server"></asp:TextBox> 
        <asp:Label ID="Label7" runat="server" ForeColor="Red" 
        Text="*"></asp:Label>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="Contact is required" ControlToValidate="txtcontact">&nbsp;</asp:RequiredFieldValidator>
<asp:RegularExpressionValidator 
        ID="revcontact" runat="server" ControlToValidate="txtcontact" 
        ValidationExpression="^[0-9-+ ]+$" ErrorMessage="Only numbers are valid"></asp:RegularExpressionValidator>
</td>
</tr>
<tr>
<td>
</td>
<td>
<asp:Button ID="btnSave" runat="server" class="btn" Text="Save" onclick="btnSave_Click"/>
&nbsp;&nbsp;&nbsp;
<asp:Button ID="btnLogin" runat="server" Text="Login" class="btn" 
         CausesValidation="False" onclick="btnLogin_Click" />
&nbsp;&nbsp;&nbsp;
<asp:Button ID="btnCancel" runat="server" Text="Cancel"  class="btn"
        CausesValidation="False" onclick="btnCancel_Click" />
    &nbsp;</td>
</tr>
<tr>
<td>
</td>
<td>
    <asp:Label ID="lblMsg" runat="server"></asp:Label>
    &nbsp;
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
</td>
</tr>
</table>
</div>
</form>
</asp:Content>


