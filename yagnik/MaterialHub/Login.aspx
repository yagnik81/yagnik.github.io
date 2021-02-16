<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" EnableEventValidation="false" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login | Material Hub</title>

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
                    <form method="POST" id="signup-form" class="signup-form">
                        <center><a href="#"><img src="Images/logo.png" height="150px" width="500px" /></a></center>
                        <h2 class="form-title">Login Now</h2>
                        <h2>
                        <asp:Label ID="lblmsg" ForeColor="Red" Font-Bold="true" Font-Size="13px" runat="server" Text=""></asp:Label></h2>
                        <div class="form-group">
                            <asp:TextBox ID="txtemail" CssClass="form-input" placeholder="Your Email" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Required..." Font-Bold="True" Font-Size="15pt"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="InvalidEmail" Font-Bold="True" Font-Size="15pt" ForeColor="Red"></asp:RegularExpressionValidator>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtpass" CssClass="form-input" runat="server" placeholder="Password" TextMode="Password" ></asp:TextBox>
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" runat="server" ErrorMessage="Required..." ControlToValidate="txtpass" Font-Bold="True" Font-Size="15pt"></asp:RequiredFieldValidator>
                        </div>
                        
                        <div class="form-group">
                            <asp:Button ID="btnLogin" runat="server" CssClass="form-submit" Text="Login Now" OnClick="btnLogin_Click" />
                            
                        </div>
                    </form>
                    <p class="loginhere">
                        Don't Have Account ? <a href="Registration.aspx" class="loginhere-link">Sign Up Now</a>
                    <br />
                        Forget password ? <a href="Forgetpassword.aspx" class="loginhere-link">Click Here</a>
                    </p>
                </div>
            </div>
        </section>

    </div>
    </form>
</body>
</html>
