﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Siparis_Sitesi
{
    public partial class Tarifler : System.Web.UI.Page
    {
        Sqlbaglanti bgl = new Sqlbaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            //Onaysız tarif listesini onaylama
            SqlCommand komut = new SqlCommand("Select * From Tbl_Tarifler where  Tarifdurum=0", bgl.baglanti());
            SqlDataReader rd = komut.ExecuteReader();
            DataList1.DataSource = rd;
            DataList1.DataBind();


            //Onaylı Tarfi Listeisini sıralama
            SqlCommand komut2 = new SqlCommand("Select * From Tbl_Tarifler  where Tarifdurum=1", bgl.baglanti());
            SqlDataReader rd2 = komut2.ExecuteReader();
            DataList2.DataSource = rd2;
            DataList2.DataBind();


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
    }
}