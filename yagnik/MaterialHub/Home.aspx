<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CS %>" SelectCommand="SELECT * FROM [material] WHERE (([status] = @status) AND ([category] = @category))">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="true" Name="status" Type="Boolean" />
                        <asp:QueryStringParameter Name="category" QueryStringField="id" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                
                    
                <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="Red" BorderStyle="Solid" HorizontalAlign="Center" RepeatColumns="3" OnItemCommand="DataList1_ItemCommand">
                    <ItemTemplate>
                        <table style="color:black;text-align:center">
                            <tr>
                                <td colspan="3" style="border-right:double">  
                                    <asp:Label ID="Label1" ForeColor="SlateBlue" Font-Size="28" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                </td>
                                
                            </tr>
                            <tr>
                                <td colspan="3" style="border-right:double">
                                    <asp:Image ID="Image1" Height="200px" Width="200px" runat="server" ImageUrl='<%# Eval("image") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="border-right:double">
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    Total Download : &nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label2" runat="server" Text='<%# Eval("download") %>'></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                                <td></td>
                                <td style="border-right:double">
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="download">Download</asp:LinkButton>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>	
                    

</asp:Content>

