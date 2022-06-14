using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWEB_Sem10
{
    public partial class TestClaseConsulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack == false){
                try
                {
                    //Declaramos la instancia de la clase clsConsultas...
                    clsConsultas objConsultas = new clsConsultas();

                    //Variavle String para el idern SQL Select
                    String strSQL = "Select * from vw_VistaClientes";

                    //Enlazamos el cbo1...
                    cbo1.DataSource = objConsultas.EjecutaSelect(strSQL);
                    cbo1.DataValueField = "cod_cli";
                    cbo1.DataTextField = "Raz_soc_cli";
                    cbo1.DataBind();

                    //Enlazamos el cbo1...
                    strSQL = "Select * from VW_VistaProveedores";
                    cbo2.DataSource = objConsultas.EjecutaSelect(strSQL);
                    cbo2.DataValueField = "Cod_prv";
                    cbo2.DataTextField = "Raz_soc_prv";
                    cbo2.DataBind();

                    //Enlazamos el GridView
                    strSQL = "Select * from vw_VistaVendedores";
                    grdDatos.DataSource = objConsultas.EjecutaSelect(strSQL);
                    grdDatos.DataBind();
                }
                catch (Exception ex)
                {
                    lblMensaje.Text = ex.Message;
                }
            }
        }

        protected void btnVer_Click(object sender, EventArgs e)
        {
            lblCod1.Text = cbo1.SelectedValue.ToString();
        }

        protected void cbo2_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblCod2.Text = cbo2.SelectedValue.ToString();
        }
    }
}