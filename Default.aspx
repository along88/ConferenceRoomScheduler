<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ConferenceRoomScheduler.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Select a Date:<asp:Calendar ID="Calendar" runat="server" SelectedDate="09/27/2016 09:33:55"></asp:Calendar>
        <br />
        <br />
        Requested Time:<br />
        <asp:DropDownList ID="TimeFrame" runat="server">
            <asp:ListItem Value="01:00">01:00 AM</asp:ListItem>
            <asp:ListItem Value="02:00">02:00 AM</asp:ListItem>
            <asp:ListItem Value="03:00">03:00 AM</asp:ListItem>
            <asp:ListItem Value="04:00">04:00 AM</asp:ListItem>
            <asp:ListItem Value="05:00">05:00 AM</asp:ListItem>
            <asp:ListItem Value="06:00">06:00 AM</asp:ListItem>
            <asp:ListItem Value="07:00">07:00 AM</asp:ListItem>
            <asp:ListItem Value="08:00">08:00 AM</asp:ListItem>
            <asp:ListItem Value="09:00">09:00 AM</asp:ListItem>
            <asp:ListItem Value="10:00">10:00 AM</asp:ListItem>
            <asp:ListItem Value="11:00">11:00 AM</asp:ListItem>
            <asp:ListItem Value="12:00">12:00 PM</asp:ListItem>
            <asp:ListItem Value="13:00">01:00 PM</asp:ListItem>
            <asp:ListItem Value="14:00">02:00 PM</asp:ListItem>
            <asp:ListItem Value="15:00">03:00 PM</asp:ListItem>
            <asp:ListItem Value="16:00">04:00 PM</asp:ListItem>
            <asp:ListItem Value="17:00">05:00 PM</asp:ListItem>
            <asp:ListItem Value="18:00">06:00 PM</asp:ListItem>
            <asp:ListItem Value="19:00">07:00 PM</asp:ListItem>
            <asp:ListItem Value="20:00">08:00 PM</asp:ListItem>
            <asp:ListItem Value="21:00">09:00 PM</asp:ListItem>
            <asp:ListItem Value="22:00">10:00 PM</asp:ListItem>
            <asp:ListItem Value="23:00">11:00 PM</asp:ListItem>
            <asp:ListItem Value="24:00">12:00 AM</asp:ListItem>
        </asp:DropDownList>
&nbsp;to
        <asp:DropDownList ID="TimeFrame2" runat="server" Font-Names="1:00 ,2:00,3:00,4:00,5:00,6:00,7:00,8:00,9:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00,18:00,19:00,20:00,21:00,22:00,23:00,24:00">
        </asp:DropDownList>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="Submit" />
        <br />
        <br />
        <asp:Label ID="Debug" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
