using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\TYIT Project\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {
              
    }
    protected void Button1_Click(object sender, EventArgs e)
    {    
       
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        try
        {
            con.Open();
            cmd.CommandText = "select * from signup where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "' COLLATE SQL_Latin1_General_CP1_CS_AS";
            cmd.Connection = con;
            dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                Session["username"] = TextBox1.Text;
                Session["password"] = TextBox2.Text;
                string username = Session["username"].ToString();
                if (username == "admin")
                {
                    Response.Redirect("~/AddTrain1.aspx");
                    Response.Write("<script>alert('Welcome +" + username + "')</script>");
                }
                else
                {
                    Response.Redirect("~/SearchTrain.aspx");
                    Response.Write("<script>alert('Welcome +" + username + "')</script>");
                }
            }
            else
            {
                lblerror.Visible = true;
            }

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}