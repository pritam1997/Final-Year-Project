<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageTrains.aspx.cs" Inherits="ManageTrains" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style>
    .ad_container {
    border-radius: 5px;
    background-color:white;
    padding: 20px;
}
input[type=submit] {
    background-color: DodgerBlue;
    color: white;
    font-family:Aharoni;
    padding: 20px 30px;
    border: none;
    border-radius: 4px;   
}
.log
{
    float:right;
    margin-right:20px;
}
#Button1
{
    padding:0px;
        height: 24px;
    }
    </style>
</head>

<body>
<h2 class="header">Indian Railway Reservation</h2>
    <form id="form1" runat="server">
    
  <div class="menu">
  <ul>
    <li><a href="AddTrain1.aspx">Add Trains</a></li>
    <li><a href="ManageTrains.aspx">Manage Trains</a></li>
    <li><a href="AddFare1.aspx">Add Fare</a></li>
    <li><a href="Managefare.aspx">Manage Fare</a></li>
  </ul>
   </div>
  <div class="ad_container">
  <div class="log">
<asp:Button ID="Button1" runat="server" Text="Logout" BackColor="White" ForeColor="Red" 
            onclick="Button1_Click" Visible="False" Font-Size="Large" 
            Font-Underline="True" Width="84px"/></div>
  <h2 align="center"><u style="color: DodgerBlue; font-family: Aharoni">Manage Trains</u></h2>
      <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
          AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
          BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
          DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="Black" 
          GridLines="Vertical">
          <AlternatingRowStyle BackColor="#CCCCCC" />
          <Columns>
              <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                  ShowSelectButton="True" />
              <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                  ReadOnly="True" SortExpression="id" />
              <asp:BoundField DataField="train_no" HeaderText="train_no" 
                  SortExpression="train_no" />
              <asp:BoundField DataField="train_name" HeaderText="train_name" 
                  SortExpression="train_name" />
              <asp:BoundField DataField="source_stn" HeaderText="source_stn" 
                  SortExpression="source_stn" />
              <asp:BoundField DataField="dest_stn" HeaderText="dest_stn" 
                  SortExpression="dest_stn" />
              <asp:BoundField DataField="arrl_day" HeaderText="arrl_day" 
                  SortExpression="arrl_day" />
              <asp:BoundField DataField="arrl_time" HeaderText="arrl_time" 
                  SortExpression="arrl_time" />
              <asp:BoundField DataField="dep_day" HeaderText="dep_day" 
                  SortExpression="dep_day" />
              <asp:BoundField DataField="dep_time" HeaderText="dep_time" 
                  SortExpression="dep_time" />
              <asp:BoundField DataField="total_seat" HeaderText="total_seat" 
                  SortExpression="total_seat" />
              <asp:BoundField DataField="avail_seat" HeaderText="avail_seat" 
                  SortExpression="avail_seat" />
          </Columns>
          <FooterStyle BackColor="#CCCCCC" />
          <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
          <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
          <SortedAscendingCellStyle BackColor="#F1F1F1" />
          <SortedAscendingHeaderStyle BackColor="#808080" />
          <SortedDescendingCellStyle BackColor="#CAC9C9" />
          <SortedDescendingHeaderStyle BackColor="#383838" />
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
          ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
          DeleteCommand="DELETE FROM [Train] WHERE [id] = @id" 
          InsertCommand="INSERT INTO [Train] ([train_no], [train_name], [source_stn], [dest_stn], [arrl_day], [arrl_time], [dep_day], [dep_time], [total_seat], [avail_seat]) VALUES (@train_no, @train_name, @source_stn, @dest_stn, @arrl_day, @arrl_time, @dep_day, @dep_time, @total_seat, @avail_seat)" 
          SelectCommand="SELECT * FROM [Train]" 
          
          
          UpdateCommand="UPDATE [Train] SET [train_no] = @train_no, [train_name] = @train_name, [source_stn] = @source_stn, [dest_stn] = @dest_stn, [arrl_day] = @arrl_day, [arrl_time] = @arrl_time, [dep_day] = @dep_day, [dep_time] = @dep_time, [total_seat] = @total_seat, [avail_seat] = @avail_seat WHERE [id] = @id">
          <DeleteParameters>
              <asp:Parameter Name="id" Type="Int32" />
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="train_no" Type="Int32" />
              <asp:Parameter Name="train_name" Type="String" />
              <asp:Parameter Name="source_stn" Type="String" />
              <asp:Parameter Name="dest_stn" Type="String" />
              <asp:Parameter Name="arrl_day" Type="String" />
              <asp:Parameter DbType="Time" Name="arrl_time" />
              <asp:Parameter Name="dep_day" Type="String" />
              <asp:Parameter DbType="Time" Name="dep_time" />
              <asp:Parameter Name="total_seat" Type="Int32" />
              <asp:Parameter Name="avail_seat" Type="Int32" />
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="train_no" Type="Int32" />
              <asp:Parameter Name="train_name" Type="String" />
              <asp:Parameter Name="source_stn" Type="String" />
              <asp:Parameter Name="dest_stn" Type="String" />
              <asp:Parameter Name="arrl_day" Type="String" />
              <asp:Parameter DbType="Time" Name="arrl_time" />
              <asp:Parameter Name="dep_day" Type="String" />
              <asp:Parameter DbType="Time" Name="dep_time" />
              <asp:Parameter Name="total_seat" Type="Int32" />
              <asp:Parameter Name="avail_seat" Type="Int32" />
              <asp:Parameter Name="id" Type="Int32" />
          </UpdateParameters>
      </asp:SqlDataSource>
  </div>
    
    </form>
</body>
</html>
