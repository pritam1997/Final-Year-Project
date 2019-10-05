using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AddFare1 : System.Web.UI.Page
{
    
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\TYIT Project\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
        
        try
        {   
            SqlCommand cmd = new SqlCommand("insert into FARE(TRAIN_NO,TRAIN_NAME,SOURCE_STN,DEST_STN,SLEEPER,ACI,ACII,ACIII) values('" + txttrainno.Text + "','" + txttrainname.Text + "','" + txtsourcestn.Text + "','" + txtdest.Text + "','" + txtsleeper.Text + "','" + ACI.Text + "','" + ACII.Text + "','" + ACIII.Text + "')",con);
            cmd.ExecuteNonQuery();

            Response.Write("<script>alert('Fare Added Successfully')</script>");
            
            txttrainno.Text = "";
            txttrainname.Text = "";
            txtsourcestn.Text = "";
            txtdest.Text = "";
            txtsleeper.Text = "";
            ACI.Text = "";
            ACII.Text = "";
            ACIII.Text = "";
            txttrainno.Focus();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
  }
    
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
       if ((con.State != ConnectionState.Open))
        {
            con.Open();
        }
            if (!(txttrainno.Text == ""))
            {
                if (Page.IsPostBack)
                {
                    string query = "select * from Train where train_no='" + txttrainno.Text + "'";
                    SqlCommand cmd = new SqlCommand(query, con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        txttrainname.Text = dr["train_name"].ToString();
                        txtsourcestn.Text = dr["source_stn"].ToString();
                        txtdest.Text = dr["dest_stn"].ToString();
                    }
                    dr.Close();
                }
            }
    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
         txttrainno.Text = "";
        txttrainname.Text = "";
        txtsourcestn.Text = "";
        txtdest.Text = "";
        txtsleeper.Text = "";
        ACI.Text = "";
        ACII.Text = "";
        ACIII.Text = "";
 
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("~/Default.aspx");
    }
}