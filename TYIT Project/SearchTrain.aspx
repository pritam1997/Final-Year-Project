<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchTrain.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    <style>
label
{
    padding:12px;
    box-border:;
    border-radius:5px;
    align:center;
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
#Button2
{
    padding:0;
}
input[type=submit]:hover
{
    background-color:White;
    color:Dodgerblue;
}
.container
{
    padding-top:20px;
    margin-top:0;
}
.grid
{
    align:center;
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
        <u style="font-size: x-large">Search Trains</u></b></h3>
    
 <br />
    <label style="font-family: aharoni; color: Dodgerblue;">Source Station :</label>
    <asp:DropDownList ID="DropDownList1" class="dropdown" runat="server" 
         DataSourceID="SqlDataSource1" DataTextField="source_stn" 
         DataValueField="source_stn">
        <asp:ListItem>Source</asp:ListItem>
    </asp:DropDownList>
    <label style="font-family: aharoni; color: Dodgerblue;">Destination  Station :</label>
    <asp:DropDownList ID="DropDownList2" class="dropdown" runat="server" 
         DataSourceID="SqlDataSource3" DataTextField="dest_stn" 
         DataValueField="dest_stn">
        <asp:ListItem>Destination</asp:ListItem>
    </asp:DropDownList>
    <asp:Button ID="Button1" runat="server" Text="Search" onclick="Button1_Click" />
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
         ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
         SelectCommand="SELECT * FROM [Train]"></asp:SqlDataSource>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
         ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
         SelectCommand="SELECT DISTINCT [source_stn] FROM [Train]"></asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT DISTINCT [dest_stn] FROM [Train]"></asp:SqlDataSource>
         <br />
         <div class="grid">
     <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                 DataSourceID="SqlDataSource2" DataKeyNames="id">
         <Columns>
             <asp:BoundField DataField="train_no" HeaderText="Train no." 
                 SortExpression="train_no" />
             <asp:BoundField DataField="train_name" HeaderText="Train Name" 
                 SortExpression="train_name" />
             <asp:BoundField DataField="source_stn" HeaderText="Source Station" 
                 SortExpression="source_stn" />
             <asp:BoundField DataField="dest_stn" HeaderText="Destination Station" 
                 SortExpression="dest_stn" />
             <asp:BoundField DataField="arrl_day" HeaderText="Arrival Day" 
                 SortExpression="arrl_day" />
             <asp:BoundField DataField="arrl_time" HeaderText="Arrival Time" 
                 SortExpression="arrl_time" />
             <asp:BoundField DataField="dep_day" HeaderText="Departure Day" 
                 SortExpression="dep_day" />
             <asp:BoundField DataField="dep_time" HeaderText="Departure Day" 
                 SortExpression="dep_time" />
             <asp:BoundField DataField="avail_seat" HeaderText="Available Seats" 
                 SortExpression="avail_seat" />
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
&nbsp
    <div align="center" style="font-family: Aharoni;">

    <asp:Label ID="Label1" runat="server"></asp:Label>
   </div>

</asp:Content>
