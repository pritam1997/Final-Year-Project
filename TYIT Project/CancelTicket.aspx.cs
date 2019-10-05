using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class CancelTicket : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\TYIT Project\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand trainscmd;
    SqlDataAdapter trainsda;    

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
    
     

      
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("~/Default.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (!(TextBox1.Text == ""))
        {
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            string query = "select * from Ticket_book where TICKET_NO='" + TextBox1.Text + "'";
            trainscmd = new SqlCommand(query, con);
            trainsda = new SqlDataAdapter(trainscmd);
            DataTable dt = new DataTable();
            trainsda.Fill(dt);
            try
            {
                lblname.Text = dt.Rows[0]["FULLNAME"].ToString();
                lblTrain.Text = dt.Rows[0]["TRAIN_NO"].ToString();
                lblTrName.Text = dt.Rows[0]["TRAIN_NAME"].ToString();
                lblsource.Text = dt.Rows[0]["SOURCE_STN"].ToString();
                lblDest.Text = dt.Rows[0]["DESTINATION_STN"].ToString();
                lblAtime.Text = dt.Rows[0]["ARRIVAL_TIME"].ToString();
                lblDeptime.Text = dt.Rows[0]["DEPARTURE_TIME"].ToString();
                lblJourney.Text = dt.Rows[0]["JOURNEY_DATE"].ToString();
                lblPerson.Text = dt.Rows[0]["NO_OF_PERSONS"].ToString();
                lblClass.Text = dt.Rows[0]["CLASSTYPE"].ToString();
                lblFare.Text = dt.Rows[0]["TOTAL"].ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Invalid Ticket No.')</script>");
            }
            lblname.Visible = true;
            lblTrain.Visible = true;
            lblTrName.Visible = true;
            lblsource.Visible = true;
            lblDest.Visible = true;
            lblAtime.Visible = true;
            lblDeptime.Visible = true;
            lblJourney.Visible = true;
            lblPerson.Visible = true;
            lblClass.Visible = true;
            lblFare.Visible = true;

            Label1.Visible = true;
            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;
            Label6.Visible = true;
            Label7.Visible = true;
            Label8.Visible = true;
            Label9.Visible = true;
            Label10.Visible = true;
            Label11.Visible = true;

        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (!(TextBox1.Text == ""))
        {
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            string query = "delete from Ticket_book where TICKET_NO =" + TextBox1.Text;

            trainscmd = new SqlCommand(query, con);
            trainscmd.ExecuteNonQuery();

            lblname.Visible = false;
            lblTrain.Visible = false;
            lblTrName.Visible = false;
            lblsource.Visible = false;
            lblDest.Visible = false;
            lblAtime.Visible = false;
            lblDeptime.Visible = false;
            lblJourney.Visible = false;
            lblPerson.Visible = false;
            lblClass.Visible = false;
            lblFare.Visible = false;

            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;
            Label7.Visible = false;
            Label8.Visible = false;
            Label9.Visible = false;
            Label10.Visible = false;
            Label11.Visible = false;

            Label12.Text = "Ticket Has Been Cancelled";
        }
    }
}