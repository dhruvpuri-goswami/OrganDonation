using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class delete_account : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_cancel_Click(object sender, EventArgs e)
    {

    }
    protected void btn_delete_account(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=OM-PC\\SQLEXPRESS;Initial Catalog=organdonation;Integrated Security=True";
        cn.Open();
        string sql1 = "DELETE from register_user where mobile_no = '" + txt_mobile_no.Text + "'AND password = '"+ txt_password.Text + "'";
        SqlCommand cmd = new SqlCommand(sql1,cn);
        cmd.ExecuteNonQuery();
        Response.Redirect("index.aspx");
    }
}