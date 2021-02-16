<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
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
                        <h2 class="form-title">Admin Login </h2>
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
                    
                    <p class="loginhere">
                        Forget password ? <a href="Forgetpassword.aspx" class="loginhere-link">Click Here</a>
                    </p>
                </div>
            </div>
        </section>

    </div>
    
    </form>
</body>
</html>
