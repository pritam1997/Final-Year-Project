using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Payment : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\TYIT Project\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("~/Default.aspx");
        }
        else
        {
            Response.Write("<script>alert('Please Login to visit this page')</script>");
        }
   
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        string query = "insert into Payment(username,card_hold_name,card_no,cvv,expire_date,amount) values(@username,@card_hold_name,@card_no,@cvv,@expire_date,@amount);";
           SqlCommand cmd = new SqlCommand(query,con);
           cmd.Parameters.AddWithValue("@username",Session["username"]);
           cmd.Parameters.AddWithValue("@card_hold_name", TextBox1.Text);
           cmd.Parameters.AddWithValue("@card_no", TextBox2.Text);
           cmd.Parameters.AddWithValue("@cvv", TextBox3.Text);
           cmd.Parameters.AddWithValue("@expire_date", TextBox4.Text);
           cmd.Parameters.AddWithValue("@amount", TextBox5.Text);
           
            cmd.ExecuteNonQuery();
            Response.Write("Payment Done Successfully");
            Response.Write("<script>alert('Payment was done')</script>");
            Response.Redirect("~/bookedticket.aspx");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}