<%@ Page Language="C#" AutoEventWireup="true" CodeFile="doctor.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="doctor" %>
<asp:Content ID ="Content2" ContentPlaceHolderID ="ContentPlaceHolder2" runat ="server">
</asp:Content>
<asp:Content ID ="ContentPlaceHolder1" ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server">
<div align="center">

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1" style="margin-left: 0px" BackColor="#9966FF" 
        BorderColor="Blue" BorderWidth="4px" Font-Bold="True" Font-Size="Medium" 
        ForeColor="White" Width="494px">
    <Columns>
        <asp:BoundField DataField="docname" HeaderText="DOCTOR NAME" 
            SortExpression="docname" />
        <asp:BoundField DataField="type" HeaderText="SPECIALIST" SortExpression="type" />
        <asp:BoundField DataField="mob" HeaderText="MOBILE NUMBER" SortExpression="mob" />
    </Columns>
    <EditRowStyle Font-Bold="True" Font-Size="Larger" ForeColor="White" />
    <HeaderStyle BackColor="Fuchsia" ForeColor="#6600FF" />
</asp:GridView>
 <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:medicalConnectionString %>" 
    SelectCommand="SELECT [docname], [type], [mob] FROM [doc]">
</asp:SqlDataSource>
</div>
 </asp:Content>
