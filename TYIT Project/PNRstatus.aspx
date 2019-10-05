<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PNRstatus.aspx.cs" Inherits="PNRstatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
<style>

input[type=text]
{
    padding:6px;
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

.log
{
    float:right;
    margin-right:50px;
}
#Button2
{
    padding:0;
}
</style>

 <div class="container">
 
     <form id="form1" runat="server">
     <div class="log">
<asp:Button ID="Button2" runat="server" Text="Logout" BackColor="White" ForeColor="Red" 
            onclick="Button2_Click" Visible="False" Font-Size="Large" 
            Font-Underline="True" /></div>
    <h3 style="font-family:Aharoni; text-align:center; color: DodgerBlue;"><b>
        <u style="font-size: x-large">PNR STATUS</u></b></h3><br />
    <label style="font-family: aharoni; color: Dodgerblue;">Enter PNR NO. </label>
   <asp:TextBox ID="TextBox1" runat="server" placeholder="PNR NO. "></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Get Details" 
         onclick="Button1_Click" />
     <br />
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
         ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
         SelectCommand="SELECT * FROM [Ticket_book]"></asp:SqlDataSource>
     <br />
     <asp:ListView ID="ListView1" runat="server" DataKeyNames="TICKET_NO" 
         DataSourceID="SqlDataSource1">
         <AlternatingItemTemplate>
             <span style="">TICKET_NO:
             <asp:Label ID="TICKET_NOLabel" runat="server" Text='<%# Eval("TICKET_NO") %>' />
             <br />
             PNR_NO:
             <asp:Label ID="PNR_NOLabel" runat="server" Text='<%# Eval("PNR_NO") %>' />
             <br />
             USERNAME:
             <asp:Label ID="USERNAMELabel" runat="server" Text='<%# Eval("USERNAME") %>' />
             <br />
             FULLNAME:
             <asp:Label ID="FULLNAMELabel" runat="server" Text='<%# Eval("FULLNAME") %>' />
             <br />
             TRAIN_NO:
             <asp:Label ID="TRAIN_NOLabel" runat="server" Text='<%# Eval("TRAIN_NO") %>' />
             <br />
             TRAIN_NAME:
             <asp:Label ID="TRAIN_NAMELabel" runat="server" 
                 Text='<%# Eval("TRAIN_NAME") %>' />
             <br />
             SOURCE_STN:
             <asp:Label ID="SOURCE_STNLabel" runat="server" 
                 Text='<%# Eval("SOURCE_STN") %>' />
             <br />
             DESTINATION_STN:
             <asp:Label ID="DESTINATION_STNLabel" runat="server" 
                 Text='<%# Eval("DESTINATION_STN") %>' />
             <br />
             ARRIVAL_DAY:
             <asp:Label ID="ARRIVAL_DAYLabel" runat="server" 
                 Text='<%# Eval("ARRIVAL_DAY") %>' />
             <br />
             ARRIVAL_TIME:
             <asp:Label ID="ARRIVAL_TIMELabel" runat="server" 
                 Text='<%# Eval("ARRIVAL_TIME") %>' />
             <br />
             DEPARTURE_DAY:
             <asp:Label ID="DEPARTURE_DAYLabel" runat="server" 
                 Text='<%# Eval("DEPARTURE_DAY") %>' />
             <br />
             DEPARTURE_TIME:
             <asp:Label ID="DEPARTURE_TIMELabel" runat="server" 
                 Text='<%# Eval("DEPARTURE_TIME") %>' />
             <br />
             JOURNEY_DATE:
             <asp:Label ID="JOURNEY_DATELabel" runat="server" 
                 Text='<%# Eval("JOURNEY_DATE") %>' />
             <br />
             CLASSTYPE:
             <asp:Label ID="CLASSTYPELabel" runat="server" Text='<%# Eval("CLASSTYPE") %>' />
             <br />
             NO_OF_PERSONS:
             <asp:Label ID="NO_OF_PERSONSLabel" runat="server" 
                 Text='<%# Eval("NO_OF_PERSONS") %>' />
             <br />
             TOTAL:
             <asp:Label ID="TOTALLabel" runat="server" Text='<%# Eval("TOTAL") %>' />
             <br />
             <br />
             </span>
         </AlternatingItemTemplate>
         <EditItemTemplate>
             <span style="">TICKET_NO:
             <asp:Label ID="TICKET_NOLabel1" runat="server" 
                 Text='<%# Eval("TICKET_NO") %>' />
             <br />
             PNR_NO:
             <asp:TextBox ID="PNR_NOTextBox" runat="server" Text='<%# Bind("PNR_NO") %>' />
             <br />
             USERNAME:
             <asp:TextBox ID="USERNAMETextBox" runat="server" 
                 Text='<%# Bind("USERNAME") %>' />
             <br />
             FULLNAME:
             <asp:TextBox ID="FULLNAMETextBox" runat="server" 
                 Text='<%# Bind("FULLNAME") %>' />
             <br />
             TRAIN_NO:
             <asp:TextBox ID="TRAIN_NOTextBox" runat="server" 
                 Text='<%# Bind("TRAIN_NO") %>' />
             <br />
             TRAIN_NAME:
             <asp:TextBox ID="TRAIN_NAMETextBox" runat="server" 
                 Text='<%# Bind("TRAIN_NAME") %>' />
             <br />
             SOURCE_STN:
             <asp:TextBox ID="SOURCE_STNTextBox" runat="server" 
                 Text='<%# Bind("SOURCE_STN") %>' />
             <br />
             DESTINATION_STN:
             <asp:TextBox ID="DESTINATION_STNTextBox" runat="server" 
                 Text='<%# Bind("DESTINATION_STN") %>' />
             <br />
             ARRIVAL_DAY:
             <asp:TextBox ID="ARRIVAL_DAYTextBox" runat="server" 
                 Text='<%# Bind("ARRIVAL_DAY") %>' />
             <br />
             ARRIVAL_TIME:
             <asp:TextBox ID="ARRIVAL_TIMETextBox" runat="server" 
                 Text='<%# Bind("ARRIVAL_TIME") %>' />
             <br />
             DEPARTURE_DAY:
             <asp:TextBox ID="DEPARTURE_DAYTextBox" runat="server" 
                 Text='<%# Bind("DEPARTURE_DAY") %>' />
             <br />
             DEPARTURE_TIME:
             <asp:TextBox ID="DEPARTURE_TIMETextBox" runat="server" 
                 Text='<%# Bind("DEPARTURE_TIME") %>' />
             <br />
             JOURNEY_DATE:
             <asp:TextBox ID="JOURNEY_DATETextBox" runat="server" 
                 Text='<%# Bind("JOURNEY_DATE") %>' />
             <br />
             CLASSTYPE:
             <asp:TextBox ID="CLASSTYPETextBox" runat="server" 
                 Text='<%# Bind("CLASSTYPE") %>' />
             <br />
             NO_OF_PERSONS:
             <asp:TextBox ID="NO_OF_PERSONSTextBox" runat="server" 
                 Text='<%# Bind("NO_OF_PERSONS") %>' />
             <br />
             TOTAL:
             <asp:TextBox ID="TOTALTextBox" runat="server" Text='<%# Bind("TOTAL") %>' />
             <br />
             <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                 Text="Update" />
             <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                 Text="Cancel" />
             <br />
             <br />
             </span>
         </EditItemTemplate>
         <EmptyDataTemplate>
             <span>No data was returned.</span>
         </EmptyDataTemplate>
         <InsertItemTemplate>
             <span style="">PNR_NO:
             <asp:TextBox ID="PNR_NOTextBox" runat="server" Text='<%# Bind("PNR_NO") %>' />
             <br />
             USERNAME:
             <asp:TextBox ID="USERNAMETextBox" runat="server" 
                 Text='<%# Bind("USERNAME") %>' />
             <br />
             FULLNAME:
             <asp:TextBox ID="FULLNAMETextBox" runat="server" 
                 Text='<%# Bind("FULLNAME") %>' />
             <br />
             TRAIN_NO:
             <asp:TextBox ID="TRAIN_NOTextBox" runat="server" 
                 Text='<%# Bind("TRAIN_NO") %>' />
             <br />
             TRAIN_NAME:
             <asp:TextBox ID="TRAIN_NAMETextBox" runat="server" 
                 Text='<%# Bind("TRAIN_NAME") %>' />
             <br />
             SOURCE_STN:
             <asp:TextBox ID="SOURCE_STNTextBox" runat="server" 
                 Text='<%# Bind("SOURCE_STN") %>' />
             <br />
             DESTINATION_STN:
             <asp:TextBox ID="DESTINATION_STNTextBox" runat="server" 
                 Text='<%# Bind("DESTINATION_STN") %>' />
             <br />
             ARRIVAL_DAY:
             <asp:TextBox ID="ARRIVAL_DAYTextBox" runat="server" 
                 Text='<%# Bind("ARRIVAL_DAY") %>' />
             <br />
             ARRIVAL_TIME:
             <asp:TextBox ID="ARRIVAL_TIMETextBox" runat="server" 
                 Text='<%# Bind("ARRIVAL_TIME") %>' />
             <br />
             DEPARTURE_DAY:
             <asp:TextBox ID="DEPARTURE_DAYTextBox" runat="server" 
                 Text='<%# Bind("DEPARTURE_DAY") %>' />
             <br />
             DEPARTURE_TIME:
             <asp:TextBox ID="DEPARTURE_TIMETextBox" runat="server" 
                 Text='<%# Bind("DEPARTURE_TIME") %>' />
             <br />
             JOURNEY_DATE:
             <asp:TextBox ID="JOURNEY_DATETextBox" runat="server" 
                 Text='<%# Bind("JOURNEY_DATE") %>' />
             <br />
             CLASSTYPE:
             <asp:TextBox ID="CLASSTYPETextBox" runat="server" 
                 Text='<%# Bind("CLASSTYPE") %>' />
             <br />
             NO_OF_PERSONS:
             <asp:TextBox ID="NO_OF_PERSONSTextBox" runat="server" 
                 Text='<%# Bind("NO_OF_PERSONS") %>' />
             <br />
             TOTAL:
             <asp:TextBox ID="TOTALTextBox" runat="server" Text='<%# Bind("TOTAL") %>' />
             <br />
             <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                 Text="Insert" />
             <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                 Text="Clear" />
             <br />
             <br />
             </span>
         </InsertItemTemplate>
         <ItemTemplate>
             <span style="">TICKET_NO:
             <asp:Label ID="TICKET_NOLabel" runat="server" Text='<%# Eval("TICKET_NO") %>' />
             <br />
             PNR_NO:
             <asp:Label ID="PNR_NOLabel" runat="server" Text='<%# Eval("PNR_NO") %>' />
             <br />
             USERNAME:
             <asp:Label ID="USERNAMELabel" runat="server" Text='<%# Eval("USERNAME") %>' />
             <br />
             FULLNAME:
             <asp:Label ID="FULLNAMELabel" runat="server" Text='<%# Eval("FULLNAME") %>' />
             <br />
             TRAIN_NO:
             <asp:Label ID="TRAIN_NOLabel" runat="server" Text='<%# Eval("TRAIN_NO") %>' />
             <br />
             TRAIN_NAME:
             <asp:Label ID="TRAIN_NAMELabel" runat="server" 
                 Text='<%# Eval("TRAIN_NAME") %>' />
             <br />
             SOURCE_STN:
             <asp:Label ID="SOURCE_STNLabel" runat="server" 
                 Text='<%# Eval("SOURCE_STN") %>' />
             <br />
             DESTINATION_STN:
             <asp:Label ID="DESTINATION_STNLabel" runat="server" 
                 Text='<%# Eval("DESTINATION_STN") %>' />
             <br />
             ARRIVAL_DAY:
             <asp:Label ID="ARRIVAL_DAYLabel" runat="server" 
                 Text='<%# Eval("ARRIVAL_DAY") %>' />
             <br />
             ARRIVAL_TIME:
             <asp:Label ID="ARRIVAL_TIMELabel" runat="server" 
                 Text='<%# Eval("ARRIVAL_TIME") %>' />
             <br />
             DEPARTURE_DAY:
             <asp:Label ID="DEPARTURE_DAYLabel" runat="server" 
                 Text='<%# Eval("DEPARTURE_DAY") %>' />
             <br />
             DEPARTURE_TIME:
             <asp:Label ID="DEPARTURE_TIMELabel" runat="server" 
                 Text='<%# Eval("DEPARTURE_TIME") %>' />
             <br />
             JOURNEY_DATE:
             <asp:Label ID="JOURNEY_DATELabel" runat="server" 
                 Text='<%# Eval("JOURNEY_DATE") %>' />
             <br />
             CLASSTYPE:
             <asp:Label ID="CLASSTYPELabel" runat="server" Text='<%# Eval("CLASSTYPE") %>' />
             <br />
             NO_OF_PERSONS:
             <asp:Label ID="NO_OF_PERSONSLabel" runat="server" 
                 Text='<%# Eval("NO_OF_PERSONS") %>' />
             <br />
             TOTAL:
             <asp:Label ID="TOTALLabel" runat="server" Text='<%# Eval("TOTAL") %>' />
             <br />
             <br />
             </span>
         </ItemTemplate>
         <LayoutTemplate>
             <div ID="itemPlaceholderContainer" runat="server" style="">
                 <span runat="server" id="itemPlaceholder" />
             </div>
             <div style="">
                 <asp:DataPager ID="DataPager1" runat="server">
                     <Fields>
                         <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                             ShowLastPageButton="True" />
                     </Fields>
                 </asp:DataPager>
             </div>
         </LayoutTemplate>
         <SelectedItemTemplate>
             <span style="">TICKET_NO:
             <asp:Label ID="TICKET_NOLabel" runat="server" Text='<%# Eval("TICKET_NO") %>' />
             <br />
             PNR_NO:
             <asp:Label ID="PNR_NOLabel" runat="server" Text='<%# Eval("PNR_NO") %>' />
             <br />
             USERNAME:
             <asp:Label ID="USERNAMELabel" runat="server" Text='<%# Eval("USERNAME") %>' />
             <br />
             FULLNAME:
             <asp:Label ID="FULLNAMELabel" runat="server" Text='<%# Eval("FULLNAME") %>' />
             <br />
             TRAIN_NO:
             <asp:Label ID="TRAIN_NOLabel" runat="server" Text='<%# Eval("TRAIN_NO") %>' />
             <br />
             TRAIN_NAME:
             <asp:Label ID="TRAIN_NAMELabel" runat="server" 
                 Text='<%# Eval("TRAIN_NAME") %>' />
             <br />
             SOURCE_STN:
             <asp:Label ID="SOURCE_STNLabel" runat="server" 
                 Text='<%# Eval("SOURCE_STN") %>' />
             <br />
             DESTINATION_STN:
             <asp:Label ID="DESTINATION_STNLabel" runat="server" 
                 Text='<%# Eval("DESTINATION_STN") %>' />
             <br />
             ARRIVAL_DAY:
             <asp:Label ID="ARRIVAL_DAYLabel" runat="server" 
                 Text='<%# Eval("ARRIVAL_DAY") %>' />
             <br />
             ARRIVAL_TIME:
             <asp:Label ID="ARRIVAL_TIMELabel" runat="server" 
                 Text='<%# Eval("ARRIVAL_TIME") %>' />
             <br />
             DEPARTURE_DAY:
             <asp:Label ID="DEPARTURE_DAYLabel" runat="server" 
                 Text='<%# Eval("DEPARTURE_DAY") %>' />
             <br />
             DEPARTURE_TIME:
             <asp:Label ID="DEPARTURE_TIMELabel" runat="server" 
                 Text='<%# Eval("DEPARTURE_TIME") %>' />
             <br />
             JOURNEY_DATE:
             <asp:Label ID="JOURNEY_DATELabel" runat="server" 
                 Text='<%# Eval("JOURNEY_DATE") %>' />
             <br />
             CLASSTYPE:
             <asp:Label ID="CLASSTYPELabel" runat="server" Text='<%# Eval("CLASSTYPE") %>' />
             <br />
             NO_OF_PERSONS:
             <asp:Label ID="NO_OF_PERSONSLabel" runat="server" 
                 Text='<%# Eval("NO_OF_PERSONS") %>' />
             <br />
             TOTAL:
             <asp:Label ID="TOTALLabel" runat="server" Text='<%# Eval("TOTAL") %>' />
             <br />
             <br />
             </span>
         </SelectedItemTemplate>
     </asp:ListView>
     </form>

    </div>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

