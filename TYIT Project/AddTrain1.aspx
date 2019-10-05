<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddTrain1.aspx.cs" Inherits="AddTrain1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
     <style>
* {
    box-sizing: border-box;
}

input[type=text], select, textarea{
    width: 100%;
    padding: 6px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    resize: vertical;
}

label {
    padding: 6px 6px 6px 0;
    color:DodgerBlue;
    font-family:Aharoni;
    display: inline-block;
}

input[type=submit] {
    background-color:DodgerBlue;
    color: white;
    font-family:Aharoni;
    margin-top:6px;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    align:center;
}

input[type=submit]:hover {
    background-color:white;
    color:DodgerBlue;
}

.ad_container {
    border-radius: 5px;
    background-color:white;
    padding: 20px;
}


.col-25 {
    float: left;
    width: 25%;
    margin-top: 6px;
}

.col-75 {
    float: left;
    width: 25%;
    margin-top: 6px;
}

h3
{
    color:Dodgerblue;
    font-family:Aharoni;
}
.log
{
    float:right;
    margin-right:30px;
}
#Button3
{
    padding:0px;
        height: 24px;
    }
</style>
</head>
<body>
<h2 class="header">Indian Railway Reservation</h2>
   
     <div class="menu">
  <ul>
    <li><a href="AddTrain1.aspx">Add Trains</a></li>
    <li><a href="ManageTrains.aspx">Manage Trains</a></li>
    <li><a href="AddFare1.aspx">Add Fare</a></li>
    <li><a href="Managefare.aspx">Manage Fare</a></li>
  </ul>
   </div>
  <div class="ad_container">
   
    <form id="form1" runat="server">

     <div class="log">
<asp:Button ID="Button3" runat="server" Text="Logout" BackColor="White" ForeColor="Red" 
            onclick="Button3_Click" Visible="False" Font-Size="Large" 
            Font-Underline="True" Width="84px" onclientclick="welcome.aspx" /></div>

            <h2 align="center"><u style="color: DodgerBlue; font-family: Aharoni">Add Train</u></h2>

     <div class="row">
      <div class="col-25">
        <label for="fname">Train No.</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox6" runat="server" placeholder="Train No. ..."></asp:TextBox>
          
          </div>
        <br />
         <font style="padding-left:'65px'"><asp:RequiredFieldValidator runat="server" ErrorMessage="Train No. Must Not Be Empty" 
              ForeColor="red" ID="RequiredFieldValidator6"
              ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
     </font>
    </div>
    <br />
    <br />
    <div class="row">
      <div class="col-25">
        <label for="fname">Train Name</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox1" runat="server" placeholder="Train Name..." ></asp:TextBox>
          
          </div>
          <br />
         <font style="padding-left:'65px'"><asp:RequiredFieldValidator runat="server" ErrorMessage="Train Name Must Not Be Empty" 
              ForeColor="red" ID="RequiredFieldValidator1"
              ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
     </font>
    </div>
    </br>
    <br />
    <div class="row">
      <div class="col-25">
        <label for="fname">Source Station</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox2" runat="server" placeholder="Source Station..."></asp:TextBox>
          
     
          </div>
           <br />
        <font><asp:RequiredFieldValidator runat="server" ErrorMessage="Source Station Must Not Be Empty" 
              ForeColor="red" ID="RequiredFieldValidator2"  
              ControlToValidate="TextBox1"></asp:RequiredFieldValidator></font>
    </div>
    </br>
    <br />
    <div class="row">
      <div class="col-25">
        <label for="fname">Destination Stn</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox3" runat="server" placeholder="Destination Station..."></asp:TextBox>
     
          </div>
           <br />
     <font>
      <asp:RequiredFieldValidator runat="server" ErrorMessage="Destination Station  Must Not Be Empty" 
              ForeColor="red" ID="RequiredFieldValidator3"  
              ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
        </font> 
    </div>
 <br /><br />

  <div class="row">
      <div class="col-25">
        <label for="fname">Arrival Day</label>
      </div>
      <div class="col-75">
          <asp:DropDownList ID="DropDownList1" runat="server">
              <asp:ListItem>-Select Day-</asp:ListItem>
              <asp:ListItem>Monday</asp:ListItem>
              <asp:ListItem>Tuesday</asp:ListItem>
              <asp:ListItem>Wednesday</asp:ListItem>
              <asp:ListItem>Thursday</asp:ListItem>
              <asp:ListItem>Friday</asp:ListItem>
              <asp:ListItem>Saturday</asp:ListItem>
              <asp:ListItem>Sunday</asp:ListItem>
          </asp:DropDownList>
          
     
          </div>
           <br />
        <font>
        <asp:RequiredFieldValidator InitialValue="-Select Day-" runat="server" ErrorMessage="Please Select Arrival Day" 
              ForeColor="red" ID="RequiredFieldValidator8"
              ControlToValidate="DropDownList1"></asp:RequiredFieldValidator></font>
    </div>
     <br />
    <br />

    <div class="row">
      <div class="col-25">
        <label for="fname">Arrival Time</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox4" runat="server" placeholder="Arrival Time..."></asp:TextBox>
          
     
          </div>
           <br />
        <font>
        <asp:RequiredFieldValidator runat="server" ErrorMessage="Arrival Time Must Not Be Empty" 
              ForeColor="red" ID="RequiredFieldValidator5"
              ControlToValidate="TextBox1"></asp:RequiredFieldValidator></font>
    </div>
    <br />
    <br />

     <div class="row">
      <div class="col-25">
        <label for="fname">Departure Day</label>
      </div>
      <div class="col-75">
          <asp:DropDownList ID="DropDownList2" runat="server">
          <asp:ListItem>-Select Day-</asp:ListItem>
              <asp:ListItem>Monday</asp:ListItem>
              <asp:ListItem>Tuesday</asp:ListItem>
              <asp:ListItem>Wednesday</asp:ListItem>
              <asp:ListItem>Thursday</asp:ListItem>
              <asp:ListItem>Friday</asp:ListItem>
              <asp:ListItem>Saturday</asp:ListItem>
              <asp:ListItem>Sunday</asp:ListItem>
          </asp:DropDownList>
          
     
          </div>
           <br />
        <font>
        <asp:RequiredFieldValidator InitialValue="-Select Day-" runat="server" ErrorMessage="Please Select Departure Day" 
              ForeColor="red" ID="RequiredFieldValidator9"
              ControlToValidate="DropDownList1"></asp:RequiredFieldValidator></font>
    </div>
    <br />
    <br />

    <div class="row">
      <div class="col-25">
        <label for="fname">Departure Time</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox5" runat="server" placeholder="Departure Time ..."></asp:TextBox>
 
          
          </div>
           <br />
          <font>
             <asp:RequiredFieldValidator runat="server" ErrorMessage="Departure Time Must Not Be Empty" 
              ForeColor="red" ID="RequiredFieldValidator4" 
              ControlToValidate="TextBox1"></asp:RequiredFieldValidator></font>
    </div>
    <br />
    <br />
    <div class="row">
      <div class="col-25">
        <label for="fname">Total Seats</label>&nbsp;
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox7" runat="server" placeholder="Total seats of train..."></asp:TextBox>
          
          </div>
           <br />
         <font style="padding-left:65px"><asp:RequiredFieldValidator runat="server" ErrorMessage="Train seats Must Not Be Empty" 
              ForeColor="red" ID="RequiredFieldValidator7"
              ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
     </font>
    </div>
    <br />
    <br />

    <div class="row">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="ADD TRAIN" onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="CLEAR" onclick="Button2_Click" />
    </div>
     </form>
  </div>
   
</body>
</html>
