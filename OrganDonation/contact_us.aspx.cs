using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class contact_us : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_send_message_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=OM-PC\\SQLEXPRESS;Initial Catalog=organdonation;Integrated Security=True";
        cn.Open();
        string sql="insert into contact_us values('" + txt_name.Text + "', '" + txt_email_id.Text + "', '"  + txt_mobile_no.Text + "', '" + txt_message.Text + "')";
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