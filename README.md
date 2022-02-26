# OrganDonation
Organ donation is the entire practice of retrieving a human organ from a living or deceased person ,Who is referred to as a donor, and transplanting it into a recipient. The recipient will be a patient who is suffering from organ failure and who will not survive unless he/she receives an organ replacement.
Our Mission:-
“ Not everyone has the chance to save a life of someone ”
Our main aims are :-
-	To spread awareness about organ donation among the people.
-	To give a hope for a new life to the people who have given up.
-	Networking with hospitals who transplant the organs, with NGO's who are working for this type of activities.
“ With awareness comes knowledge and with knowledge comes change ”

Project Members Name with Enrollments :-
1)	196120316019 - Dhruvpuri Goswami
2)	196120316040 - Abhishek Nalla 

Software Requirements for Project :-
-	Visual Studio 2010 or more.
-	SQL Server Express
-	SQL Management Studio

Home Page :
![image](https://user-images.githubusercontent.com/92724441/155834953-54a3d55c-8581-47f0-b083-5d317b52faba.png)
  
  
Register Logic :

protected void btn_register1_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=OM-PC\\SQLEXPRESS;InitialCatalog=organdonation;
        Integrated Security=True";
        cn.Open();
        try {
            SqlCommand cmd = cn.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "insert into register_user values('" + txt_name.Text + "', '" 
     + txt_address.Text + "', '" + txt_email_id.Text + "', '" + txt_mobile_no.Text + "', '" 
     + txt_password.Text + "', '" + txt_confirm_password.Text +  "', '" + txt_answer.Text +
            "', '" + txt_ans.Text +"')";
            cmd.ExecuteNonQuery();
            cmd.Dispose();
        }
        catch (Exception ex) { }
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
 
 
Login Logic :

protected void btn_login_Click(object sender, EventArgs e)
    {
        string id = "arjunhospital@gmail.com";
        string password = "Arjun@1234";
        if (txt_email_id1.Text == id) {
            if (txt_password1.Text == password)  {
                Response.Redirect("home_hospital_ngo.aspx");
            }
        }
        else
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = "Data Source=OM-PC\\SQLEXPRESS;Initial 
             Catalog=organdonation;Integrated Security=True";
            cn.Open();
          string sql1 = "select * from register_user where email_id = '" + txt_email_id1.Text + "'";
            SqlCommand cmd = new SqlCommand(sql1, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read()) {
                dr.Close();
                try {
          string sql2 = "select * from register_user where password = '" + txt_password1.Text + "'";
                    cmd = new SqlCommand(sql2, cn);
                    dr = cmd.ExecuteReader();
                    if (dr.Read()) {
                        Response.Redirect("home_user.aspx");
                    }
                    cmd.Dispose();
                    cn.Close();
                }
                catch (Exception ex) {}    
        
  	}

 
Forgot Password Logic :  ( Forgot Button and Reset Button )

protected void btn_forgot_click(object sender, EventArgs e)  {
       SqlConnection cn = new SqlConnection();
            cn.ConnectionString = "Data Source=OM-PC\\SQLEXPRESS;Initial
              Catalog=organdonation;Integrated Security=True";
            cn.Open();
         string sql1 = "select * from register_user where mobile_no = '" + txt_mobile_no.Text + "'";
            SqlCommand cmd = new SqlCommand(sql1, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())  {
                dr.Close();
                try   {
                string sql2 = "select * from register_user where s_q1 = '" + txt_answer.Text +  "'";
                    cmd = new SqlCommand(sql2, cn);
                    dr = cmd.ExecuteReader();
                    dr.Close();
                    try {
                        sql2 = "select * from register_user where s_q2 = '" + txt_ans.Text + "'";
                        cmd = new SqlCommand(sql2, cn);
                        dr = cmd.ExecuteReader();
                        if (dr.Read())  {
                            panel1.Visible = false;
                            panel2.Visible = true;
                        }
                        Else {
                            Response.Redirect("login.aspx");
                        }
                        cmd.Dispose();
                    }
                    catch (Exception ex) {  }
                catch (Exception ex) { }
                cmd.Dispose();
                cn.Close();
            }
 }


protected void btn_reset_Click(object sender, EventArgs e) {
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



Admin Home Page :
-	Admin is nothing but a Hospital user.
-	It has two functions.
(1)	 Add Organs	
(2)	 Requested Organ List
-	Admin can also Logout From the session.


Add Organ :
 
-	Add Organ inserts available organ in our database.
Requested Organ List : 
-	It shows a user requested organ list.
 Requested Organ List Logic :
protected void btn_search_Click(object sender, EventArgs e)  {
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=OM-PC\\SQLEXPRESS;Initial 
         Catalog=organdonation;Integrated Security=True";
        cn.Open();
        string sql = "select * from requested_organ where organ = '" + txt_search_organ.Text + "'";
        try {
            SqlCommand cmd = new SqlCommand(sql, cn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            cmd.Dispose();
            cn.Close();
        }
        catch (Exception ex) { }        
    } 
    
    
User Home Page :
-	It has mainly 3 Functions :-
(1)	Search for Available Organs
(2)	Delete Account
(3)	Request for an organ
 
 
Available Organs Logic :

protected void btn_search_Click(object sender, EventArgs e) {
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=OM-PC\\SQLEXPRESS;Initial 
         Catalog=organdonation;Integrated Security=True";
        cn.Open();
        string sql = "select * from available_organ where a_organ = '"+ txt_search_organ.Text +"'";
        try {
            SqlCommand cmd = new SqlCommand(sql, cn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            cmd.Dispose();
            cn.Close();
        }
        catch (Exception ex) { }
}
 
 

Delete Account Logic :

protected void btn_delete_account(object sender, EventArgs e)
{
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=OM-PC\\SQLEXPRESS;Initial
         Catalog=organdonation;Integrated Security=True";
        cn.Open();
        string sql1 = "DELETE from register_user where mobile_no = '" + txt_mobile_no.Text + "'AND
         password = '"+ txt_password.Text + "'";
        SqlCommand cmd = new SqlCommand(sql1,cn);
        cmd.ExecuteNonQuery();
        Response.Redirect("index.aspx");
}
-	Users can also Logout from the session.

 



