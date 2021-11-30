<%@ Page Language="C#" AutoEventWireup="true" CodeFile="replay.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="replay" %>

<asp:Content ID ="ContentPlaceHolder1" ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server">
<div align="left">
    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/images/logout.jpeg" onclick="ImageButton1_Click" /></div>
    <table align="center" 
        
        
        style="border: thick groove #6600FF; width: 33%; background-color: #FFFFFF; color: #6600CC; font-weight: bold;">
        <tr>
            <td colspan="3" align="center">
               <h4 style="color: #3333FF">
                   +Doctor&nbsp;+</h4>
                <p style="color: #3333FF"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                <br />
                </p>
            </td>
        </tr>
        <tr>
            <td class="style1">
                
                Name</td>
            <td class="style2">
                <asp:TextBox ID="TextBox2" runat="server" Height="27px" Width="207px"></asp:TextBox>
          
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  
                    ErrorMessage="#" ControlToValidate="TextBox2" ></asp:RequiredFieldValidator>
          </td>  <td class="style3">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style1">
                
                contact No</td>
            <td class="style2">
                
                <asp:TextBox ID="TextBox6" MaxLength="10" runat="server"></asp:TextBox>
           
                </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                
                E-Mail</td>
            <td class="style2">
               
                <asp:TextBox ID="TextBox3" runat="server" Height="28px" Width="243px" 
                    ToolTip=" eg.abc@gmail.com"></asp:TextBox></td>
            
           <td class="style3"> 
               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="TextBox3" ErrorMessage="#" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            
               
            </td>
        </tr>
        <tr>
            <td class="style1">
                
                Problem</td>
            <td class="style2">
               
                <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine" Height="94px" 
                    Width="202px"></asp:TextBox></td>
            
           <td class="style3"> 
               &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Advice</td>
            <td class="style2">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Height="94px" 
                    Width="202px"></asp:TextBox></td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <asp:Button ID="Button1" runat="server" Text="Send" 
                    
                    style="color:#6600CC; font-weight: bold;border-style: none; border-color: inherit; border-width: medium;  width: 89px; height: 22px;background-color:gray" onclick="Button1_Click" 
                  />
                <asp:Button ID="Button2" runat="server" Text="Reset" 
                    style="color:#6600CC; font-weight: bold;border-style: none; border-color: inherit; border-width: medium;  width: 89px; height: 22px;background-color:gray"
                    Width="61px" onclick="Button2_Click" />
                </td>
        </tr>
        <tr>
            <td colspan="3" align="center" class="style4">
                <asp:Literal ID="Literal2" runat="server"></asp:Literal>
            </td>
        </tr>
    </table>

    </form>

   
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        #Text1
        {
            width: 208px;
        }
        #Text2
        {
            width: 255px;
        }
        #TextArea1
        {
            width: 263px;
            height: 108px;
        }
        .style1
        {
            width: 80px;
        }
        .style2
        {
            width: 264px;
        }
        .style3
        {
            width: 8px;
        }
        .style4
        {
            height: 26px;
        }
    </style>


</asp:Content>