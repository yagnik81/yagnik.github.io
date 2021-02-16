<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminUploadFile.aspx.cs" Inherits="AdminUploadFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="fh5co-hero">
    <div class="fh5co-overlay"></div>
	    <div class="fh5co-cover" data-stellar-background-ratio="0.5" style="background-image: url(images/cover_bg_1.jpg);">
		    <div class="desc">
					    
                <center>
                <table style="color:blue;font-size:18px;">
                    <h1 style="color:red">Upload New Document</h1>
                    <tr>
                        <td colspan="2" style="text-align:center">
                            <asp:Label ID="lblmsg" ForeColor="Yellow" Font-Size="25" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Enter Document Name
                        </td>
                        <td>
                            <asp:TextBox ID="txtname"  runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" CssClass="form-input" Text="Enter Document Category"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1"  runat="server">
                                
                                <asp:ListItem>General Knowledge</asp:ListItem>
                                <asp:ListItem>Police Constable</asp:ListItem>
                                <asp:ListItem>Talati</asp:ListItem>
                                <asp:ListItem>Junior Clerk</asp:ListItem>
                                <asp:ListItem>Forest Gaurd</asp:ListItem>
                                <asp:ListItem>Nayab Chitnish</asp:ListItem>
                                <asp:ListItem>Curent Affairs</asp:ListItem>

                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Upload File 
                        </td>
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Upload One Screen Shot 
                        </td>
                        <td>
                            <asp:FileUpload ID="FileUpload2" runat="server"></asp:FileUpload>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" ></asp:Button>
                        </td>
                        <td>
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click"></asp:Button>
                        </td>
                    </tr>
                    
                </table>
                    </center>
                </div>
            </div>
    </div>
    
</asp:Content>

