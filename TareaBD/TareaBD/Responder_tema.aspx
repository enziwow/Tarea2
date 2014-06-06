<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Responder_tema.aspx.cs" Inherits="TareaBD.Responder_tema" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <strong>Comentarios del Tema<br />
        <br />
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </strong>
    
    </div>
    <br />
    <asp:GridView ID="GridView1" runat="server" Height="145px" 
        AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
         Width="183px" CellPadding="4" ForeColor="#333333" GridLines="None" 
        OnRowCommand="GridView1_RowCommand" 
        OnRowEditing="ResultGridView_RowEditing" 
        OnRowDeleting="ResultGridView_RowDeleting" 
        OnRowUpdating="ResultGridView_RowUpdating" 
        OnRowCancelingEdit="ResultGridView_RowCancelingEdit" 
        DataKeyNames="id_comentario" onrowdatabound="Gridview1_databound">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id_comentario" HeaderText="id_comentario" 
                InsertVisible="False" ReadOnly="True" SortExpression="id_comentario" />
            
            <asp:BoundField DataField="nombre" HeaderText="nombre" 
                SortExpression="nombre" />
           
                
                <asp:TemplateField HeaderText="Mensaje" SortExpression="MensajeFname">
                
                <ItemTemplate>

                           <%# Eval("Mensaje") %>

                 </ItemTemplate>

                <EditItemTemplate>

                  <asp:TextBox ID="txtcoment" runat="Server" Text='<%# Eval("Mensaje") %>'></asp:TextBox>

                  <asp:RequiredFieldValidator ID="req1" runat="Server" Text="*" ControlToValidate="txtcoment"></asp:RequiredFieldValidator>

                
                </EditItemTemplate>
                
                
                </asp:TemplateField>
            
            <asp:BoundField DataField="avatar_url" HeaderText="avatar_url" 
                SortExpression="avatar_url" />
            <asp:ButtonField CommandName="edit" Text="editaar" />
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
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        SelectCommand="SELECT Comentario.mensaje, Usuario.nombre, Usuario.avatar_url, Comentario.id_comentario FROM Comentario INNER JOIN Usuario ON Usuario.id_usuario = Comentario.id_usuario AND Comentario.id_tema = @id_tema" 
        DeleteCommand="DELETE FROM Comentario WHERE (id_comentario = @id)" 
        
        
        UpdateCommand="UPDATE Comentario SET mensaje = @msg WHERE (id_comentario = @id)">
        <DeleteParameters>
            <asp:ControlParameter ControlID="GridView1" Name="id" 
                PropertyName="SelectedValue" />
        </DeleteParameters>
        <SelectParameters>
            <asp:SessionParameter Name="id_tema" SessionField="tema" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="msg" />
            <asp:Parameter Name="id" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <p>
    
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Responder" />
    
    <br />
    </p>
    <p>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Editar/Borrar Comentarios" Width="174px" />
&nbsp;<asp:Label ID="lblname" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click1" 
            Text="Volver" />
    </p>
    </form>
</body>
</html>
