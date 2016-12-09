<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Copy of m_patient_registration.aspx.cs" Inherits="patient" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="lbl_msg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Name</td>
            <td class="style3">
                <asp:TextBox ID="txt_patient" runat="server" CssClass="txtbox" 
                    ontextchanged="txt_patient_TextChanged" ValidationGroup="a"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txt_patient" ErrorMessage="Require" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Address</td>
            <td class="style3">
                <asp:TextBox ID="Txt_address" runat="server" CssClass="txtbox" 
                    ValidationGroup="a"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="Txt_address" ErrorMessage="Require" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Mobile
            </td>
            <td class="style3">
                <asp:TextBox ID="txt_mobile" runat="server" CssClass="txtbox" 
                    ontextchanged="txt_mobile_TextChanged" ValidationGroup="a"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txt_mobile" ErrorMessage="Require" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Email</td>
            <td class="style9">
                <asp:TextBox ID="txt_email" runat="server" CssClass="txtbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txt_email" ErrorMessage="Require" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Date of Birth</td>
            <td class="style3">
                <asp:TextBox ID="txt_dob" runat="server" CssClass="txtbox" ValidationGroup="a"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txt_dob" ErrorMessage="Require" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Gender</td>
            <td class="style3">
                <asp:RadioButtonList ID="rbtn_gender" runat="server">
                    <asp:ListItem Selected="True">Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Transgender</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Password</td>
            <td class="style6">
                <asp:TextBox ID="txt_password" runat="server" TextMode="Password" 
                    CssClass="txtbox" ValidationGroup="a"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txt_password" ErrorMessage="Require" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Image ID="img_photo" runat="server" Height="101px" Width="78px" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                Photo</td>
            <td class="style3">
                <asp:FileUpload ID="file_upload" runat="server" CssClass="txtbox" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="btl_submit" runat="server" Text="Submit" 
                    onclick="btl_submit_Click" ValidationGroup="a" />
                <asp:Button ID="btl_reset" runat="server" Text="Reset" 
                    onclick="btl_reset_Click1" />
            </td>
        </tr>
    </table>

      <table class="style1">
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                <asp:GridView ID="grd_patient" runat="server" AutoGenerateColumns="False" 
                    onrowdeleting="grd_patient_RowDeleting" DataKeyNames="patient_id" 
                    onselectedindexchanged="grd_patient_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="patient_name" HeaderText="Name" />
                        <asp:BoundField DataField="patient_add" HeaderText="Address" />
                        <asp:BoundField DataField="patient_mobile" HeaderText="Mobile " />
                        <asp:BoundField DataField="patient_email" HeaderText="email" />
                        <asp:BoundField DataField="patient_dob" 
                            HeaderText="DOB" />
                        <asp:BoundField DataField="patient_photo" HeaderText="Photo" />
                        <asp:BoundField DataField="patient_gender" HeaderText="Gender" />
                        <asp:BoundField DataField="patient_password" HeaderText="Password" />
                        <asp:TemplateField HeaderText="Edit" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                    CommandName="Select" Text="Edit"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                    CommandName="Delete" Text="Delete" onclientclick="return ConfirmDelete();"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>















 