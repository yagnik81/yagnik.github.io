<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up | Material Hub</title>
    	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Superfish -->
	<link rel="stylesheet" href="css/superfish.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">
	<!-- Date Picker -->
	<link rel="stylesheet" href="css/bootstrap-datepicker.min.css">
	<!-- CS Select -->
	<link rel="stylesheet" href="css/cs-select.css">
	<link rel="stylesheet" href="css/cs-skin-border.css">
	
	<link rel="stylesheet" href="css/style1.css">


	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>


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
                        <h2 class="form-title">Create account</h2>
                    <h2>
                        <asp:Label ID="lblmsg" ForeColor="Red" Font-Bold="true" Font-Size="13px" runat="server" Text=""></asp:Label></h2>
                    <div class="form-group">
                            <asp:TextBox ID="txtname" CssClass="form-input" placeholder="Your Name" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtname" ErrorMessage="Required..." Font-Bold="True" Font-Size="15pt" ValidationGroup="1"></asp:RequiredFieldValidator>
                            
                        </div>
                         <div class="form-group">
                            <asp:TextBox ID="txtemail" CssClass="form-input" placeholder="Your Email" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Required..." Font-Bold="True" Font-Size="15pt"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="InvalidEmail" Font-Bold="True" Font-Size="15pt" ForeColor="Red" ValidationGroup="1"></asp:RegularExpressionValidator>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtpass" CssClass="form-input" runat="server" placeholder="Password" TextMode="Password" ></asp:TextBox>
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" runat="server" ErrorMessage="Required..." ControlToValidate="txtpass" Font-Bold="True" Font-Size="15pt" ValidationGroup="1"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtpass2" CssClass="form-input" runat="server" placeholder="Confirm Password" TextMode="Password" ></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server"  ErrorMessage="Password Must Be Same.." ControlToValidate="txtpass2" ForeColor="red" Font-Bold="True" Font-Size="15pt" ControlToCompare="txtpass" ValidationGroup="1"></asp:CompareValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" runat="server" ErrorMessage="Required..." ControlToValidate="txtpass2" Font-Bold="True" Font-Size="15pt" ValidationGroup="1"></asp:RequiredFieldValidator>
                        </div>

                    <div class="form-group">
                            	<label for="from">Security Question : </label>

                            <asp:DropDownList ID="ddQue"  CssClass="form-control" runat="server">
                                <asp:ListItem>What Is Your Nick Name ?</asp:ListItem>
                                <asp:ListItem>Who Is Your Best Friend ?</asp:ListItem>
                                <asp:ListItem>When Your father Born ?</asp:ListItem>
                                <asp:ListItem>Where Are You Born ?</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtans" CssClass="form-input" runat="server" placeholder="Answer The Question"  ></asp:TextBox>
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="Red" runat="server" ErrorMessage="Required..." ControlToValidate="txtans" Font-Bold="True" Font-Size="15pt" ValidationGroup="1"></asp:RequiredFieldValidator>
                        </div>
                    <div class="form-group">
                            <asp:Button ID="btnSignUp" runat="server" CssClass="form-submit" Text="Sign Up Now" OnClick="btnSignUp_Click" ValidationGroup="1" />
                            
                        </div>
                    <p class="loginhere">
                        Have already an account ? <a href="Login.aspx" class="loginhere-link">Login here</a>
                    </p>
                </div>
            </div>
        </section>

    </div>
    </form>
</body>
</html>
