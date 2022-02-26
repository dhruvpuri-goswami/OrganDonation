using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_logOut_Click(object sender, EventArgs e)
    {
            Response.Redirect("login.aspx");  
    }
    protected void btn_delete_Click(object sender, EventArgs e)
    {
        Response.Redirect("delete_account.aspx");
    }
}
