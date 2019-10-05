<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PrintTicket.aspx.cs" Inherits="PrintTicket" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Ticket No."></asp:Label>
    &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Print" onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Done" onclick="Button2_Click" />
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
            Font-Size="8pt" Height="477px" InteractiveDeviceInfos="(Collection)" 
            WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="852px">
            <LocalReport ReportPath="Report.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="DataSet1" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
            DeleteMethod="Delete" InsertMethod="Insert" 
            OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
            TypeName="DataSet1TableAdapters.Ticket_bookTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_TICKET_NO" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PNR_NO" Type="Int32" />
                <asp:Parameter Name="USERNAME" Type="String" />
                <asp:Parameter Name="FULLNAME" Type="String" />
                <asp:Parameter Name="TRAIN_NO" Type="Int32" />
                <asp:Parameter Name="TRAIN_NAME" Type="String" />
                <asp:Parameter Name="SOURCE_STN" Type="String" />
                <asp:Parameter Name="DESTINATION_STN" Type="String" />
                <asp:Parameter Name="ARRIVAL_DAY" Type="String" />
                <asp:Parameter DbType="Time" Name="ARRIVAL_TIME" />
                <asp:Parameter Name="DEPARTURE_DAY" Type="String" />
                <asp:Parameter DbType="Time" Name="DEPARTURE_TIME" />
                <asp:Parameter Name="JOURNEY_DATE" Type="DateTime" />
                <asp:Parameter Name="CLASSTYPE" Type="String" />
                <asp:Parameter Name="NO_OF_PERSONS" Type="Int32" />
                <asp:Parameter Name="TOTAL" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" DefaultValue="1" Name="TNO" 
                    PropertyName="Text" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="PNR_NO" Type="Int32" />
                <asp:Parameter Name="USERNAME" Type="String" />
                <asp:Parameter Name="FULLNAME" Type="String" />
                <asp:Parameter Name="TRAIN_NO" Type="Int32" />
                <asp:Parameter Name="TRAIN_NAME" Type="String" />
                <asp:Parameter Name="SOURCE_STN" Type="String" />
                <asp:Parameter Name="DESTINATION_STN" Type="String" />
                <asp:Parameter Name="ARRIVAL_DAY" Type="String" />
                <asp:Parameter DbType="Time" Name="ARRIVAL_TIME" />
                <asp:Parameter Name="DEPARTURE_DAY" Type="String" />
                <asp:Parameter DbType="Time" Name="DEPARTURE_TIME" />
                <asp:Parameter Name="JOURNEY_DATE" Type="DateTime" />
                <asp:Parameter Name="CLASSTYPE" Type="String" />
                <asp:Parameter Name="NO_OF_PERSONS" Type="Int32" />
                <asp:Parameter Name="TOTAL" Type="Int32" />
                <asp:Parameter Name="Original_TICKET_NO" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            SelectMethod="GetData" TypeName="DataSet1TableAdapters.Ticket_bookTableAdapter">
        </asp:ObjectDataSource>
        <br />
    </div>
    </form>
</body>
</html>
