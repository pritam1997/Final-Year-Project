using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AddTrain1 : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
              if (Session["username"].ToString() != "admin" || Session["username"] == null)
              {
                  Response.Write("<script>alert('Please Login To visit this page')</script>");
                  Response.Redirect("~/Default.aspx");
              }
              else
              {
                  Button3.Visible = true;
              }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\TYIT Project\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");

        try
        {
            string query = "insert into Train(train_no,train_name, source_stn, dest_stn,arrl_day, arrl_time,dep_day,dep_time,total_seat,avail_seat) values(@train_no, @train_name, @source_stn, @dest_stn,@arrl_day, @arrl_time,@dep_day, @dep_time, @total_seat, @avail_seat);";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@train_no", TextBox6.Text);
            cmd.Parameters.AddWithValue("@train_name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@source_stn", TextBox2.Text);
            cmd.Parameters.AddWithValue("@dest_stn", TextBox3.Text);
            cmd.Parameters.AddWithValue("@arrl_day", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@arrl_time", TextBox4.Text);
            cmd.Parameters.AddWithValue("@dep_day", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@dep_time", TextBox5.Text);
            cmd.Parameters.AddWithValue("@total_seat", TextBox7.Text);
            cmd.Parameters.AddWithValue("@avail_seat",TextBox7.Text);
            con.Open();
            cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Record Insert Successfully')</script>");
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                DropDownList1.ClearSelection();
                DropDownList2.Text = "";    
            TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
            

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        DropDownList1.ClearSelection();
        DropDownList2.ClearSelection() ;
        TextBox4.Text = ""; 
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        Session.Clear();
        Response.Redirect("~/Default.aspx");
    }
   
}