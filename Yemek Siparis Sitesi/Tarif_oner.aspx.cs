using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Siparis_Sitesi
{
    public partial class Gunun_yemegi : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Tarif_Gonder_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Tarifler(TarifAd,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifSahipMail) values(@t1,@t2,@t3,@t4,@t5,@t6)", bgl.baglanti());
            komut.Parameters.AddWithValue("@t1", TxtTarifAd.Text);
            komut.Parameters.AddWithValue("@t2", TxtTarifMlazeme.Text);
            komut.Parameters.AddWithValue("@t3", TxttarifYapilis.Text);
            komut.Parameters.AddWithValue("@t4", fl_resimEkle.FileName);
            komut.Parameters.AddWithValue("@t5", TxtTarfiSahibi.Text);
            komut.Parameters.AddWithValue("@t6", TxtTarifmail.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
           
            Response.Write("Tarifiniz Alınmıştır. Teşekkür ederiz");
        }
    }
}