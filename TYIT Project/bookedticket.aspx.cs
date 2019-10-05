using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class bookedticket : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\TYIT Project\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand trainscmd;
    SqlDataAdapter trainsda;

    protected void Page_Load(object sender, EventArgs e)
    {
        int ak;
        ak = Convert.ToInt32(Session["trainno"]);

        string query = "select * from Ticket_book where TICKET_NO='" + ak + "'";
        trainscmd = new SqlCommand(query, con);
        trainsda = new SqlDataAdapter(trainscmd);
        DataTable dt = new DataTable();
        trainsda.Fill(dt);
        try
        {

            lblTicekt.Text = dt.Rows[0]["TICKET_NO"].ToString();
            lblpnr.Text = dt.Rows[0]["PNR_NO"].ToString();
            lblname.Text = dt.Rows[0]["FULLNAME"].ToString();
            lblTrain.Text = dt.Rows[0]["TRAIN_NO"].ToString();

            lblTrName.Text = dt.Rows[0]["TRAIN_NAME"].ToString();

            lblsource.Text = dt.Rows[0]["SOURCE_STN"].ToString();
            lblDest.Text = dt.Rows[0]["DESTINATION_STN"].ToString();
             lblAday.Text = dt.Rows[0]["ARRIVAL_DAY"].ToString();
            lblAtime.Text = dt.Rows[0]["ARRIVAL_TIME"].ToString();
            lbldday.Text = dt.Rows[0]["DEPARTURE_DAY"].ToString();
            lblDeptime.Text = dt.Rows[0]["DEPARTURE_TIME"].ToString();
            lblJourney.Text = dt.Rows[0]["JOURNEY_DATE"].ToString();
            lblPerson.Text = dt.Rows[0]["NO_OF_PERSONS"].ToString();
            lblClass.Text = dt.Rows[0]["CLASSTYPE"].ToString();
            lbltotal.Text = dt.Rows[0]["TOTAL"].ToString();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/PrintTicket.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/BookTicket.aspx");
    }
}