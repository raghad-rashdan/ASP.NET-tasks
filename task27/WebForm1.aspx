<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="task27.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="cont" style="background-color:white;">
            <div class="bodyelemant" >
                <div class="loginbox" style="background-color:lightblue;">
                    <p><b>Login</b></p>
                    <p>Email</p>
                    <asp:TextBox ID="usernametxt" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ControlToValidate="usernametxt" ErrorMessage="email required" ValidationGroup="login"></asp:RequiredFieldValidator>
                    <p>Password</p>
                    <asp:TextBox ID="passwordtxt" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ControlToValidate="passwordtxt" ErrorMessage="password required" ValidationGroup="login"></asp:RequiredFieldValidator><br /><br />
                    <asp:Button ID="Button1" runat="server" Text="login" ValidationGroup="login" />
                </div>
                <div class="signupbox" style="background-color:lightblue;">
                    <p><b>Create account</b></p>
                    <p>Email</p>
                    <asp:TextBox ID="usernametxt2" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Choose your email" ForeColor="Red" ControlToValidate="usernametxt2" ValidationGroup="signup"></asp:RequiredFieldValidator>
                    <p>Password</p>
                    <asp:TextBox ID="pass1" runat="server"></asp:TextBox>
                    <p>re-password</p>
                    <asp:TextBox ID="pass2" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords don't match" ControlToCompare="pass1" ControlToValidate="pass2" ForeColor="Red" ValidationGroup="signup"></asp:CompareValidator><br /><br />
                    <asp:Button ID="Button2" runat="server" Text="register" ValidationGroup="signup" />
                </div>
            </div>
        </div>
</asp:Content>
