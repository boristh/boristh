
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="m_patient_View_login.aspx.cs" Inherits="user" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style=" background-color:black ;">
    <a href="m_list.aspx">    <img src="images/index.png" style="height: 33px; border-style:none" /> </a>
    </div>
    <div>
        <table class="style1">
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                <asp:Label ID="lbl_msg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Name</td>
            <td class="style5">
                <asp:TextBox ID="txt_name" runat="server" CssClass="txtbox"  ></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txt_name" ErrorMessage="Require" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Password</td>
            <td class="style5">
                <asp:TextBox ID="txt_password" runat="server" style="margin-bottom: 0px" 
                    TextMode="Password" CssClass="txtbox"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txt_password" ErrorMessage="Require" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                <asp:Button ID="btn_submit" runat="server" Text="Submit" 
                    onclick="btn_submit_Click" Height="21px" ValidationGroup="a" 
                    Width="59px" />
                <asp:Button ID="btn_reset" runat="server" Text="Reset" 
                    onclick="btn_reset_Click" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>





















 