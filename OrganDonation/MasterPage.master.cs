using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_register_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }

    protected void btn_login_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}
