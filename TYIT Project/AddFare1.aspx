<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddFare1.aspx.cs" Inherits="AddFare1" %>

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
    margin-top:20px;
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
    padding:0;
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
            onclick="Button3_Click" Font-Size="Large" 
            Font-Underline="True" onclientclick="welcome.aspx" Visible="False" /></div>

  <h2 align="center"><u style="color: DodgerBlue; font-family: Aharoni">Add Fare</u></h2>
  
 
     <div class="row">
      <div class="col-25">
        <label for="fname">Train No.</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="txttrainno" runat="server" placeholder="Train No. ..." 
              AutoPostBack="True"></asp:TextBox>
          
          </div>
          <br />
        <font style="padding-left:'65px'">
         <asp:RequiredFieldValidator runat="server" ErrorMessage="Train No. Must Not Be Empty" 
              ForeColor="red" ID="RequiredFieldValidator6"
              ControlToValidate="txttrainno"></asp:RequiredFieldValidator>
     </font>
 
    </div>
    <br />
    <br />
    <div class="row">
      <div class="col-25">
        <label for="fname">Train Name</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="txttrainname" runat="server" placeholder="Train Name..."></asp:TextBox>
          
          </div>
          <br />
         <font style="padding-left:'65px'">
        <asp:RequiredFieldValidator runat="server" ErrorMessage="Train Name Must Not Be Empty" 
              ForeColor="red" ID="RequiredFieldValidator1"
              ControlToValidate="txttrainname"></asp:RequiredFieldValidator>
     </font>

    </div>
    <br />
    <br />
    <div class="row">
      <div class="col-25">
        <label for="fname">Source Station</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="txtsourcestn" runat="server" placeholder="Source Station..."></asp:TextBox>     
          </div>
          <br />
        <font style="padding-left:'65px'">
        <asp:RequiredFieldValidator runat="server" ErrorMessage="Source Station Must Not Be Empty" 
              ForeColor="red" ID="RequiredFieldValidator2"  
              ControlToValidate="txtsourcestn"></asp:RequiredFieldValidator></font>

    </div>
    <br />
    <br />
    <div class="row">
      <div class="col-25">
        <label for="fname">Destination Stn</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="txtdest" runat="server" placeholder="Destination Station..."></asp:TextBox>
          </div>
          <br />
     <font style="padding-left:'65px'">
      <asp:RequiredFieldValidator runat="server" ErrorMessage="Destination Station  Must Not Be Empty" 
              ForeColor="red" ID="RequiredFieldValidator3"  
              ControlToValidate="txtdest"></asp:RequiredFieldValidator>
        </font> 

    </div>
    <br />
    <br />
    <div class="row">
      <div class="col-25">
        <label for="fname">Sleeper</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="txtsleeper" runat="server" placeholder="SLEEPER FARE"></asp:TextBox>
 
          
          </div>
          <br />
           <font style="padding-left:'65px'"> 
        <asp:RequiredFieldValidator runat="server" ErrorMessage="Sleeper Fare Must Not Be Empty" 
              ForeColor="red" ID="RequiredFieldValidator4" 
              ControlToValidate="txtsleeper"></asp:RequiredFieldValidator></font>

    </div>
    <br />
    <br />
    <div class="row">
      <div class="col-25">
        <label for="fname">ACI</label>&nbsp;
      </div>
      <div class="col-75">
          <asp:TextBox ID="ACI" runat="server" placeholder="ACI FARE"></asp:TextBox>
          
          </div>
          <br />
         <font style="padding-left:'65px'">
        <asp:RequiredFieldValidator runat="server" ErrorMessage="ACI Fare Must Not Be Empty" 
              ForeColor="red" ID="RequiredFieldValidator7"
              ControlToValidate="ACI"></asp:RequiredFieldValidator>
     </font>

    </div>
    <br />
    <br />
    <div class="row">
      <div class="col-25">
        <label for="fname">ACII</label>&nbsp;
      </div>
      <div class="col-75">
          <asp:TextBox ID="ACII" runat="server" placeholder="ACII FARE"></asp:TextBox>
          
          </div>
          <br />
         <font style="padding-left:'65px'">
        <asp:RequiredFieldValidator runat="server" ErrorMessage="ACII Fare Must Not Be Empty" 
              ForeColor="red" ID="RequiredFieldValidator8"
              ControlToValidate="ACII"></asp:RequiredFieldValidator>
     </font>

    </div>
    <br />
    <br />
    <div class="row">
      <div class="col-25">
        <label for="fname">ACIII</label>&nbsp;
      </div>
      <div class="col-75">
          <asp:TextBox ID="ACIII" runat="server" placeholder="ACIII PRICE"></asp:TextBox>
          
          </div>
          <br />
  
       <font style="padding-left:'65px'">
        <asp:RequiredFieldValidator runat="server" ErrorMessage="ACIII Price Must Not Be Empty" 
              ForeColor="red" ID="RequiredFieldValidator9"
              ControlToValidate="ACIII"></asp:RequiredFieldValidator>
     </font>
    </div>
    <br />
     <br />

    <div class="row">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="ADD FARE" onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="CLEAR" onclick="Button2_Click" />
    </div>
    
     </form>

    </div>
</body>
</html>
