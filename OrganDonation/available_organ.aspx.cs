using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;


public partial class available_organ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_search_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=OM-PC\\SQLEXPRESS;Initial Catalog=organdonation;Integrated Security=True";
        cn.Open();
        string sql = "select * from available_organ where a_organ = '"+ txt_search_organ.Text +"'";
        try
        {
            SqlCommand cmd = new SqlCommand(sql, cn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            cmd.Dispose();
            cn.Close();
        }

        catch (Exception ex)
        {

        }
        
          
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}