using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Yemek_Siparis_Sitesi
{
    public partial class Kategori : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["Kategoriid"];
                islem = Request.QueryString["islem"];
                SqlCommand komut = new SqlCommand("Select * From Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader rd = komut.ExecuteReader();
                DataList1.DataSource = rd;
                DataList1.DataBind();
            }

            //SİLME İŞLEMİ
            if (islem == "sil")
            {
                SqlCommand komut_sil = new SqlCommand("delete from Tbl_kategoriler where kategoriid=@p1", bgl.baglanti());
                komut_sil.Parameters.AddWithValue("@p1", id);
                komut_sil.ExecuteNonQuery();
                bgl.baglanti().Close();
                
            }

           

            Panel2.Visible = false;
            Panel4.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into tbl_kategoriler(kategoriad,kategoriadet) values(@p1,@p2)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}