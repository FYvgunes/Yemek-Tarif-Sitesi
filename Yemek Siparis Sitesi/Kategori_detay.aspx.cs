using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Siparis_Sitesi
{
    public partial class Kategori_detay : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        string kategoriid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriid = Request.QueryString["Kategoriid"];
            SqlCommand komut = new SqlCommand("Select * From Tbl_Yemekler where kategoriid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", kategoriid);
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();

        }
    }
}