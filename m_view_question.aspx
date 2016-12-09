
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="m_view_question.aspx.cs" Inherits="consulting" %>

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
            <asp:Label ID="lbl_msg" runat="server"></asp:Label>
        <br />
            <asp:GridView ID="grd_consulting" runat="server" CellPadding="4" 
                ForeColor="#333333" GridLines="None" DataKeyNames="consult_id,doc_id,patient_id" 
                AutoGenerateColumns="False" onrowdeleting="grd_consulting_RowDeleting" 
                Width="100%"   
                style="text-align: left">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Query">
                        <ItemTemplate>
                            Doctor:<asp:Label ID="Label1" runat="server" Text='<%# Bind("doc_name") %>'></asp:Label>
                            <br />
                            Question:
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("question") %>'></asp:Label>
                            <br />
                            Answer:<asp:Label ID="Label4" runat="server" Text='<%# Bind("answer") %>'></asp:Label>
                            <br />
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                CommandName="Delete" Text="Delete"></asp:LinkButton>
                            <br />
                            <br />
                             
                            
                            <hr />

                             <br />
                             

                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("doc_name") %>'></asp:TextBox>
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
        <br />
    </div>
    </form>
</body>
</html>



























 
