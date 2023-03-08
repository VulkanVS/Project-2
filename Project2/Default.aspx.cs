using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.VisualBasic; // necessário para utilizar o método "IsDate()"

namespace Project2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Enviar_Click(object sender, EventArgs e)
        {
            // converte o NumFuncionarios.Text para inteiro
            int numFunc = Convert.ToInt16(NumFuncionarios.Text);



            // VALIDAÇÃO DOS DADOS
            if (NomeCompleto.Text.Trim() == "")
            {
                Mensagem.Text = "Digite seu nome";
            }
            else if(Email.Text.Trim() == "")
            {
                Mensagem.Text = "Digite seu email";
            }
            else if(Telefone.Text.Trim() == "")
            {
                Mensagem.Text = "Digite seu telefone";
            }
            else if(!Information.IsDate(DataNascimento))
            {
                Mensagem.Text = "Digite a data correta";
            }
            else if(Sexo.SelectedValue == "")
            {
                Mensagem.Text = "Selecione o sexo";
            }
            else if(Atividade.SelectedValue == "0")
            {
                Mensagem.Text = "Selecione a atividade";
            }
            else if(numFunc <= 0)
            {
                Mensagem.Text = "Insira o número de funcionários";
            }
            //else if()

            else if(Observacoes.MaxLength > 255) // Validação de limite de caracteres por parte interna
            {
                Mensagem.Text = "Digite apenas 255 caracteres na observação";
            }

            else
            {
                // execut o processamento...
                // gravar os dados em um arquivo txt no disco.

                // 1. construa a string que será gravada no disco.

                string texto = NomeCompleto.Text.Trim() + "," + Email.Text.Trim() + "," + Telefone.Text + "," + DataNascimento.Text + "," + Sexo.SelectedItem.Text + "," + Atividade.SelectedItem.Text + "," + NumFuncionarios.Text + "," + Observacoes.Text;

                // Tarefa gravar o texto em um arquivo "cadastro.txt"
                // método de pesquisa "C# gravar arquivo disco" | Stack overflow


            }


        }
    }
}