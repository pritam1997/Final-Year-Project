using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if(Session["username"] == null)
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
        string query = "select * from Train where source_stn='"+DropDownList1.Text+"' and dest_stn='"+DropDownList2.Text+"'";
        SqlDataSource2.SelectCommand = query;

        GridView1.DataBind();
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("~/Default.aspx");
    }
}