
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="m_doctor_list.aspx.cs" Inherits="doctor" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            width: 5px;
        }
        .style3
        {}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: left">
    <td class="style10" colspan="2">
    <div style=" background-color:black ;">
    <a href="m_list.aspx">    <img src="images/index.png" style="height: 33px; border-style:none" /> </a>
    </div>
                <asp:GridView ID="grd_doctor" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" 
                   DataKeyNames="doc_id,doc_photo" 
                    onselectedindexchanged="grd_doctor_SelectedIndexChanged" 
            Width="100%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Doctor List">
                            <ItemTemplate>
                                <table style="width: 100%">
                                    <tr>
                                        <td class="style2" rowspan="4">
                                            <asp:Image ID="Image1" runat="server" Height="79px" 
                                                ImageUrl='<%# Bind("doc_photo","upload/{0}") %>' />
                                        </td>
                                        <td class="style3">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style3">
                                            Name:</td>
                                        <td>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("doc_name") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style3">
                                            Address:</td>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("doc_add") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style3">
                                            Mobile :</td>
                                        <td>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("doc_mobile") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            &nbsp;</td>
                                        <td class="style3">
                                            Email :</td>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("doc_email") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            &nbsp;</td>
                                        <td class="style3" colspan="2">
                                            <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                                CommandName="Select" Text="Ask a Question"></asp:LinkButton>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                               
                               <hr />
                                 <br />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </EditItemTemplate>
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
    </div>
    </form>
</body>
</html>

















 