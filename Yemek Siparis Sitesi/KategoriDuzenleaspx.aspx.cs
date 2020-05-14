using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Siparis_Sitesi
{
    public partial class KategoriDuzenleaspx : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Kategoriid"];
            if (Page.IsPostBack == false)
            {
                
                SqlCommand komut = new SqlCommand("select * from Tbl_Kategoriler where kategoriid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader rd = komut.ExecuteReader();
                while (rd.Read())
                {
                    TextBox1.Text = rd[1].ToString();
                    TextBox2.Text = rd[2].ToString();

                }
                bgl.baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Tbl_Kategoriler Set KategoriAd=@p1, KategoriAdet=@p2 where Kategoriid=@p3", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}