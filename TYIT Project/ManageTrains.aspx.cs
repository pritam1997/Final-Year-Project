using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManageTrains : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     if (Session["username"].ToString() != "admin" || Session["username"] == "")
        {
            Response.Redirect("~/Default.aspx");
        }
        else
        {
            Button1.Visible = true;
        }
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("~/Default.aspx");
    }
}