<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forgetpassword.aspx.cs" Inherits="Forgetpasswrd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset Password | Material Hub</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <section class="signup">
            <!-- <img src="images/signup-bg.jpg" alt=""> -->
            <div class="container">
                <div class="signup-content">
                    <center><a href="#"><img src="Images/logo.png" height="150px" width="500px" /></a></center>
                    <h2 class="form-title">Reset Password</h2>
                        <h2>
                        <asp:Label ID="lblmsg" ForeColor="Red" Font-Bold="True" Font-Size="13px" runat="server"></asp:Label></h2>
                    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">

                        <asp:View ID="View1" runat="server">
                            
                        <div class="form-group">
                            <asp:TextBox ID="txtemail" CssClass="form-input" placeholder="Enter Your Email" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="Required..." Font-Bold="True" Font-Size="15pt"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="InvalidEmail" Font-Bold="True" Font-Size="15pt" ForeColor="Red"></asp:RegularExpressionValidator>
                        </div>
                        
                        <div class="form-group">
                            <asp:Button ID="btnnext1" runat="server" CssClass="form-submit" Text="Verify" OnClick="btnnext1_Click"/>
                            
                        </div>

                        </asp:View>

                        <asp:View ID="View2" runat="server">
                            <div class="form-group">
                                <asp:Label ID="lblque" runat="server" CssClass="form-input"  Text=""></asp:Label>
                            <asp:TextBox ID="txtans" CssClass="form-input" placeholder="Enter Your Answer" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Required..." Font-Bold="True" Font-Size="15pt"></asp:RequiredFieldValidator>
                            
                        </div>
                          <div class="form-group">
                            <asp:Button ID="btnnext2" runat="server" CssClass="form-submit" Text="Verify" OnClick="btnnext2_Click"/>
                            
                        </div>
                   
                        </asp:View>

                        
                        <asp:View ID="View3" runat="server">
                            <div class="form-group">
                            <asp:TextBox ID="txtpass" CssClass="form-input" runat="server" placeholder="Password" TextMode="Password" ></asp:TextBox>
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" runat="server" ErrorMessage="Required..." ControlToValidate="txtpass" Font-Bold="True" Font-Size="15pt"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtpass2" CssClass="form-input" runat="server" placeholder="Confirm Password" TextMode="Password" ></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server"  ErrorMessage="Password Must Be Same.." ControlToValidate="txtpass2" ForeColor="red" Font-Bold="True" Font-Size="15pt" ControlToCompare="txtpass"></asp:CompareValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" runat="server" ErrorMessage="Required..." ControlToValidate="txtpass2" Font-Bold="True" Font-Size="15pt"></asp:RequiredFieldValidator>
                        </div>
                          <div class="form-group">
                            <asp:Button ID="btnReset" runat="server" CssClass="form-submit" Text="Reset Password" OnClick="btnReset_Click"/>
                            
                        </div>
                   
                        </asp:View>

                    </asp:MultiView>
                       <p class="loginhere">
                        Don't Have Account ? <a href="Registration.aspx" class="loginhere-link">Sign Up Now</a>
                    <br />
                        Login Into Your Account ? <a href="Login.aspx" class="loginhere-link">Login Now</a>
                    </p> 
                      
                </div>
            </div>
        </section>
    </div>
    </form>
</body>
</html>
