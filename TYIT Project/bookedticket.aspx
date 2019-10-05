<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bookedticket.aspx.cs" Inherits="bookedticket" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        .style1
        {
            width: 679px;
            height: 19px;
        }
        .style3
        {
            width: 190px;
        }
        .style4
        {
            width: 149px;
        }
  
        .style5
        {width: 679px;
            height: 19px;
        }
  
    </style>

</head>
<body>
    <form id="form1" runat="server">
          <table>
              <tr>
                  <td class="style1">

                  <font style="float:left;">
          <asp:Label ID="Label2" runat="server" class="label" Text="Ticket No."></asp:Label>
          &nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;
          <asp:Label ID="lblTicekt" class="label" runat="server"></asp:Label>
          </font>
                  </td>
                  <td class="style5">
          
         <font style="float:right;"><asp:Label ID="Label12" runat="server" class="label" Text="PNR No."></asp:Label> 
         &nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;
          <asp:Label ID="lblpnr" class="label" runat="server"></asp:Label></font>
                  </td>
              </tr>
          </table>
          <center><h2>HAPPY JOURNEY</h2></center>
          <table >
              <tr>
                  <td class="style4">
          <asp:Label ID="Label1" runat="server" class="label" Text="Full Name"></asp:Label>
                  </td>
                  <td class="style3">
          <asp:Label ID="lblname" class="label" runat="server"></asp:Label>
                  </td>
              </tr>
              <tr>
                  <td class="style4">
          <asp:Label ID="Label15" runat="server" class="label" Text="Train No."></asp:Label>
                  </td>
                  <td class="style3">
          <asp:Label ID="lblTrain" class="label" runat="server"></asp:Label>
                  </td>
              </tr>
              <tr>
                  <td class="style4">
                      <asp:Label ID="Label3" runat="server" class="label" Text="Train Name"></asp:Label>
                  </td>
                  <td class="style3">
          <asp:Label ID="lblTrName" class="label" runat="server"></asp:Label>
                  </td>
              </tr>
              <tr>
                  <td class="style4">
          <asp:Label ID="Label4" runat="server" class="label" Text="Source Station"></asp:Label>
                  </td>
                  <td class="style3">
          <asp:Label ID="lblsource" class="label" runat="server"></asp:Label>
                  </td>
              </tr>
              <tr>
                  <td class="style4">
          <asp:Label ID="Label5" runat="server" class="label" Text="Destination Station"></asp:Label>
                  </td>
                  <td class="style3">
          <asp:Label ID="lblDest" class="label" runat="server"></asp:Label>
                  </td>
              </tr>
              <tr>
                  <td class="style4">
                      <asp:Label ID="Label13" runat="server" class="label" Text="Arrival Day"></asp:Label>
                  </td>
                  <td class="style3">
          <asp:Label ID="lblAday" class="label" runat="server"></asp:Label>
                  </td>
              </tr>
              <tr>
                  <td class="style4">
          <asp:Label ID="Label6" runat="server" class="label" Text="Arrival Time"></asp:Label>
                  </td>
                  <td class="style3">
          <asp:Label ID="lblAtime" class="label" runat="server"></asp:Label>
                  </td>
              </tr>
              <tr>
                  <td class="style4">
                      <asp:Label ID="Label14" runat="server" class="label" Text="Departure Day"></asp:Label>
                  </td>
                  <td class="style3">
          <asp:Label ID="lbldday" class="label" runat="server"></asp:Label>
                  </td>
              </tr>
              <tr>
                  <td class="style4">
          <asp:Label ID="Label7" runat="server" class="label" Text="Departures Time"></asp:Label>
                  </td>
                  <td class="style3">
          <asp:Label ID="lblDeptime" class="label" runat="server"></asp:Label>
                  </td>
              </tr>
              <tr>
                  <td class="style4">
          <asp:Label ID="Label8" runat="server" class="label" Text="Journey Date"></asp:Label>
                  </td>
                  <td class="style3">
          <asp:Label ID="lblJourney" class="label" runat="server"></asp:Label>
                  </td>
              </tr>
              <tr>
                  <td class="style4">
          <asp:Label ID="Label9" runat="server" class="label" Text="No. Of Person"></asp:Label>
                  </td>
                  <td class="style3">
          <asp:Label ID="lblPerson" class="label" runat="server"></asp:Label>
                  </td>
              </tr>
              <tr>
                  <td class="style4">
          <asp:Label ID="Label10" runat="server" class="label" Text="Class Type"></asp:Label>
                  </td>
                  <td class="style3">
          <asp:Label ID="lblClass" class="label" runat="server"></asp:Label>
                  </td>
              </tr>
              <tr>
                  <td class="style4">
          <asp:Label ID="lblAtime0" class="label" runat="server">Total Fare</asp:Label>
                  </td>
                  <td class="style3">
          <asp:Label ID="lbltotal" class="label" runat="server"></asp:Label>
                  </td>
              </tr>
          </table>
          <br /><center>
          <asp:Button ID="Button1" runat="server" Text="Print Ticket" Height="33px" 
                  Width="111px" onclick="Button1_Click" />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Button ID="Button2" runat="server" Text="Cancel" Height="33px" 
                  Width="111px" onclick="Button2_Click" />
          </center>
          <br />
          <br />
          <br />
          <br />
          <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <asp:Label ID="Label11" runat="server" class="label" Text="Total Fare" 
              Visible="False"></asp:Label>
          <asp:Label ID="lblFare" class="label" runat="server" Visible="False"></asp:Label>
      </form>
</body>
</html>
