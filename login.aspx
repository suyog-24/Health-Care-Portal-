<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="login" %>

<asp:Content ID ="ContentPlaceHolder1" ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server">


<table><tr><td class="style26"></td><td>
      
    <table align="center" 
                    
              
        
          
        style="width:67%; background-color:#C0C0C0; top:10px; height: 164px; margin-left: 64px; font-weight: bold; color: #000066;">
        <tr>
            <td colspan="3" align="center">
                <h4>Doctor Login</h4>
            </td>
        </tr>
        <tr>
            <td class="style21">
                &nbsp;Username</td>
            <td class="style1">
                &nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="177px"></asp:TextBox></td>
            <td class="style29">
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style21">
                TYPE</td>
            <td class="style1">
                <asp:DropDownList ID="DropDownDesignation" runat="server" Style="position: static" AppendDataBoundItems="True" AutoPostBack="False" >
                    <asp:ListItem>Audiologist</asp:ListItem>
                    <asp:ListItem>Allergist</asp:ListItem>
                    <asp:ListItem>Cardiologist</asp:ListItem>
                    <asp:ListItem>Gynecologist</asp:ListItem>
                    <asp:ListItem>Dentist</asp:ListItem>
                    <asp:ListItem>Neurologist</asp:ListItem>
                </asp:DropDownList></td>
            </td>
            <td class="style29">
                &nbsp;</td>
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
       
    </table></td><td></td></tr></table>
    

    </form>


</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style1
        {
            width: 71px;
        }
        .style21
        {
            width: 100px;
        }
        .style23
        {
            width: 100px;
            height: 39px;
        }
        .style24
        {
            width: 71px;
            height: 39px;
        }
        .style26
        {
            width: 401px;
        }
        .style28
        {
            width: 150px;
            height: 39px;
        }
        .style29
        {
            width: 150px;
        }
        </style>
</asp:Content>


