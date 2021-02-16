<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminDeleteFile.aspx.cs" Inherits="DeleteFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="fh5co-hero">
    <div class="fh5co-overlay"></div>
	    <div class="fh5co-cover" data-stellar-background-ratio="0.5" style="background-image: url(images/cover_bg_1.jpg); ">
		    <div class="desc">           
    
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CS %>" SelectCommand="SELECT * FROM [material] WHERE ([status] = @status)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="true" Name="status" Type="Boolean" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    
                <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="Red" BorderStyle="Solid" HorizontalAlign="Center" RepeatColumns="5" OnItemCommand="DataList1_ItemCommand" >
                    <ItemTemplate>
                        <table style="color:black;text-align:center">
                            <tr>
                                <td colspan="3" style="border:double">  
                                    <asp:Label ID="Label1" ForeColor="SlateBlue" Font-Size="28" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                </td>
                                
                            </tr>
                            <tr>
                                <td colspan="3" style="border:double">
                                    <asp:Image ID="Image1" Height="200px" Width="200px" runat="server" ImageUrl='<%# Eval("image") %>' />
                                </td>
                            </tr>
                            <tr>
                                
                                <td style="border:double" colspan="3">
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:LinkButton ID="LinkButton1" Font-Size="25" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="delete">Delete</asp:LinkButton>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>

                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>

                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>	
                    </ContentTemplate>	
                    </asp:UpdatePanel>		

                                  </div>
           
  </div>
</div>
</asp:Content>

