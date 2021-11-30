<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="contact" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID ="ContentPlaceHolder1" ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server">

<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>

    <table align="center" 
        
        
        style="border: thick groove #6600FF; width: 33%; background-color: #FFFFFF; color: #6600CC; font-weight: bold;">
        <tr>
            <td colspan="3" align="center">
               <h4 style="color: #3333FF">contact for Advice&nbsp;</h4>
            </td>
        </tr>
        <tr>
            <td class="style1">
                
                Name</td>
            <td class="style2">
                <asp:TextBox ID="TextBox2" runat="server" Height="27px" Width="207px"></asp:TextBox>
          
          <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="Custom" TargetControlID="TextBox2" ValidChars="abcdefghijklmn opqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ">
                </asp:FilteredTextBoxExtender>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  
                    ErrorMessage="#" ControlToValidate="TextBox2" ></asp:RequiredFieldValidator>
          </td>  <td class="style3">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style1">
                
                Doctor Type</td>
            <td class="style2">
                <asp:DropDownList ID="DropDownDesignation" runat="server" Style="position: static" AppendDataBoundItems="True" AutoPostBack="False" >
                    <asp:ListItem>Audiologist</asp:ListItem>
                    <asp:ListItem>Allergist</asp:ListItem>
                    <asp:ListItem>Cardiologist</asp:ListItem>
                    <asp:ListItem>Gynecologist</asp:ListItem>
                    <asp:ListItem>Dentist</asp:ListItem>
                    <asp:ListItem>Neurologist</asp:ListItem>
                </asp:DropDownList></td>  <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                
                Mobile No</td>
            <td class="style2">
                
                <asp:TextBox ID="TextBox1" MaxLength="10" runat="server"></asp:TextBox>
           
                <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" TargetControlID="TextBox1" runat="server" ValidChars='"abcdefghi jklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ"' FilterType="Numbers">
                </asp:FilteredTextBoxExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  
                    ErrorMessage="#" ControlToValidate="TextBox1" ></asp:RequiredFieldValidator>
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
            
            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" TargetControlID="TextBox3" runat="server" ValidChars="@.abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890">
            </asp:FilteredTextBoxExtender></td>
           <td class="style3"> 
               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="TextBox3" ErrorMessage="#" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            
               
            </td>
        </tr>
        <tr>
            <td class="style1">
                message</td>
            <td class="style2">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Height="94px" 
                    Width="202px"></asp:TextBox></td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <asp:Button ID="Button1" runat="server" Text="Send" 
                    style="color:#6600CC; font-weight: bold;border-style: none; border-color: inherit; border-width: medium;  width: 89px; height: 22px;background-color:gray" 
                    onclick="Button1_Click"/>
                <asp:ConfirmButtonExtender ID="ConfirmButtonExtender1" TargetControlID="Button1" runat="server" ConfirmText="Are You Sure">
                </asp:ConfirmButtonExtender>
                <asp:Button ID="Button2" runat="server" Text="Reset" 
                    style="color:#6600CC; font-weight: bold;border-style: none; border-color: inherit; border-width: medium;  width: 89px; height: 22px;background-color:gray"
                    Width="61px" onclick="Button2_Click"/>
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
