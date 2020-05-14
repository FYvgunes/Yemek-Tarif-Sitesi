using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Siparis_Sitesi
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yorumid"];
            SqlCommand komut = new SqlCommand("Select YorumAdSoyad,YorumMail,Yorumicerik,YemekAd " +
                "From Tbl_yorumlar inner join Tbl_Yemekler on Tbl_yorumlar.yemekid=Tbl_yemekler.Yemekid  where Yorumid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader rd = komut.ExecuteReader();
            while(rd.Read())
            {
                txt_Yorum_Ad.Text = rd[0].ToString();
                txt_yorum_mail.Text = rd[1].ToString();
                txtx_yorum_icerik.Text = rd[2].ToString();
                txt_yemek_id.Text = rd[3].ToString();
            }
            bgl.baglanti().Close();
        }

        protected void btn_guncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Tbl_yorumlar  set Yorumicerik=@p1, Yorumonay=@p2 where yorumid=@p3 ", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", txtx_yorum_icerik.Text);
            komut.Parameters.AddWithValue("@p2", "True");
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}