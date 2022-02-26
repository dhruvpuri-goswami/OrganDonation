using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class register : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btn_register1_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=OM-PC\\SQLEXPRESS;Initial Catalog=organdonation;Integrated Security=True";
        cn.Open();
        try
        {
            SqlCommand cmd = cn.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "insert into register_user values('" + txt_name.Text + "', '" + txt_address.Text + "', '" + txt_email_id.Text + "', '" + txt_mobile_no.Text + "', '" + txt_password.Text + "', '" + txt_confirm_password.Text + "', '" + txt_answer.Text + "', '" + txt_ans.Text + "')";
            cmd.ExecuteNonQuery();
            cmd.Dispose();
        }
        catch (Exception ex)
        {

        }
        Response.Redirect("login.aspx");
    }

    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        txt_name.Text = "";
        txt_address.Text = "";
        txt_email_id.Text = "";
        txt_mobile_no.Text = "";
        txt_password.Text = "";
    }
}