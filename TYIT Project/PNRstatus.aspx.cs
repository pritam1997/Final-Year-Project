using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PNRstatus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       if (Session["username"] == null)
        {
            Response.Write("<script>alert('Please Login To visit this page')</script>");
            Response.Redirect("~/Default.aspx");
        }
        else
        {
            Button2.Visible = true;
        }
       SqlDataSource1.SelectCommand = "select * from Ticket_book where ticket_no=" + Session["username"];
        Button2.Visible = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "select * from Ticket_book where PNR_NO="+TextBox1.Text;
        ListView1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("~/Default.aspx");
    }
}