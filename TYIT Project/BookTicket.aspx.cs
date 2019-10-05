using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class BookTicket : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\TYIT Project\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand trainscmd;
    SqlDataAdapter trainsda;

    int totalseat;
    int availseats;

    protected void Page_Load(object sender, EventArgs e)
    {
        Button3.Visible = true;
        if (Session["username"] == null)
        {
            Response.Redirect("~/Default.aspx");
        }
        else
        {
            Button3.Visible = true;
        }
    
        if (con.State != ConnectionState.Open)
        {
            con.Open();

            if (Page.IsPostBack)
            {
                if (!(TextBox2.Text == ""))
                {
                    if (con.State != ConnectionState.Open)
                    {
                        con.Open();
                    }
                    string query = "select * from Train where train_no='" + TextBox2.Text + "'";
                    trainscmd = new SqlCommand(query, con);
                    trainsda = new SqlDataAdapter(trainscmd);
                    DataTable dt = new DataTable();
                    trainsda.Fill(dt);
                    TextBox3.Text = dt.Rows[0]["train_name"].ToString();
                    TextBox4.Text = dt.Rows[0]["source_stn"].ToString();
                    TextBox7.Text = dt.Rows[0]["dest_stn"].ToString();
                    TextBox9.Text = dt.Rows[0]["arrl_day"].ToString();
                    TextBox5.Text = dt.Rows[0]["arrl_time"].ToString();
                    TextBox10.Text = dt.Rows[0]["dep_day"].ToString();
                    TextBox6.Text = dt.Rows[0]["dep_time"].ToString();

                    object o = dt.Rows[0]["total_seat"];
                    totalseat = Convert.ToInt32(o);
                    object o1 = dt.Rows[0]["avail_seat"];
                    availseats = Convert.ToInt32(o1);
                    TextBox6.Focus();
                }
            }
        }
    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";

        TextBox8.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        noofperson.ClearSelection();
        ClassDrop.ClearSelection();
        TextBox9.Text = "";
        TextBox10.Text = "";
        txttotal.Text = "";
    
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int ak;
        int p = Convert.ToInt32(noofperson.Text);
        if (p < availseats)
         {
             trainscmd.CommandText = "insert into Ticket_book(USERNAME,FULLNAME,TRAIN_NO,TRAIN_NAME,SOURCE_STN,DESTINATION_STN,ARRIVAL_DAY,ARRIVAL_TIME,DEPARTURE_DAY,DEPARTURE_TIME,JOURNEY_DATE,CLASSTYPE,NO_OF_PERSONS,TOTAL) values('" + Session["username"] + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox7.Text + "','" + TextBox9.Text + "','" + TextBox5.Text + "','" + TextBox10.Text + "','" + TextBox6.Text + "','" + TextBox8.Text + "','" + noofperson.SelectedIndex + "'," + ClassDrop.SelectedIndex + "," + txttotal.Text + ") ";
             trainscmd.Connection = con;
             trainscmd.ExecuteNonQuery();
             trainscmd.CommandText = "select TICKET_NO from Ticket_book order by TICKET_NO desc";
             trainsda.SelectCommand = trainscmd;
            DataTable ticketdt=new DataTable();
            trainsda=new SqlDataAdapter(trainscmd);
             trainsda.Fill(ticketdt);
             string pnrtxt = "1800" + ticketdt.Rows[0]["TICKET_NO"];
             int bb = Convert.ToInt32(pnrtxt);


             trainscmd.CommandText = "update Ticket_book set pnr_no = '" + bb + "' where TICKET_NO = " + ticketdt.Rows[0]["TICKET_NO"];
             trainscmd.Connection = con;
             trainscmd.ExecuteNonQuery();
             int noofpersons = Convert.ToInt32(noofperson.Text);
             trainscmd.CommandText = "update Train set avail_seat = avail_seat - " + noofpersons;
             trainscmd.ExecuteNonQuery();
            // Literal1.Text = "Ticket No " + ticketdt.Rows[0]["TICKET_NO"] + "  PNR NO :- " + pnrtxt;

             object o = ticketdt.Rows[0]["TICKET_NO"];
             ak = Convert.ToInt32(o);
             Session["trainno"] = ak;
         }
         else
         {
             Literal1.Text = "Seats Are Not Available";
         } 
        Response.Redirect("~/Payment.aspx");
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";

        TextBox8.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        noofperson.ClearSelection();
        ClassDrop.ClearSelection();
        TextBox9.Text = "";
        TextBox10.Text = "";
        txttotal.Text = "";
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("~/Default.aspx");
    }
    protected void noofperson_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ClassDrop_SelectedIndexChanged(object sender, EventArgs e)
    {

        	int TOTALPERSONS;
            int CLASSTYPE;
            int total;
            TOTALPERSONS = Convert.ToInt32(noofperson.SelectedItem.Text);

            CLASSTYPE = ClassDrop.SelectedIndex;

            trainscmd= new SqlCommand("select * from FARE where TRAIN_NO=" + TextBox2.Text,con);
         
            trainsda = new SqlDataAdapter(trainscmd);
            DataTable dtfare = new DataTable();
            trainsda.Fill(dtfare);

            int nm;
            if (CLASSTYPE == 1)
            {
                Object o = dtfare.Rows[0]["SLEEPER"];
                nm = Convert.ToInt32(o);
                total = TOTALPERSONS * nm;
                txttotal.Text = total.ToString();
            }
        else 
                if (CLASSTYPE == 2)
            {
                Object o = dtfare.Rows[0]["ACI"];
                nm = Convert.ToInt32(o);
                total = TOTALPERSONS * nm;
                txttotal.Text = total.ToString();
            }
                else
                    if (CLASSTYPE == 3)
                    {
                        Object o = dtfare.Rows[0]["ACII"];
                        nm = Convert.ToInt32(o);
                        total = TOTALPERSONS * nm;
                        txttotal.Text = total.ToString();
                    }
        else
                        if (CLASSTYPE == 4)
                        {
                            Object o = dtfare.Rows[0]["ACIII"];
                            nm = Convert.ToInt32(o);
                            total = TOTALPERSONS * nm;
                            txttotal.Text = total.ToString();
                        }
            Button2.Focus();

        }
        //INSTANT C# TODO TASK: This method is a constructor, but no class name was found:

    }

