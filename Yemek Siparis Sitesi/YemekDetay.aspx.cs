using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Siparis_Sitesi
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        string yemekid = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["yemekid"];

            SqlCommand komut = new SqlCommand("Select yemekAD From Tbl_Yemekler where Yemekid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", yemekid);
            SqlDataReader dr = komut.ExecuteReader();

            while(dr.Read())
            {
                Label3.Text = dr[0].ToString();

            }
            bgl.baglanti().Close();

            //Yorumları Listelemek için

            SqlCommand komut2 = new SqlCommand("Select * From Tbl_Yorumlar where Yemekid=@p2", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p2", yemekid);
            SqlDataReader rd2 = komut2.ExecuteReader();
            DataList2.DataSource = rd2;
            DataList2.DataBind();



        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlCommand komut3 = new SqlCommand("insert into Tbl_yorumlar(YorumAdSoyad,YorumMail,Yorumicerik,yemekid) " +
                "values(@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut3.Parameters.AddWithValue("@p1", txt_torum_Ad.Text);
            komut3.Parameters.AddWithValue("@p2", txt_yorum_mail.Text);
            komut3.Parameters.AddWithValue("@p3", txt_yorum_icerik.Text);
            komut3.Parameters.AddWithValue("@p4", yemekid);
            komut3.ExecuteNonQuery();
            bgl.baglanti().Close();


        }
    }
}