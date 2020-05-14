using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Yemek_Siparis_Sitesi
{
    public class Sqlbaglanti
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-95G445G;Initial Catalog=Dbo_Yemek_Tarif;Integrated Security=True ");
            baglan.Open();
            return baglan;

        }
    }
}