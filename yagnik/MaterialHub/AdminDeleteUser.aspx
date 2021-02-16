<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminDeleteUser.aspx.cs" Inherits="AdminDeleteUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="fh5co-hero">
    <div class="fh5co-overlay"></div>
	    <div class="fh5co-cover" data-stellar-background-ratio="0.5" style="background-image: url(images/cover_bg_1.jpg);">
		    <div class="desc">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CS %>" SelectCommand="SELECT [Id] FROM [profile]"></asp:SqlDataSource>
                <center>
                    <h1>Delete User</h1>
                <table style="color:black;border:solid;border-color:red">

                    <tr style="color:black;border:solid;border-color:red">
                        <td>
                            Select User
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                        
                            <asp:Button ID="Button2" runat="server" Text="View" OnClick="Button2_Click"></asp:Button>
                        </td>

                    </tr>
                    <tr style="color:black;border:solid;border-color:red">
                        <td>
                            User Full Name 
                        </td>
                        <td>
                            <asp:TextBox ID="txtname" Enabled="false" CssClass="form-control" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr style="color:black;border:solid;border-color:red">
                        <td colspan="2" style="text-align:center">
                            <asp:Button ID="Button1" runat="server" Text="Delete" OnClick="Button1_Click"></asp:Button>
                        </td>
                    </tr>
                </table>
                    </center>
                </div>
            </div>
    </div>
</asp:Content>

