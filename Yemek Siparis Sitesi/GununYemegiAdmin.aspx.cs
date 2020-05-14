using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Yemek_Siparis_Sitesi
{
    public partial class GununYemegiAdmin : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler", bgl.baglanti());
            SqlDataReader rd = komut.ExecuteReader();
            DataList1.DataSource = rd;
            DataList1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
             
        }
    }
}