using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWEB_Sem10
{
    public partial class TestPlanilla : System.Web.UI.Page
    {
        string sueldo;
        string estado;
        string hijos;
        string nivel;
        


        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCalcularPago_Click(object sender, EventArgs e)
        {
            double sueldo, estado, hijo, nivel, essalud, afp, tardanza, estable, contratados, practicante, descuento, bonificacion,pago;
            try
            {
                sueldo = Convert.ToDouble(lstArea.Text);
                estado = Convert.ToDouble(cboEC.Text);
                hijo = Convert.ToDouble(cboHijos.Text);
                nivel = Convert.ToDouble(cboNivel.Text);
                tardanza = Convert.ToDouble(txtMinutosTard.Text);

                double des = 0;

                bonificacion = estado + hijo + nivel;

                if (chkESSalud.Checked == true)
               {
                    des = sueldo * 0.10;
               }
                if (chkAFP.Checked == true)
                {
                    des = sueldo * 0.18;
                }
                 if(chkESSalud.Checked == true && chkAFP.Checked == true){
                    des = sueldo * 0.28;
                }



                   else if (tardanza <= 6)
                  {
                      estable = 60;
                      contratados = 20;
                      practicante = 5;
                
                 }
                  else if (tardanza <= 10)
                  {
                      estable = 100;
                     contratados = 50;
                      practicante = 10;
                  }
                  else
                  {
                      estable = 0;
                      contratados = 0;
                      practicante = 0;
                  }

                descuento = des + tardanza;
                pago = sueldo + bonificacion - descuento;
                
                txtDescuentos.Text = descuento.ToString();
                txtSueldo.Text = sueldo.ToString();
                txtBonificaciones.Text = bonificacion.ToString();
                txtPago.Text = pago.ToString();

            }
            catch(Exception ex)
            {
                lblMensaje.Text = ex.Message;
            }
        }

        protected void lstArea_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void cboEC_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void cboHijos_SelectedIndexChanged(object sender, EventArgs e)
        {

            
        }

        protected void cboNivel_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}