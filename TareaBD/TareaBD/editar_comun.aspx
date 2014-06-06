<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editar_comun.aspx.cs" Inherits="TareaBD.editar_comun" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Comentarios
        <asp:HyperLink ID="hipername" runat="server" ForeColor="Blue" 
            NavigateUrl="~/Perfil.aspx">HyperLink</asp:HyperLink>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id_comentario" DataSourceID="SqlDataSource1" OnRowEditing="ResultGridView_RowEditing" 
        OnRowDeleting="ResultGridView_RowDeleting" 
        OnRowUpdating="ResultGridView_RowUpdating" 
        OnRowCancelingEdit="ResultGridView_RowCancelingEdit" >
        <Columns>
            <asp:BoundField DataField="id_comentario" HeaderText="id_comentario" 
                InsertVisible="False" ReadOnly="True" SortExpression="id_comentario" />
            <asp:TemplateField HeaderText="Mensaje" SortExpression="MensajeFname">
                
                <ItemTemplate>

                           <%# Eval("Mensaje") %>

                 </ItemTemplate>

                <EditItemTemplate>

                  <asp:TextBox ID="txtcoment" runat="Server" Text='<%# Eval("Mensaje") %>'></asp:TextBox>

                  <asp:RequiredFieldValidator ID="req1" runat="Server" Text="*" ControlToValidate="txtcoment"></asp:RequiredFieldValidator>

                
                </EditItemTemplate>
                
                
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Delete?">

                        <ItemTemplate>

                            <span onclick="return confirm('Are you sure to Delete the record?')">

                                <asp:LinkButton ID="lnkB" runat="Server" Text="Delete" CommandName="Delete"></asp:LinkButton>

                            </span>

                        </ItemTemplate>

                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Edit" ShowHeader="False">
                      <EditItemTemplate>
                       <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                       <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        </ItemTemplate>
                        </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        SelectCommand="SELECT [id_comentario], [mensaje] FROM [Comentario] WHERE (([id_tema] = @id_tema) AND ([id_usuario] = @id_usuario))" 
        DeleteCommand="DELETE FROM Comentario WHERE (id_comentario = @id_comentario)" 
        UpdateCommand="UPDATE Comentario SET mensaje = @msg WHERE (id_comentario = @id)">
        <DeleteParameters>
            <asp:Parameter Name="id_comentario" />
        </DeleteParameters>
        <SelectParameters>
            <asp:SessionParameter Name="id_tema" SessionField="tema" Type="Int32" />
            <asp:SessionParameter Name="id_usuario" SessionField="id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="msg" />
            <asp:Parameter Name="id" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Volver" />
    </form>
</body>
</html>
