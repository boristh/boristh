<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="doctor.aspx.cs" Inherits="doctor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">

    <script type= "text/javascript">
        function ConfirmDelete() {
            return confirm("Are you sure you want to delete?");
        }
        </script>

    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 195px;
            text-align: right;
        }
        .style3
        {
            width: 195px;
            height: 21px;
            text-align: right;
        }
        .style4
        {
            height: 21px;
            text-align: left;
        }
        .style5
        {
            width: 195px;
            height: 26px;
            text-align: right;
        }
        .style6
        {
            height: 26px;
            text-align: left;
        }
        .style7
        {
            width: 195px;
            height: 28px;
            text-align: right;
        }
        .style8
        {
            height: 28px;
            text-align: left;
        }
        .style9
        {
            text-align: left;
        }
        .style10
        {
            text-align: left;
            }
        .style11
        {
            height: 21px;
            text-align: left;
            width: 128px;
        }
        .style12
        {
            height: 28px;
            text-align: left;
            width: 128px;
        }
        .style13
        {
            height: 26px;
            text-align: left;
            width: 128px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    &nbsp;
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style10">
                <asp:Label ID="lbl_msg" runat="server"></asp:Label>
            </td>
            <td class="style9" rowspan="6">
                <asp:Image ID="img_photo" runat="server" Height="86px" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Name</td>
            <td class="style10">
                <asp:TextBox ID="txt_name" runat="server" CssClass="txtbox" ValidationGroup="a"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txt_name" ErrorMessage="Require" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Address</td>
            <td class="style10">
                <asp:TextBox ID="txt_address" runat="server" CssClass="txtbox" 
                    ValidationGroup="a"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txt_address" ErrorMessage="Require" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Designation</td>
            <td class="style11">
                <asp:DropDownList ID="ddl_desigID" runat="server" CssClass="txtbox" 
                    ValidationGroup="a">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="ddl_desigID" ErrorMessage="Require" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Mobile</td>
            <td class="style11">
                <asp:TextBox ID="txt_mobile" runat="server" CssClass="txtbox" 
                    ValidationGroup="a" Width="201px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txt_mobile" ErrorMessage="Require" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
                Email</td>
            <td class="style12">
                <asp:TextBox ID="txt_email" runat="server" CssClass="txtbox" 
                    ValidationGroup="a"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txt_email" ErrorMessage="Require" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
            <td class="style8">
                Photo<asp:FileUpload ID="file_upload" runat="server" CssClass="txtbox" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="file_upload" ErrorMessage="Require" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Department</td>
            <td class="style13">
                <asp:DropDownList ID="ddl_dept_id" runat="server" CssClass="txtbox" 
                    ValidationGroup="a">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="ddl_dept_id" ErrorMessage="Require" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Gender</td>
            <td class="style10">
                <asp:RadioButtonList ID="rbtn_gender" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Trangender</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Password</td>
            <td class="style4">
                <asp:TextBox ID="txt_pwd" runat="server" CssClass="txtbox" 
                    ValidationGroup="a" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txt_pwd" ErrorMessage="Require"></asp:RequiredFieldValidator>
                </td>
            <td class="style4">
                </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style10">
                <asp:Button ID="btn_Submit" runat="server" Text="Submit" 
                    onclick="btn_Submit_Click" ValidationGroup="a" />
                <asp:Button ID="btn_reset" runat="server" Text="Reset" 
                    onclick="btn_reset_Click" />
            </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
            </td>
            <td class="style11">
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style10" colspan="2">
                <asp:GridView ID="grd_doctor" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" 
                    onrowdeleting="grd_doctor_RowDeleting" DataKeyNames="doc_id,doc_photo" 
                    onselectedindexchanged="grd_doctor_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Photo">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="79px" 
                                    ImageUrl='<%# Bind("doc_photo","upload/{0}") %>' />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="doc_name" HeaderText="Name" />
                        <asp:BoundField DataField="doc_add" HeaderText="Address" />
                        <asp:BoundField DataField="desig" HeaderText="Designation" />
                        <asp:BoundField DataField="doc_mobile" HeaderText="Mobile" />
                        <asp:BoundField DataField="doc_email" HeaderText="Email" />
                        <asp:BoundField DataField="dept" HeaderText="Department" />
                        <asp:BoundField DataField="Doc_gender" HeaderText="Gender" />
                        <asp:TemplateField HeaderText="Edit" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                    CommandName="Select" Text="Edit"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                    CommandName="Delete" Text="Delete" onclientclick="return ConfirmDelete();"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

