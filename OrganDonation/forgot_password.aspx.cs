using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;


public partial class forgot_password : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_forgot_click(object sender, EventArgs e)
    {
       SqlConnection cn = new SqlConnection();
        //string sql = "select * from register_user where mobile_no = '" + txt_mobile_no.Text + "'"
            cn.ConnectionString = "Data Source=OM-PC\\SQLEXPRESS;Initial Catalog=organdonation;Integrated Security=True";
            cn.Open();
            string sql1 = "select * from register_user where mobile_no = '" + txt_mobile_no.Text + "'";
            SqlCommand cmd = new SqlCommand(sql1, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                dr.Close();
                try
                {
                    string sql2 = "select * from register_user where s_q1 = '" + txt_answer.Text +  "'";
                    cmd = new SqlCommand(sql2, cn);
                    dr = cmd.ExecuteReader();
                    dr.Close();
                    try
                    {
                        sql2 = "select * from register_user where s_q2 = '" + txt_ans.Text + "'";
                        cmd = new SqlCommand(sql2, cn);
                        dr = cmd.ExecuteReader();
                        if (dr.Read())
                        {
                            panel1.Visible = false;
                            panel2.Visible = true;
                        }
                        else
                        {
                            Response.Redirect("login.aspx");
                        }
                        cmd.Dispose();
                    }
                    catch (Exception ex)
                    {

                    }

                }

                catch (Exception ex)
                {
                    
                }
                cmd.Dispose();
                cn.Close();
            }
        }
   
    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        
    }

    protected void btn_reset_Click(object sender, EventArgs e)
    { 
        string str = " ";
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=OM-PC\\SQLEXPRESS;Initial Catalog=organdonation;Integrated Security=True";
        cn.Open();
        string sql = "UPDATE register_user SET password='" + txt_password.Text + "' WHERE mobile_no='" + txt_mobile_no.Text + "'";
        SqlCommand cmd = new SqlCommand(sql, cn);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        sql = "UPDATE register_user SET conform_password='" + txt_password.Text + "' WHERE mobile_no='" + txt_mobile_no.Text + "'";
        cmd = new SqlCommand(sql, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("login.aspx");
    }
}