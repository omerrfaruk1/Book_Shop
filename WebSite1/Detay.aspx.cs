using System;//mehmet koçin
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
//mehmet koçin
public partial class Detay : System.Web.UI.Page//mehmet koçin
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string ID = Request.QueryString["kitapid"];  //mehmet koçin 
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["testdbConnectionString3"].ConnectionString);
        string sorgu = "select * from book_info where id=@ID";
        SqlCommand cmd = new SqlCommand(sorgu, cnn);
        cmd.Parameters.AddWithValue("@ID", ID);
        cnn.Open();//mehmet koçin
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            imgProfil.ImageUrl = dr["img"].ToString();
            lblkitap_adi.Text = dr["kitap_adi"].ToString();
            lblkitap_aciklama.Text = dr["aciklama"].ToString();
            lblekleme_tarihi.Text = dr["tarihi"].ToString();//mehmet koçin
            lblyayin_yili.Text = dr["yili"].ToString();
            lblyazari.Text = dr["yazari"].ToString();
            lblkategori.Text = dr["kategori"].ToString();
            lblisbn_no.Text = dr["isbn"].ToString();
        }
        cnn.Close();

    }
}