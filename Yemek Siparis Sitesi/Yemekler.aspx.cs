using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Siparis_Sitesi
{
    public partial class Yemekler : System.Web.UI.Page
    {
        string islem = "";
        string id = "";

        Sqlbaglanti bgl = new Sqlbaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Yemekleri listeleme
            SqlCommand komut = new SqlCommand("Select *From Tbl_yemekler", bgl.baglanti());
            SqlDataReader rd = komut.ExecuteReader();
            DataList1.DataSource = rd;
            DataList1.DataBind();


 
            if(Page.IsPostBack==false)
            {
                id = Request.QueryString["Yemekid"];
                islem = Request.QueryString["islem"];


                //Kategori Listeleme
                SqlCommand komut1 = new SqlCommand("select * from Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader rd2 = komut1.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";
                DropDownList1.DataSource = rd2;
                DropDownList1.DataBind();
            } 

            if(islem=="sil")
            {
                SqlCommand komut2 = new SqlCommand("delete from Tbl_yemekler where Yemekid =@p1", bgl.baglanti());
                komut2.Parameters.AddWithValue("@p1", id);
                komut2.ExecuteNonQuery();
                bgl.baglanti().Close();
            }
            

            Panel2.Visible = false;
            Panel4.Visible = false;

        }

        

      

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into tbl_yemekler(yemekad,YemekMalzemes,YemekTarif,kategoriid) values(@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", txt_yemek_Ad.Text);
            komut.Parameters.AddWithValue("@p2", txt_malzeme.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);

            komut.ExecuteNonQuery();
            bgl.baglanti().Close();


            //kategori artırma
            SqlCommand komut2 = new SqlCommand("update tbl_kategoriler set kategoriadet=kategoriadet+1 where kategoriid=@p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

    }
}