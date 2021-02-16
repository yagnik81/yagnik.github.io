<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Request.aspx.cs" Inherits="Request" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>           
     <table style="color:black">
                    <tr>
                        <td colspan="2">
                            <h1>Send Your Feedback/Request To Admin</h1>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Your Name
                        </td>
                        <td>
                            <asp:TextBox ID="txtname" CssClass="form-control" runat="server" Enabled="false"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Your Email
                        </td>
                        <td>
                            <asp:TextBox ID="txtemail" CssClass="form-control" runat="server" Enabled="false"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Subject
                        </td>
                        <td>
                            <asp:TextBox ID="txtsubject" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtsubject" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Your Message
                        </td>
                        <td>
                            <asp:TextBox ID="txtmsg" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtmsg" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align:center">
                            <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" />
                        </td>
                    </tr>
                </table>
                </center>
              
</asp:Content>

