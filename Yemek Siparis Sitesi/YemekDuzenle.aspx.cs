using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Siparis_Sitesi
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yemekid"];

            if (Page.IsPostBack == false)
            {

                SqlCommand komut = new SqlCommand("select * from Tbl_yemekler where Yemekid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader rd = komut.ExecuteReader();
                while (rd.Read())
                {
                    txt_ad.Text = rd[1].ToString();
                    txt_malzemeler.Text = rd[2].ToString();
                    txt_tarif.Text = rd[3].ToString();

                }
                bgl.baglanti().Close();
            }

            if (Page.IsPostBack == false)
            {

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
            FileUpload1.SaveAs(Server.MapPath("/img/" + FileUpload1.FileName));

            SqlCommand guncelle = new SqlCommand("update Tbl_Yemekler set yemekAD=@p1, YemekMalzeme=@p2, YemekTarif=@p3, kategoriid=@p4, YemekResim=@p6 where Yemekid=@p5", bgl.baglanti());
            guncelle.Parameters.AddWithValue("@p1", txt_ad.Text);
            guncelle.Parameters.AddWithValue("@p2", txt_malzemeler.Text);
            guncelle.Parameters.AddWithValue("@p3", txt_tarif.Text);
            guncelle.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            guncelle.Parameters.AddWithValue("@p6", "~/img/" + FileUpload1.FileName);
            guncelle.Parameters.AddWithValue("@p5", id);
            guncelle.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            //Tüm yemeklerirn durumu false yaptık

            SqlCommand komut = new SqlCommand("update Tbl_yemekler set durum=0 ", bgl.baglanti());
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //günün yemegi iim if ye göre durum true yapma
            SqlCommand komut2 = new SqlCommand("update Tbl_Yemekler set durum =1 where yemekid=@p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", id);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}