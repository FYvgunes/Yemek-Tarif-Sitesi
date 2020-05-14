using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Siparis_Sitesi
{
    public partial class HakkimizdaAdmin : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();

        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Visible = false;
            Button1.Visible = false;
            if(Page.IsPostBack==false)
            {
                SqlCommand komut = new SqlCommand("Select * From Tbl_Hakkımda", bgl.baglanti());
                SqlDataReader rd = komut.ExecuteReader();

                while (rd.Read())
                {
                    TextBox1.Text = rd[0].ToString();
                }
                bgl.baglanti().Close();
            }
           

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            TextBox1.Visible = true;
            Button1.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            TextBox1.Visible = false;
            Button1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                SqlCommand komut = new SqlCommand("Update tbl_hakkımda set Metin=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", TextBox1.Text);
                komut.ExecuteNonQuery();
                bgl.baglanti().Close();

          
            
        }
    }
}