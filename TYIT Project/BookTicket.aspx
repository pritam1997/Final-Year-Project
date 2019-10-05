<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BookTicket.aspx.cs" Inherits="BookTicket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">

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
input[type=number], select, textarea{
    width: 100%;
    padding: 6px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    resize: vertical;
}
input[type=password], select, textarea{
    width: 100%;
    padding: 6px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    resize: vertical;
}
input[type=email], select, textarea{
    width: 100%;
    padding: 6px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    resize: vertical;
}
.date
{
    width: 100%;
    padding: 6px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    resize: vertical;
}
input[type=number], select, textarea{
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
    background-color: DodgerBlue;
    color: white;
    font-family:Aharoni;
    margin-top:12px;
    padding: 20px 30px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
   
}

input[type=submit]:hover {
    background-color:white;
    color:DodgerBlue;
}

.container {
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
    width: 75%;
    margin-top: 6px;
}
h3
{
   color:Dodgerblue; 
}
.container
{
    background-color:White;
}
.log
{
    float:right;
    margin-right:100px;
}
#Button3
{
    padding-top : 0;
    padding : 0px;
    margin:0px;
}
</style>
    <div class="container">
        <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        <div class="log">
<asp:Button ID="Button3" runat="server" Text="Logout " BackColor="White" ForeColor="Red" 
            onclick="Button3_Click" Visible="False" Font-Size="Large" 
            Font-Underline="True" Width="84px" onclientclick="welcome.aspx" /></div>
            <br />
        <h3 style=" font-size: x-large; font-family: Aharoni; text-decoration: underline">
            BOOK TICKET</h3>
        <div class="row">
      <div class="col-25">
        <label for="fname">Full Name</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox1" runat="server" placeholder="Your Full name.."></asp:TextBox>
          <asp:RequiredFieldValidator runat="server" ErrorMessage="Your Name Must Not Be Empty" 
              ForeColor="Red" ID="RequiredFieldValidator1" Font-Italic="True" 
              ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
      </div>
        
    </div>
   
   <div class="row">
      <div class="col-25">
        <label for="fname">Train No.</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox2" runat="server" placeholder="Train no. .." 
              AutoPostBack="True"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
              ErrorMessage="Please Enter Train Number .." Font-Italic="True" ForeColor="red" 
              ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
      </div>
    </div>

    <div class="row">
      <div class="col-25">
        <label for="fname">Train name</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox3" runat="server" placeholder="Train name.." 
              ReadOnly="True"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
              ErrorMessage="Please Enter Train Name" Font-Italic="True" ForeColor="red" 
              ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label>Source Station</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox4" runat="server" placeholder="Source Station.." 
              ReadOnly="True"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
              ErrorMessage="Please Enter Source Station Name" Font-Italic="True" ForeColor="red" 
              ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
      </div>
    </div>
     <div class="row">
      <div class="col-25">
        <label>Destination Name</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox7" runat="server" placeholder="Destination Name .." 
              ReadOnly="True" ></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
              ErrorMessage="Please Enter Destination Station Name " Font-Italic="True" ForeColor="red" 
              ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
      </div>
    </div>
     <div class="row">
      <div class="col-25">
        <label>Arrival Day</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox9" runat="server" placeholder="Arrival Day.." 
              ReadOnly="True"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
              ErrorMessage="Arrival Day Must Not Be Empty" Font-Italic="True" ForeColor="red" 
              ControlToValidate="TextBox9"></asp:RequiredFieldValidator>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label>Arrival Time</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox5" runat="server" placeholder="Arrival Time.." 
              ReadOnly="True"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
              ErrorMessage="Arrival Time Must Not Be Empty" Font-Italic="True" ForeColor="red" 
              ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
      </div>
    </div>
     <div class="row">
      <div class="col-25">
        <label>Departures Day</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox10" runat="server" placeholder="Departures Day.." 
              ReadOnly="True"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
              ErrorMessage="Departures Day Must Not Be Empty" Font-Italic="True" ForeColor="red" 
              ControlToValidate="TextBox10"></asp:RequiredFieldValidator>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label>Departures Time</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox6" runat="server" placeholder="Departures Time.." 
              ReadOnly="True"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
              ErrorMessage="Departures Time Must Not Be Empty" Font-Italic="True" ForeColor="red" 
              ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label>Journey Date</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox8" runat="server" class="date" placeholder="Departuers Time.." 
              TextMode="Date"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
              ErrorMessage="Date Must Not Be Empty" Font-Italic="True" ForeColor="red" 
              ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label>No. Of Person</label>
      </div>
      <div class="col-75">
          
          <asp:DropDownList ID="noofperson" runat="server" 
              onselectedindexchanged="noofperson_SelectedIndexChanged">
              <asp:ListItem>1</asp:ListItem>
              <asp:ListItem>2</asp:ListItem>
              <asp:ListItem>3</asp:ListItem>
              <asp:ListItem>4</asp:ListItem>
              <asp:ListItem>5</asp:ListItem>
          </asp:DropDownList>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label>Class Type</label>
      </div>
      <div class="col-75">
          
          <asp:DropDownList ID="ClassDrop" runat="server" 
              onselectedindexchanged="ClassDrop_SelectedIndexChanged" 
              AutoPostBack="True" >
              <asp:ListItem>-</asp:ListItem>
              <asp:ListItem>Sleeper</asp:ListItem>
              <asp:ListItem>ACI</asp:ListItem>
              <asp:ListItem>ACII</asp:ListItem>
              <asp:ListItem>ACIII</asp:ListItem>
          </asp:DropDownList>
      </div>
    </div>

    <div class="row">
      <div class="col-25">
        <label>Total Fair</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="txttotal" runat="server" ReadOnly="True"></asp:TextBox>
      </div>
    </div>
    <br />
        <div class="row" style="left: auto">
        <asp:Button ID="Button1" runat="server" Text="Book Ticket" 
                onclick="Button1_Click" />&nbsp &nbsp &nbsp
        <asp:Button ID="Button2" runat="server" Text="Cancel" onclick="Button2_Click" />
            <br />
            <br />


            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </div>
    
    </ContentTemplate>
        </asp:UpdatePanel>
    </form>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

</asp:Content>

