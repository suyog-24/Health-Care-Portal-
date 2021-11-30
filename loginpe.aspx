<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginpe.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="loginpe" %>

<asp:Content ID ="ContentPlaceHolder1" ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server">


<table align="center" 
                    
              
        
          
        
        style="width:33%; background-color:#C0C0C0; top:10px; height: 179px; margin-left: 64px; font-weight: bold; color: #000066;">
        <tr>
            <td colspan="3" align="center">
                <h4>Patient Login</h4>
            </td>
        </tr>
        <tr>
            <td class="style21">
                &nbsp;
                Username</td>
            <td class="style1">
                &nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="229px"></asp:TextBox></td>
            <td class="style29">
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style23">
                &nbsp;
                Password</td>
            <td class="style24">
               
                <asp:TextBox ID="TextBox2"  runat="server" TextMode="Password" Width="150px"></asp:TextBox></td>
            <td class="style28">
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <asp:Button ID="Button1" runat="server" Text="Login" 
                    style=" color:Orange; border-style: none; border-color: inherit; border-width: medium; background-image:url('images/hot_heading_button.jpg'); background-repeat:no-repeat; width: 89px; height: 22px;" 
                    onclick="Button1_Click" />&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Clear" 
                    style="color:Orange;border-style: none; border-color: inherit; border-width: medium; background-image:url('images/hot_heading_button.jpg'); background-repeat:no-repeat; width: 89px; height: 22px;" 
                    onclick="Button2_Click" />
                <%--<input id="Button1" type="button" value="Login"
                    style=" color:Orange; border-style: none; border-color: inherit; border-width: medium; background-image:url('images/hot_heading_button.jpg'); background-repeat:no-repeat; width: 89px; height: 22px;"/>
                <input id="Button2" type="button" value="Clear" 
                    style="color:Orange;border-style: none; border-color: inherit; border-width: medium; background-image:url('images/hot_heading_button.jpg'); background-repeat:no-repeat; width: 89px; height: 22px;"/></td>--%>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </td>
        </tr>
       
    </table>

</asp:Content>