using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PrintTicket : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Write("<script>alert('Please Login To Print ticket')</script>");
            Response.Redirect("~/Default.aspx");
            
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ReportViewer1.LocalReport.Refresh();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/PNRstatus.aspx");
    }
}