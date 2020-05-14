using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Siparis_Sitesi
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Mesajid"];
            SqlCommand komut = new SqlCommand("Select * From Tbl_Mesajlar where mesajid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader rd = komut.ExecuteReader();

            while(rd.Read())
            {
                TextBox1.Text = rd[1].ToString();
                TextBox2.Text = rd[2].ToString();
                TextBox3.Text = rd[3].ToString();
                TextBox4.Text = rd[4].ToString();


            }
            bgl.baglanti().Close();

        }
    }
}