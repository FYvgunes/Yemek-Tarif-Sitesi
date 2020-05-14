using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Siparis_Sitesi
{
    public partial class TarifDetay : System.Web.UI.Page
    {
       
        Sqlbaglanti bgl = new Sqlbaglanti();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Tarifid"];
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * From Tbl_Tarifler where Tarifid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader rd = komut.ExecuteReader();
                while (rd.Read())
                {
                    TextBox1.Text = rd[1].ToString();
                    TextBox2.Text = rd[2].ToString();
                    TextBox3.Text = rd[4].ToString();
                    TextBox5.Text = rd[5].ToString();
                    TextBox6.Text = rd[6].ToString();
                }
                bgl.baglanti().Close();


                //Kategori Listeleme
                SqlCommand komut1 = new SqlCommand("select * from Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader rd2 = komut1.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";
                DropDownList1.DataSource = rd2;
                DropDownList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Durum Güncelleme

            SqlCommand komut = new SqlCommand("update  tbl_tarifler set tarifdurum= 0 where tarifid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Anasyfayfa ekleme
            SqlCommand komut1 = new SqlCommand("insert into tbl_yemekler(Yemekad,YemekMalzeme,YemekTarif,Kategoriid) values(@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut1.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut1.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut1.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut1.Parameters.AddWithValue("@p4", id);
            komut1.ExecuteNonQuery();
            bgl.baglanti().Close();

    
        }
    }
}