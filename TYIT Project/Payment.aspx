<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

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
input[type=password], select, textarea{
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
.date
{
    width: 100%;
    padding: 6px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    resize: vertical;
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
    width: 50%;
    }

</style>

<div class="container">
<form id="form1" runat="server">

 <h3 style=" font-size: x-large; color:DodgerBlue; font-family: Aharoni; text-decoration: underline">Payment</h3>
    
    <div class="row">
      <div class="col-25">
        <label for="fname">Card Holder Name</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox1" runat="server" placeholder="Holder Name"></asp:TextBox>
          <asp:RequiredFieldValidator runat="server" ErrorMessage="*" 
              ForeColor="Red" ID="RequiredFieldValidator2"
              ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
           </div>
        
        <br />
        
    </div>
    <br />
    <br />
    <div class="row">
      <div class="col-25">
        <label for="fname">Card Number</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox2" runat="server" placeholder="Card No." 
              TextMode="Number"></asp:TextBox>
          <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="*" ForeColor="Red"
              ControlToValidate="TextBox2" MaximumValue="16" MinimumValue="16"></asp:RangeValidator>
      </div>
        
        <br />
        
    </div>
    <br />
    <br />
      <div class="row">
      <div class="col-25">
        <label for="fname">CVV</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox3" runat="server" placeholder="cvv" TextMode="Password"></asp:TextBox>
             <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="*" ForeColor="Red"
              ControlToValidate="TextBox3" MaximumValue="3" MinimumValue="3"></asp:RangeValidator>
      </div>
          <br />
    </div>
<br />
    <br />
      <div class="row">
      <div class="col-25">
        <label for="fname">Expire Date</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox4" runat="server" class="date" placeholder="Expire date" 
              TextMode="Date"></asp:TextBox>
          <asp:RequiredFieldValidator runat="server" ErrorMessage="*" 
              ForeColor="Red" ID="RequiredFieldValidator4"
              ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
      </div>        
          <br />
    </div>
    <br />
    <br />
        <div class="row">
      <div class="col-25">
        <label for="fname">Amount</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox5" runat="server" 
              placeholder="Amount for booked ticket" TextMode="Number"></asp:TextBox>
          <asp:RequiredFieldValidator runat="server" ErrorMessage="*" 
              ForeColor="Red" ID="RequiredFieldValidator5"
              ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
      </div>
          <br />
    </div>
    <br />
    <br />
     <div class="row" style="left: auto">
        <asp:Button ID="Button1" runat="server" Text="Processed" 
                onclick="Button1_Click" />&nbsp &nbsp &nbsp
        <asp:Button ID="Button2" runat="server" Text="Cancel" onclick="Button2_Click" />

 </form>
 </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

