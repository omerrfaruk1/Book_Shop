using System;
using System.Data;
using System.Data.Sql;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.Page
{
    DataView dv = new DataView();
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        dt = dv.ToTable();

        if (dt.Rows.Count != 0)
        {
            Response.Redirect("panel.aspx");
        }
        else
        {
            Label1.Visible = true;
        }
    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}