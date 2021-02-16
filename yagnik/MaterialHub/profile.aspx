<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      
    
                <center>

                    <asp:Panel ID="Panel1" runat="server" Visible="false">
                        <h1 style="color:cadetblue">Your Acount  Is Delete Sucessfully Go To <a href="Login.aspx">Login </a> </h1>
                    </asp:Panel>
                    <asp:Panel ID="Panel2" runat="server" Visible="true">
                    <h1 style="color:red">Update Your Profile Details </h1>
                    <table  style="color:yellow; border:outset;border-color:green" >
                        <tr>
                            <td>
                                Your Name
                            </td>
                            <td>
                                <asp:TextBox ID="txtname" Enabled="false" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Your Email
                            </td>
                            <td>
                                <asp:TextBox ID="txtemail" Enabled="false" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Your Password
                            </td>
                            <td>
                                <asp:TextBox ID="txtpass" Enabled="false" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Your Security Question
                            </td>
                            <td>
                                
                            <asp:DropDownList ID="ddQue"  Enabled="false" CssClass="form-control" runat="server">
                                <asp:ListItem>What Is Your Nick Name ?</asp:ListItem>
                                <asp:ListItem>Who Is Your Best Friend ?</asp:ListItem>
                                <asp:ListItem>When Your father Born ?</asp:ListItem>
                                <asp:ListItem>Where Are You Born ?</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Your Security Answer
                            </td>
                            <td>
                                <asp:TextBox ID="txtans" Enabled="false" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="btnEdit" runat="server" CssClass="bg-primary" Text="Update" OnClick="btnEdit_Click"></asp:Button>
                                <asp:Button ID="btnUpdate" runat="server" CssClass="bg-primary" Visible="false" Text="Save" OnClick="btnUpdate_Click" UseSubmitBehavior="False"></asp:Button>
                            </td>
                            <td>
                                <asp:Button ID="btnCancel" runat="server" Visible="false" CssClass="bg-primary" Text="Cancel" OnClick="btnCancel_Click"></asp:Button>
                            </td>
                        </tr>
                    </table>
                    <br /><br />
                    <table style="border:solid;border-color:mediumslateblue;color:red">
                        <tr style="border:solid;border-color:mediumslateblue;"">
                            <td colspan="2">
                                Deactivate Your Account
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr  style="border:solid;border-color:mediumslateblue;">
                            <td colspan="2">
                                <asp:Button ID="btnDelete" CssClass="btn-block" runat="server" Text="Deactivate" OnClick="btnDelete_Click"></asp:Button>
                            </td>
                            
                        </tr>
                    </table>
                        </asp:Panel>
                </center>
    
</asp:Content>

