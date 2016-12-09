<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="consulting.aspx.cs" Inherits="consulting" %>

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
        text-align: right;
    }
    .style3
    {
        text-align: right;
        height: 21px;
    }
    .style4
    {
        height: 21px;
    }
        .style5
        {
            text-align: right;
            height: 22px;
        }
        .style6
        {
            height: 22px;
        }
        .style7
        {
            text-align: right;
            height: 30px;
        }
        .style8
        {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style5">
            </td>
        <td class="style6">
            </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td style="text-align: left">
            <asp:Label ID="lbl_msg" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style2">
            Doctor</td>
        <td style="text-align: left">
            <asp:DropDownList ID="ddl_doctor" runat="server" CssClass="txtbox" 
                ValidationGroup="a">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="ddl_doctor" ErrorMessage="Require" ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            Patient</td>
        <td style="text-align: left">
            <asp:DropDownList ID="ddl_patient" runat="server" CssClass="txtbox" 
                ValidationGroup="a">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="ddl_patient" ErrorMessage="Require"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style7">
            Question</td>
        <td style="text-align: left" class="style8">
            <asp:TextBox ID="txt_question" runat="server" CssClass="txtbox" 
                ValidationGroup="a"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txt_question" ErrorMessage="Require"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            Answer</td>
        <td style="text-align: left">
            <asp:TextBox ID="txt_answer" runat="server" 
                ontextchanged="TextBox2_TextChanged" CssClass="txtbox" ValidationGroup="a"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txt_answer" ErrorMessage="Require"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td style="text-align: left">
            <asp:Button ID="btl_submit" runat="server" Text="Submit" 
                onclick="btl_submit_Click" ValidationGroup="a" />
            <asp:Button ID="btl_reset" runat="server" Text="Reset" 
                onclick="btl_reset_Click" ValidationGroup="a" />
        </td>
    </tr>
    <tr>
        <td class="style3">
        </td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            <asp:GridView ID="grd_consulting" runat="server" CellPadding="4" 
                ForeColor="#333333" GridLines="None" DataKeyNames="consult_id,doc_id,patient_id" 
                AutoGenerateColumns="False" onrowdeleting="grd_consulting_RowDeleting" 
                Width="504px" onselectedindexchanged="grd_consulting_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="doc_name" HeaderText="Doctor" />
                    <asp:BoundField DataField="patient_name" HeaderText="Patient" />
                    <asp:BoundField DataField="question" HeaderText="Question" />
                    <asp:BoundField DataField="answer" HeaderText="Answer" />
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
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

