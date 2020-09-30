using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using Newtonsoft.Json;
using System.Net;

namespace PruebaPractica
{
    public partial class PruebaRipley : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string fileJson = @"https://simple.ripley.cl/api/v2/products?format=json&partNumbers=2000379450763";
            DataTable dt = (DataTable)JsonConvert.DeserializeObject(fileJson,typeof(DataTable));

            //Desconozco la razon de porque el me arroja error al tratar de deserializar el formato JSON a C# para formar las clases.
            // ademas, trate de pasar la cadena de texto JSON a c# a travez de https://json2csharp.com/ pero me dice que la cadena
            // de texto no tiene un formato correcto.
            GridView1.DataSource=dt;
            GridView1.DataBind();
        }
    }
}