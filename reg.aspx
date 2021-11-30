<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reg.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="reg" %>
<asp:Content ID ="Content2" ContentPlaceHolderID ="ContentPlaceHolder2" runat ="server">

    <div align="center" 
    style="color: #0000FF; font-family: 'Arial Black'; width: 130px; height: 42px;">After Registration Please Contact us</div>
</asp:Content>

<asp:Content ID ="ContentPlaceHolder1" ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server">

    <script language="javascript" type="text/javascript" src="../datetimepicker.js"></script>
    <table  align="center" 
       style="border: thick groove #6600FF; height: 450px; width: 466px; background-color: #FFFFFF; margin-top: 0px;"
        frame="border" >
        <caption>
            <br />
            <asp:Label ID="LabLogin" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="X-Large"
                ForeColor="Green" Text=" Registration For Health Advice " Width="318px" 
                style="margin-top: 13px"></asp:Label>
            <br />
        </caption>
        <tr>
            <td class="style7">
                Patient Name</td>
            <td class="style8">
                <asp:TextBox ID="TextEmoloyeeName" runat="server" 
                    Style="position: static; margin-left: 0px;" Width="189px"></asp:TextBox></td>
            <td class="style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextEmoloyeeName"
                    ErrorMessage="*" Style="position: static"></asp:RequiredFieldValidator>
               </td>
        </tr>
        <tr>
            <td class="style3">
                Password</td>
            <td class="style1">
                <asp:TextBox ID="TextPassword" runat="server" Style="position: static" TextMode="Password"></asp:TextBox></td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextPassword"
                    ErrorMessage="*" Style="position: static"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="style3" >
                Conform Password</td>
            <td class="style1">
                <asp:TextBox ID="TextCPassword" runat="server" Style="position: static" TextMode="Password"></asp:TextBox>
                </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextCPassword"
                    ErrorMessage="*" Style="position: static"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextPassword"
                    ControlToValidate="TextCPassword" ErrorMessage="Password in correct" Style="position: static"
                    Width="144px"></asp:CompareValidator></td>
        </tr>
        <tr>
            <td align ="left" class="style3" >
                DOB</td>
         
            <td align ="left" class="style1">
                <asp:TextBox ID="TextDOJ" runat="server" Style="position: static"></asp:TextBox>
                
                <a href ="javascript:NewCal('<%=TextDOJ.ClientID %>','mmddyyyy')"><img src="images/cal.gif" style="position: static" /></a></td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextDOJ"
                    ErrorMessage="*" Style="position: static"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="style4">
                Doctor Type</td>
            <td class="style2">
                <asp:DropDownList ID="DropDownDesignation" runat="server" Style="position: static" AppendDataBoundItems="True" AutoPostBack="False" >
                    <asp:ListItem>Audiologist</asp:ListItem>
                    <asp:ListItem>Allergist</asp:ListItem>
                    <asp:ListItem>Cardiologist</asp:ListItem>
                    <asp:ListItem>Gynecologist</asp:ListItem>
                    <asp:ListItem>Dentist</asp:ListItem>
                    <asp:ListItem>Neurologist</asp:ListItem>
                </asp:DropDownList></td>
            <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownDesignation"
                    ErrorMessage="*" InitialValue="Select" Style="position: static"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="style3">
                Gender</td>
            <td class="style1">
                <asp:RadioButtonList ID="RadioButtonList2" runat="server" Height="21px" 
                        RepeatColumns="2" style="margin-left: 0px" Width="264px">
                        <asp:ListItem Selected="True">Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList><td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Contact No</td>
            <td class="style1">
                <asp:TextBox ID="TextYourRefernce" runat="server" Style="position: static"></asp:TextBox></td>
            <td class="style5">
            </td>
        </tr>
        <tr>
            <td class="style3">
                Email-Id</td>
            <td class="style1">
                <asp:TextBox ID="TextYourRefernce0" runat="server" Style="position: static" 
                    Width="220px"></asp:TextBox></td>
            <td class="style5">
            
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextYourRefernce0" ErrorMessage="invalid Email-Id" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            
        </tr>
        <tr>
            <td class="style3">
                Address</td>
            <td class="style1">
                <asp:TextBox ID="TextYourRefernce1" runat="server" Style="position: static" 
                    Height="47px" TextMode="MultiLine" Width="185px"></asp:TextBox></td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
            </td>
            <td class="style1" colspan="2">
                &nbsp; &nbsp; &nbsp;
                <asp:Button ID="Butsubmit" runat="server" Style="position: static" 
                    Text="submit" onclick="Butsubmit_Click"  />
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style1
        {
        }
        .style2
        {
            height: 21px;
            width: 220px;
        }
        .style3
        {
            width: 130px;
        }
        .style4
        {
            height: 21px;
            width: 130px;
        }
    .style5
    {
        width: 100px;
    }
    .style6
    {
        height: 21px;
        width: 100px;
    }
    .style7
    {
        width: 130px;
        height: 55px;
    }
    .style8
    {
        height: 55px;
    }
    .style9
    {
        width: 100px;
        height: 55px;
    }
    </style>
</asp:Content>




