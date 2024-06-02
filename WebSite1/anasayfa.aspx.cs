using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection testDb = new SqlConnection();
        testDb.ConnectionString = @"Data Source=DESKTOP-LCHCDI1\SQLEXPRESS;Initial Catalog=testdb;Integrated Security=True";

        testDb.Open();

        SqlDataAdapter adp = new SqlDataAdapter("SELECT * FROM [book_info]", testDb);

        DataSet ds = new DataSet();
        adp.Fill(ds, "tablo1");

      
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataList1.DataSourceID = "SqlDataSourceroman";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        DataList1.DataSourceID = "SqlDataSourceedebiyat";

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        DataList1.DataSourceID = "SqlDataSourcehikaye";

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        DataList1.DataSourceID = "SqlDataSourcefelsefe";
        
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        DataList1.DataSourceID = "SqlDataSourcecards";
        
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        DataList1.DataSourceID = "SqlDataSourcetarih";
    }
}