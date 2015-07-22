<%@ Page Title="" Language="C#" MasterPageFile="~/Deslogado.master" AutoEventWireup="true" CodeFile="RegisterStep2.aspx.cs" Inherits="Account_RegisterStep2" %>

<asp:Content runat="server" ID="CadastroContent" ContentPlaceHolderID="CadastroFormContent">
    <fieldset class="cp2-form-default col-md-6">
    <legend class="cp2-form-default">Fazer Cadastro</legend>
    <div id="boxCadastro">
        <form id="formCadastro" method="post" action="Register.aspx">
            <asp:PlaceHolder runat="server" ID="ErrorMessageCadastro" Visible="false">
                <p class="text-danger">
                    <asp:Literal runat="server" ID="FailureTextCadastro" />
                </p>
            </asp:PlaceHolder>
            <div class="row">
                <asp:Label runat="server" AssociatedControlID="txtNomeCadastro" CssClass="col-md-2 control-label">Nome</asp:Label>
                <asp:TextBox runat="server" ValidationGroup="CadastroGroup" ID="txtNomeCadastro" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ValidationGroup="CadastroGroup" ControlToValidate="txtNomeCadastro"
                        CssClass="text-danger" ErrorMessage="O campo nome é obrigatório" />
            </div>

            <div class="row">
                <asp:Label runat="server" AssociatedControlID="txtEmailCadastro" CssClass="col-md-2 control-label">E-mail</asp:Label>
                <asp:TextBox runat="server" ValidationGroup="CadastroGroup" ID="txtEmailCadastro" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ValidationGroup="CadastroGroup" ControlToValidate="txtEmailCadastro"
                        CssClass="text-danger" ErrorMessage="O campo e-mail é obrigatório" />
            </div>

            <div class="row">
                <asp:Label runat="server" AssociatedControlID="txtTelefoneCadastro" CssClass="col-md-2 control-label">Telefone</asp:Label>
                <asp:TextBox runat="server" ValidationGroup="CadastroGroup" ID="txtTelefoneCadastro" CssClass="form-control" />
                <asp:RequiredFieldValidator ValidationGroup="CadastroGroup" runat="server" ControlToValidate="txtTelefoneCadastro"
                        CssClass="text-danger" ErrorMessage="O campo telefone é obrigatório" />
            </div>

            <div class="row">
                <asp:Label runat="server" AssociatedControlID="txtNomeCadastro" CssClass="col-md-2 control-label">Nome</asp:Label>
                <asp:TextBox runat="server" ValidationGroup="CadastroGroup" ID="TextBox3" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ValidationGroup="CadastroGroup" ControlToValidate="txtNomeCadastro"
                        CssClass="text-danger" ErrorMessage="O campo nome é obrigatório" />
            </div>
            <div class="row">
                <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="PrepareToInsert" ValidationGroup="CadastroGroup" Text="Fazer Cadastro" CssClass="btn btn-default" />
            </div>
            </div>
            <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Registrar</asp:HyperLink>
                se você ainda não possui nenhuma conta.
        </form>
    </div>
</fieldset>
</asp:Content>

