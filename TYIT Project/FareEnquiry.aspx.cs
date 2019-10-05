using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FareEnquiry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Label1.Text = "<font color='white'>YOU ARE NOT LOGGED IN" + "<br> <a href='Default.aspx'>Sign in</a></font>";
        }
        else
        {
            Label1.Text = "<font color='white'>Welcome " + Session["username"] + " <br> ";
            Button2.Visible = true;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string query = "select * from FARE where SOURCE_STN='"+DropDownList1.Text+"' and DEST_STN='"+DropDownList2.Text+"'";
        SqlDataSource3.SelectCommand = query;
        GridView1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("~/Default.aspx");
    }
}