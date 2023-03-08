<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Project2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>

<body>
    <form id="form1" runat="server">
        <div style="margin-left:60px; padding:20px; border:1px solid #c0c0c0; width:40%;">
            <h2>Cadastro de Cliente</h2>
            <br />
            <asp:Label ID="Mensagem" runat="server" Font-Size="20px" ForeColor="Red"></asp:Label>
            <br />
            <br />
            <label>Seu nome</label><br />
            <asp:TextBox ID="NomeCompleto" MaxLenght="50" runat="server"></asp:TextBox>
            <br />

            <label>E-mail</label><br />
            <asp:TextBox ID="Email" MaxLenght="255" TextMode="Email" runat="server"></asp:TextBox>
            <br />

            <label>Telefone</label><br />
            <asp:TextBox ID="Telefone" MaxLength="30" TextMode="Phone" runat="server"></asp:TextBox>
            <br />

            <label>Data Nascimento</label><br />
            <asp:TextBox ID="DataNascimento" MaxLenght="30" TextMode="Date" runat="server"></asp:TextBox>
            <br />

            <label>Sexo</label><br />
            <asp:RadioButtonList ID="Sexo" runat="server">
                <asp:ListItem Text="Feminino" Value="0"></asp:ListItem>
                <asp:ListItem Text="Masculino" Value="1"></asp:ListItem>
            </asp:RadioButtonList>

            <label>Atividade</label><br />
            <asp:DropDownList ID="Atividade" runat="server">
                <asp:ListItem Text="Selecione" Value="0"></asp:ListItem>
                <asp:ListItem Text="Gerente" Value="1"></asp:ListItem>
                <asp:ListItem Text="Supervisor" Value="2"></asp:ListItem>
                <asp:ListItem Text="Compras" Value="3"></asp:ListItem>
                <asp:ListItem Text="RH" Value="4"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <label>Num. Funcionários</label><br />
            <asp:TextBox ID="NumFuncionarios" MaxLenght="5" TextMode="Number" runat="server"></asp:TextBox>
            <br />

            <label>Observações</label><br />
            <asp:TextBox ID="Observacoes" MaxLenght="255" TextMode="MultiLine" Rows="6" runat="server"></asp:TextBox>
            <br />
            <br />

            <!-- BOTÃO PARA ENVIAR OS DADOS AO SERVIDOR -->

            <asp:Button ID="Enviar" OnClick="Enviar_Click" runat="server" Text="Enviar" />





        </div>
    </form>
</body>
</html>
