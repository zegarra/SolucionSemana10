using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWEB_Sem10
{
    public partial class TestClaseNumero : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            try
            {
                //Declaramos las variables...
                Double vfact = 0;
                Double valor = Convert.ToDouble(txtNumero.Text.Trim());

                //Instanciamos la clase clsNumero
                clsNumero objNumero = new clsNumero();

                //Calculamos el factorial
                vfact = objNumero.Factorial(valor);
                lblFactorial.Text = vfact.ToString();

                //Determinamos si el valor es o no primo...
                if(objNumero.EsPrimo(valor) == true)
                {
                    lblPrimo.Text = "si";
                }
                else
                {
                    lblPrimo.Text = "no";
                }
                //Mensaje Final
                lblMensaje.ForeColor = System.Drawing.Color.Blue;
                lblMensaje.Text = "Calculo correcto";
            }
            catch(Exception ex)
            {
                lblFactorial.Text = "";
                lblPrimo.Text = "";
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "Error: " + ex.Message;
            }
        }
    }
}