<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FareEnquiry.aspx.cs" Inherits="FareEnquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">


    <style>
label
{
    padding:12px;
    border-radius:5px;
}
.dropdown
{
    padding: 10px 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    resize: vertical;
    align:center;
    font-family:Aharoni;
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
    padding-top:20px;
}
.grid
{
    margin-top:30px;
 }
h3
{
    margin-top:0;
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
<div class="container">
<form id="form1" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">

<ContentTemplate>
<div class="log">
<asp:Button ID="Button2" runat="server" Text="Logout" BackColor="White" ForeColor="Red" 
            onclick="Button2_Click" Visible="False" Font-Size="Large" 
            Font-Underline="True" /></div>

    <h3 style="font-family:Aharoni; text-align:center; color: DodgerBlue;"><b>
        <u style="font-size: x-large">Fare Enquiry</u></b></h3>
 
    <label style="font-family: aharoni; color: Dodgerblue;">Source Station :</label>
    <asp:DropDownList ID="DropDownList1" class="dropdown" runat="server" 
        DataSourceID="SqlDataSource4" DataTextField="SOURCE_STN" 
        DataValueField="SOURCE_STN" >
        <asp:ListItem>--Select--</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <label style="font-family: aharoni; color: Dodgerblue;">Destination  Station :</label>
    <asp:DropDownList ID="DropDownList2" class="dropdown" runat="server" 
        DataSourceID="SqlDataSource5" DataTextField="DEST_STN" 
        DataValueField="DEST_STN">
        <asp:ListItem>--Select--</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <asp:Button ID="Button1" runat="server" Text="Search" onclick="Button1_Click" />
<asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [FARE]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT DISTINCT [SOURCE_STN] FROM [FARE]"></asp:SqlDataSource>
     <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT DISTINCT [DEST_STN] FROM [FARE]"></asp:SqlDataSource>
     <div class="grid" align="center">  
         <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
             AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
             BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
             DataSourceID="SqlDataSource3" DataKeyNames="ID">
             <Columns>
                 <asp:BoundField DataField="TRAIN_NO" HeaderText="TRAIN_NO" 
                     SortExpression="TRAIN_NO" />
                 <asp:BoundField DataField="TRAIN_NAME" HeaderText="TRAIN_NAME" 
                     SortExpression="TRAIN_NAME" />
                 <asp:BoundField DataField="SOURCE_STN" HeaderText="SOURCE_STN" 
                     SortExpression="SOURCE_STN" />
                 <asp:BoundField DataField="DEST_STN" HeaderText="DEST_STN" 
                     SortExpression="DEST_STN" />
                 <asp:BoundField DataField="SLEEPER" HeaderText="SLEEPER" 
                     SortExpression="SLEEPER" />
                 <asp:BoundField DataField="ACI" HeaderText="ACI" SortExpression="ACI" />
                 <asp:BoundField DataField="ACII" HeaderText="ACII" SortExpression="ACII" />
                 <asp:BoundField DataField="ACIII" HeaderText="ACIII" SortExpression="ACIII" />
             </Columns>
             <FooterStyle BackColor="White" ForeColor="#000066" />
             <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
             <RowStyle ForeColor="#000066" />
             <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F1F1F1" />
             <SortedAscendingHeaderStyle BackColor="#007DBB" />
             <SortedDescendingCellStyle BackColor="#CAC9C9" />
             <SortedDescendingHeaderStyle BackColor="#00547E" />
         </asp:GridView>   
     </div>
     </ContentTemplate>
</asp:UpdatePanel>

  </form>


    </div>
  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div align="center" style="font-family: Aharoni;">
    <asp:Label ID="Label1" runat="server"></asp:Label>
   </div>
</asp:Content>

