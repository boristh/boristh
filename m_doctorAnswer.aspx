<%@ Page Language="C#" AutoEventWireup="true" CodeFile="m_doctorAnswer.aspx.cs" Inherits="consulting" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 43px;
        }
        .style3
        {
            width: 79px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style=" background-color:black ;">
    <a href="m_list.aspx">    <img src="images/index.png" style="height: 33px; border-style:none" /> </a>
    </div>
    <div>
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
        <td class="style7">
            Question</td>
        <td style="text-align: left" class="style8">
            <asp:Label ID="lbl_question" runat="server"></asp:Label>
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
            <asp:Button ID="btl_submit" runat="server" Text="Update" 
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
                onselectedindexchanged="grd_consulting_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Doctor's Answer">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("doc_name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <table class="style1">
                                <tr>
                                    <td class="style3">
                                        Doctor</td>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("doc_name") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        Patient</td>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("patient_name") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        Question</td>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("question") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        Answer</td>
                                    <td>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("answer") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        &nbsp;</td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                            CommandName="Select" Text="Give Answer"></asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        &nbsp;</td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                            CommandName="Delete" onclientclick="return ConfirmDelete();" Text="Delete"></asp:LinkButton>
                                    </td>
                                </tr>
                            </table>
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
    </div>
    </form>
</body>
</html>



 