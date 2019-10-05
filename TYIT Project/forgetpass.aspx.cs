
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.Drawing;


public partial class forgetpass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = "";
        string password = ""; 

        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\TYIT Project\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");
        //SqlCommand cmd = new SqlCommand(con);
        string query ="select username,password from signup where email=@email";
        SqlCommand cmd = new SqlCommand(query,con);
        cmd.Parameters.AddWithValue("@email",TextBox1.Text);
        con.Open();
        
        using (SqlDataReader sdr = cmd.ExecuteReader())
        {

            if (sdr.Read())
            {
                username = sdr["username"].ToString();
                password = sdr["password"].ToString();

            }

        }
        con.Close();



        if (!string.IsNullOrEmpty(password))
        {
            MailMessage msg = new  MailMessage();
            msg.From = new MailAddress("railwayresevation31@gmail.com");
            msg.To.Add(TextBox1.Text);
            msg.Subject = " Recover your Password";
            msg.Body = ("Your Username is:" + username + "<br/><br/>" + "Your Password is:" + password);
            msg.IsBodyHtml = true;

            SmtpClient smt = new SmtpClient();
            smt.Host = "smtp.gmail.com";
            System.Net.NetworkCredential ntwd = new NetworkCredential();
            ntwd.UserName = "railwayresevation31@gmail.com";
            ntwd.Password = "vin@y1430"; 
            smt.UseDefaultCredentials = true;
            smt.Credentials = ntwd;
            smt.Port = 587;
            smt.EnableSsl = true;
            smt.Send(msg);
            Label1.Text = "Username and Password Sent Successfully";
            Label1.ForeColor = System.Drawing.Color.ForestGreen;
        }  


        else
        {
            Label1.ForeColor = Color.Red;
            Label1.Text = TextBox1.Text + "This Email-id not registered";
        }
    }
}