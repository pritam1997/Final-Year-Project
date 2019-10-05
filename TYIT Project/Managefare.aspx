<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Managefare.aspx.cs" Inherits="Managefare" %>

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

    <form id="form1" runat="server">

  
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
    <div class="log">
<asp:Button ID="Button1" runat="server" Text="Logout" BackColor="White" ForeColor="Red" 
            onclick="Button1_Click" Visible="False" Font-Size="Large" 
            Font-Underline="True" Width="84px" /></div>
  <h2 align="center"><u style="color: DodgerBlue; font-family: Aharoni">Manage Fare</u></h2>
      <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
          AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" 
          BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
          CellSpacing="2" DataKeyNames="ID" DataSourceID="SqlDataSource1" 
          ForeColor="Black">
          <Columns>
              <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                  ShowSelectButton="True" />
              <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                  ReadOnly="True" SortExpression="ID" />
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
          <FooterStyle BackColor="#CCCCCC" />
          <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
          <RowStyle BackColor="White" />
          <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
          <SortedAscendingCellStyle BackColor="#F1F1F1" />
          <SortedAscendingHeaderStyle BackColor="#808080" />
          <SortedDescendingCellStyle BackColor="#CAC9C9" />
          <SortedDescendingHeaderStyle BackColor="#383838" />
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
          ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
          DeleteCommand="DELETE FROM [FARE] WHERE [ID] = @ID" 
          InsertCommand="INSERT INTO [FARE] ([TRAIN_NO], [TRAIN_NAME], [SOURCE_STN], [DEST_STN], [SLEEPER], [ACI], [ACII], [ACIII]) VALUES (@TRAIN_NO, @TRAIN_NAME, @SOURCE_STN, @DEST_STN, @SLEEPER, @ACI, @ACII, @ACIII)" 
          SelectCommand="SELECT * FROM [FARE]" 
          
          UpdateCommand="UPDATE [FARE] SET [TRAIN_NO] = @TRAIN_NO, [TRAIN_NAME] = @TRAIN_NAME, [SOURCE_STN] = @SOURCE_STN, [DEST_STN] = @DEST_STN, [SLEEPER] = @SLEEPER, [ACI] = @ACI, [ACII] = @ACII, [ACIII] = @ACIII WHERE [ID] = @ID">
          <DeleteParameters>
              <asp:Parameter Name="ID" Type="Int32" />
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="TRAIN_NO" Type="Int32" />
              <asp:Parameter Name="TRAIN_NAME" Type="String" />
              <asp:Parameter Name="SOURCE_STN" Type="String" />
              <asp:Parameter Name="DEST_STN" Type="String" />
              <asp:Parameter Name="SLEEPER" Type="Int32" />
              <asp:Parameter Name="ACI" Type="Int32" />
              <asp:Parameter Name="ACII" Type="Int32" />
              <asp:Parameter Name="ACIII" Type="Int32" />
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="TRAIN_NO" Type="Int32" />
              <asp:Parameter Name="TRAIN_NAME" Type="String" />
              <asp:Parameter Name="SOURCE_STN" Type="String" />
              <asp:Parameter Name="DEST_STN" Type="String" />
              <asp:Parameter Name="SLEEPER" Type="Int32" />
              <asp:Parameter Name="ACI" Type="Int32" />
              <asp:Parameter Name="ACII" Type="Int32" />
              <asp:Parameter Name="ACIII" Type="Int32" />
              <asp:Parameter Name="ID" Type="Int32" />
          </UpdateParameters>
      </asp:SqlDataSource>
  </div>
    </form>
</body>
</html>
