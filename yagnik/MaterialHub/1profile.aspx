<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="1profile.aspx.cs" Inherits="profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<div class="fh5co-hero">
	<div class="fh5co-overlay">
	
		<div class="desc">
            <center><h1 style="font-family:'Comic Sans MS';color:white; font-size:58px ; align-content:center;">Your Profile</h1>        </center>
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">

                    <div class="container">
				
					<div class="col-lg-5 col-lg-5">
                        
                        <div class="input-field">
							<label for="from">Name : </label>
                            <asp:TextBox ID="TextBox1" CssClass="form-control" Enabled="false" runat="server"></asp:TextBox>
							
						</div>
                        <div class="input-field">
							<label for="from">Email : </label>
                            <asp:TextBox ID="TextBox2" CssClass="form-control" Enabled="false" runat="server"></asp:TextBox>
							
						</div>
                        <div class="input-field">
							<label for="from">Password : </label>
                            <asp:TextBox ID="TextBox3" CssClass="form-control" Enabled="false" runat="server"></asp:TextBox>
							
						</div>
                        
                        <div class="input-field">
							<label for="from">Security Question : </label>

                            <asp:DropDownList ID="DropDownList1" Enabled="false" CssClass="form-control" runat="server">
                                <asp:ListItem>What Is Your Nick Name ?</asp:ListItem>
                                <asp:ListItem>Who Is Your Best Friend ?</asp:ListItem>
                                <asp:ListItem>When Your father Born ?</asp:ListItem>
                                <asp:ListItem>Where Are You Born ?</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            
							
						</div>
                        
                        <div class="input-field">
							<label for="from">Security Answer : </label>
                            <asp:TextBox ID="TextBox4" CssClass="form-control" Enabled="false" runat="server"></asp:TextBox>
							
						</div>
                        <br />
                        <div class="col-xs-12" runat="server" id="div3">
						    <asp:Button ID="btnEdit" CssClass="btn btn-primary btn-block" runat="server" Text="Edit Details" OnClick="btnEdit_Click" />
                            
					    </div>
                </div>
            
           </div>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <div class="container">
				
					<div class="col-lg-5 col-lg-5">
                        
                        <div class="input-field">
							<label for="from">Name : </label>
                            <asp:TextBox ID="txtname" CssClass="form-control" Enabled="True" runat="server"></asp:TextBox>
							
						</div>
                        <div class="input-field">
							<label for="from">Email : </label>
                            <asp:TextBox ID="txtemail" CssClass="form-control" Enabled="True" runat="server"></asp:TextBox>
							
						</div>
                        <div class="input-field">
							<label for="from">Password : </label>
                            <asp:TextBox ID="txtpass" CssClass="form-control"  runat="server"></asp:TextBox>
							
						</div>
                        
                        <div class="input-field">
							<label for="from">Security Question : </label>

                            <asp:DropDownList ID="txtque"  CssClass="form-control" runat="server">
                                <asp:ListItem>Select Your Question ..</asp:ListItem>
                                <asp:ListItem>What Is Your Nick Name ?</asp:ListItem>
                                <asp:ListItem>Who Is Your Best Friend ?</asp:ListItem>
                                <asp:ListItem>When Your father Born ?</asp:ListItem>
                                <asp:ListItem>Where Are You Born ?</asp:ListItem>
                            </asp:DropDownList>
                            
							
						</div>
                        
                        <div class="input-field">
							<label for="from">Security Answer : </label>
                            <asp:TextBox ID="txtans" CssClass="form-control" Enabled="true" runat="server"></asp:TextBox>
							
						</div>
                        <br />
                        <div class="col-xs-12" runat="server" id="div2">
                            <asp:Button ID="btnUpdate" CssClass="btn btn-primary btn-block" runat="server" Text="Save Details" OnClick="btnUpdate_Click" />
                            <asp:Button ID="btnCancel" CssClass="btn btn-primary btn-block" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
                        </div>
                </div>
            
           </div>
                </asp:View>
            </asp:MultiView>
            
                
      </div>  
    </div>
</div>

</asp:Content>

