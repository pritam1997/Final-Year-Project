<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CancelTicket.aspx.cs" Inherits="CancelTicket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">

<style>
.label
{
     padding: 6px 6px 6px 0;
    color:DodgerBlue;
    font-family:Aharoni;
    display: inline-block;
}
input[type=text]
{
    padding: 6px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    resize: vertical;
    align:center;
}
input[type=submit]
{
    padding: 12px 20px;
    border:none;
    border-radius:5px;
    align:center;
    color:White;
    cursor:pointer;
    font-family:Aharoni;
    margin-left:15px;
    background-color:DodgerBlue;
}
input[type=submit]:hover
{
    background-color:White;
    color:Dodgerblue;
}
.container
{
    padding:40px;
    margin-top:0;
}

h3
{
    margin-top:0;
}
.col-25 {
    float: left;
    width: 25%;
    margin-top: 6px;
}

.col-75 {
    float: left;
    width: 50%;
    margin-top: 6px;
}
.log
{
    float:right;
    margin-right:30px;
}
#Button2
{
    padding:0;
}
</style>

<form id="form1" runat="server">
<div class="log">
<asp:Button ID="Button2" runat="server" Text="Logout" BackColor="White" ForeColor="Red" 
            onclick="Button2_Click" Visible="False" Font-Size="Large" 
            Font-Underline="True" /></div>
    <h3 style="font-family:Aharoni; text-align:center; color: DodgerBlue;"><b>
        <u style="font-size: x-large">PNR STATUS</u></b></h3>
 <div class="container">
     
    <label style="font-family: aharoni; color: Dodgerblue;">TICKET NO. </label>
   <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Get Details" 
         onclick="Button1_Click" />
    <br />
      <div class="row">
      <div class="col-25">
          <asp:Label ID="Label1" runat="server" class="label" Text="Full Name" 
              Visible="False"></asp:Label>
      </div>
      <div class="col-75">
          <asp:Label ID="lblname" class="label" runat="server" Visible="False"></asp:Label>
      </div>
    </div>
    <br /><br />
     <div class="row">
      <div class="col-25">
          <asp:Label ID="Label2" runat="server" class="label" Text="Train No." 
              Visible="False"></asp:Label>
      </div>
      <div class="col-75">
          <asp:Label ID="lblTrain" class="label" runat="server" Visible="False"></asp:Label>
      </div>
    </div>
    <br /><br />
     <div class="row">
      <div class="col-25">
          <asp:Label ID="Label3" runat="server" class="label" Text="Train Name" 
              Visible="False"></asp:Label>
      </div>
      <div class="col-75">
          <asp:Label ID="lblTrName" class="label" runat="server" Visible="False"></asp:Label>
      </div>
    </div>
   <br /><br />
     <div class="row">
      <div class="col-25">
          <asp:Label ID="Label4" runat="server" class="label" Text="Source Station" 
              Visible="False"></asp:Label>
      </div>
      <div class="col-75">
          <asp:Label ID="lblsource" class="label" runat="server" Visible="False"></asp:Label>
      </div>
    </div>
    <br /><br />
     <div class="row">
      <div class="col-25">
          <asp:Label ID="Label5" runat="server" class="label" Text="Destination Station" 
              Visible="False"></asp:Label>
      </div>
      <div class="col-75">
          <asp:Label ID="lblDest" class="label" runat="server" Visible="False"></asp:Label>
      </div>
    </div>
    <br /><br />
     <div class="row">
      <div class="col-25">
          <asp:Label ID="Label6" runat="server" class="label" Text="Arrival Time" 
              Visible="False"></asp:Label>
      </div>
      <div class="col-75">
          <asp:Label ID="lblAtime" class="label" runat="server" Visible="False"></asp:Label>
      </div>
    </div>
    <br /><br />
     <div class="row">
      <div class="col-25">
          <asp:Label ID="Label7" runat="server" class="label" Text="Departures Time" 
              Visible="False"></asp:Label>
      </div>
      <div class="col-75">
          <asp:Label ID="lblDeptime" class="label" runat="server" Visible="False"></asp:Label>
      </div>
    </div>
    <br /><br />
     <div class="row">
      <div class="col-25">
          <asp:Label ID="Label8" runat="server" class="label" Text="Journey Date" 
              Visible="False"></asp:Label>
      </div>
      <div class="col-75">
          <asp:Label ID="lblJourney" class="label" runat="server" Visible="False"></asp:Label>
      </div>
    </div>
    <br /><br />
     <div class="row">
      <div class="col-25">
          <asp:Label ID="Label9" runat="server" class="label" Text="No. Of Person" 
              Visible="False"></asp:Label>
      </div>
      <div class="col-75">
          <asp:Label ID="lblPerson" class="label" runat="server" Visible="False"></asp:Label>
      </div>
    </div>
    <br /><br />
     <div class="row">
      <div class="col-25">
          <asp:Label ID="Label10" runat="server" class="label" Text="Class Type" 
              Visible="False"></asp:Label>
      </div>
      <div class="col-75">
          <asp:Label ID="lblClass" class="label" runat="server" Visible="False"></asp:Label>
      </div>
    </div>
    <br /><br />
     <div class="row">
      <div class="col-25">
          <asp:Label ID="Label11" runat="server" class="label" Text="Total Fare" 
              Visible="False"></asp:Label>
      </div>
      <div class="col-75">
          <asp:Label ID="lblFare" class="label" runat="server" Visible="False"></asp:Label>
      </div>
    </div>
    </div>
    <div class="row" style="left: auto">
        <asp:Button ID="Button3" runat="server" Text="Cancel Ticket" 
                onclick="Button3_Click" />&nbsp &nbsp &nbsp
       
            <br />
            <br />
        <asp:Label ID="Label12" runat="server"></asp:Label>
      </div>      
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

