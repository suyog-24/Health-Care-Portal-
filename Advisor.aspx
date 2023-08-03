<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Advisor.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="Advisor" %>

    <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#CC33FF" Font-Bold="True" BorderStyle="Groove" Font-Size="Larger"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Label" ForeColor="#CC33FF" BorderStyle="Groove"></asp:Label><br /><asp:Button ID="Button1" runat="server" Text="Information" onclick="Button1_Click" BackColor="#FFFFCC" BorderColor="#6600FF" />

 

    

    <asp:GridView ID="gdImage" runat="server"  onrowdeleting="ReplyMessage" 
  
                AllowPaging="True" GridLines="None"  AutoGenerateColumns="False" Height="258px" 
                 PageIndex="10" 
                Width="1200px" CellPadding="4" ForeColor="#333333" >

                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                
                     <asp:BoundField DataField="cname" HeaderText="NAME" />
                    <asp:BoundField DataField="doctype" HeaderText="TYPE" />
                    <asp:BoundField DataField="mb" HeaderText="MOBILE" />
                    <asp:BoundField DataField="email" HeaderText="EMAILID" />
                  <%-- <asp:BoundField DataField="imgurl" HeaderText="imgurl" />--%>
                   <asp:BoundField DataField="msg" HeaderText="MESSAGE" />
                      
                                       
                    
 
                      <asp:TemplateField>
    <ItemTemplate>
    
        <asp:Button ID="Btn_Del" runat="server" Text="Replay" CommandName="delete" />
    </ItemTemplate>
    </asp:TemplateField>
               
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

            </asp:GridView>





</asp:Content>
