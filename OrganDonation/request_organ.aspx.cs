using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class request_organ : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_request_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=OM-PC\\SQLEXPRESS;Initial Catalog=organdonation;Integrated Security=True";
        cn.Open();
        string sql = "insert into requested_organ values('" + txt_name.Text + "', '" + txt_mobile_no.Text + "', '"  + txt_city.Text + "','" + txt_state.Text + "','" + organ_want.Text + "')";
        SqlCommand cmd = new SqlCommand(sql, cn);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            cn.Close();
            Response.Redirect("home_user.aspx");
    }
    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        txt_name.Text = "";
        txt_mobile_no.Text = "";
        txt_city.Text = "";
        txt_state.Text = "";

    }
}


