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


public partial class add_organ : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=OM-PC\\SQLEXPRESS;Initial Catalog=organdonation;Integrated Security=True";
        cn.Open();
        string sql = "insert into available_organ values('" + TextBox1.Text + "', '" + dd_organ.SelectedValue + "', '" + TextBox2.Text + "', '" + txt_did.Text + "')";
        try
        {
            SqlCommand cmd = new SqlCommand(sql, cn);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            cn.Close();
        }
        catch (Exception ex)
        {

        }
    }
    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        
    }

    
}
