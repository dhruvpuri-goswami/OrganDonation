using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btn_login_Click(object sender, EventArgs e)
    {
        string id = "arjunhospital@gmail.com";
        string password = "Arjun@1234";
        if (txt_email_id1.Text == id)
        {
            if (txt_password1.Text == password)
            {
                Response.Redirect("home_hospital_ngo.aspx");
            }
        }
        else
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = "Data Source=OM-PC\\SQLEXPRESS;Initial Catalog=organdonation;Integrated Security=True";
            cn.Open();
            string sql1 = "select * from register_user where email_id = '" + txt_email_id1.Text + "'";
            SqlCommand cmd = new SqlCommand(sql1, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                dr.Close();
                try
                {
                    string sql2 = "select * from register_user where password = '" + txt_password1.Text + "'";
                    cmd = new SqlCommand(sql2, cn);
                    dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        Response.Redirect("home_user.aspx");
                    }
                    else
                    {
                        Response.Redirect("login.aspx");
                    }
                    cmd.Dispose();
                    cn.Close();
                }

                catch (Exception ex)
                {
                    
                }
            }
        }
        
              
    }
    protected void btn_cancel1_Click(object sender, EventArgs e)
    {
        
    }
}