<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

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
.phone
{
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
    margin-top:6px;
    padding: 20px 30px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    align:center;
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

    .signup
{
    border-radius: 5px;
    background-color:white;
    padding: 20px;
}



</style>

<div class="signup">

    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
<h3 style=" font-size: x-large; font-family: Aharoni; text-decoration: underline">Register</h3>
    
    <div class="row">
      <div class="col-25">
        <label for="fname">First Name</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox1" runat="server" placeholder="Your name.."></asp:TextBox>
          <asp:RequiredFieldValidator runat="server" ErrorMessage="Your First Name Must Not Be Empty" 
              ForeColor="Red" ID="RequiredFieldValidator1"
              ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
      </div>
        
    </div>
   
   <div class="row">
      <div class="col-25">
        <label for="fname">Last Name</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox2" runat="server" placeholder="Your last name.."></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
              ErrorMessage="Your Last Name Must Not Be Empty" ForeColor="red" 
              ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
      </div>
    </div>

    <div class="row">
      <div class="col-25">
        <label for="fname">Username</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox3" runat="server" placeholder="Set username.."></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
              ErrorMessage="Username must Not be Empty" ForeColor="red" 
              ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label>Password</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox4" runat="server" placeholder="Set password.." TextMode="Password"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
              ErrorMessage="Password Must Not Be Empty" ForeColor="red" 
              ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
      </div>
    </div>
    <br />
    <div class="row">
      <div class="col-25">
        <label>Confirm</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox8" runat="server" placeholder="Set password.." TextMode="Password"></asp:TextBox>
          <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox4" ControlToValidate="TextBox8" 
            ErrorMessage="Password Do Not Match" ForeColor="Red"></asp:CompareValidator>

      </div>
       
    </div>
    <br />
     <div class="row">
      <div class="col-25">
        <label>Mobile No.</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox7" runat="server" placeholder="Phone no. .." 
              class="phone" TextMode="Number"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
              ErrorMessage="Please Enter Mobile Number " ForeColor="red" 
              ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
      </div>
    </div>
    <br />
    <div class="row">
      <div class="col-25">
        <label>Email</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox5" runat="server" placeholder="Your Email.." 
              TextMode="Email" ></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
              ErrorMessage="Please Enter Email" ForeColor="red" 
              ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
      </div>
    </div>
    <br />
    <div class="row">
      <div class="col-25">
        <label>Address</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox6" runat="server" placeholder="Your address.." TextMode="MultiLine"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
              ErrorMessage="Address Must Not Be Empty" ForeColor="red" 
              ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
      </div>
    </div>
     </ContentTemplate>
</asp:UpdatePanel>
    <br />
    <div class="row">
        <asp:Button ID="submit" runat="server" Text="Submit" onclick="submit_Click" />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button ID="clear" runat="server" Text="Clear" onclick="clear_Click" />
    </div>
   

    </form>
    
  </div> 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        &nbsp;</p>
</asp:Content>

