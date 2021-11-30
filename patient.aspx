<%@ Page Language="C#" AutoEventWireup="true" CodeFile="patient.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="patient" %>

<asp:Content ID ="ContentPlaceHolder1" ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server">
<div align="right">

<asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" 
        Font-Size="Large" ForeColor="#003366"></asp:Label>
        <br />
    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/images/logout.jpeg" onclick="ImageButton1_Click" />

        </div>
    
         <table align="center" 
        
        
        style="border: thick groove #6600FF; width: 33%; background-color: #FFFFFF; color: #6600CC; font-weight: bold;">
        <tr>
            <td colspan="3" align="center">
               <h4 style="color: #3333FF">
                   +Doctor&nbsp; Advice+<br />
                </h4>
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
                
                Doctor</td>
            <td class="style2">
                
                <asp:TextBox ID="TextBox6" MaxLength="10" runat="server"></asp:TextBox>
           
                </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                
                Type</td>
            <td class="style2">
               
                <asp:TextBox ID="TextBox8" MaxLength="10" runat="server"></asp:TextBox>
           
                </td>
            
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
                <asp:Button ID="Button1" runat="server" Text="Print" 
                    
                    
                    style="color:#6600CC; font-weight: bold;border-style: none; border-color: inherit; border-width: medium;  width: 89px; height: 22px;background-color:gray" onclick="Button1_Click" 
                  />
                

                </td>
        </tr>
        <tr>
            <td colspan="3" align="center" class="style4">
                
                <br />
                PLEASE CONSULT WITH DOCTOR FOR MAJOR PROBLEM
                <br />
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