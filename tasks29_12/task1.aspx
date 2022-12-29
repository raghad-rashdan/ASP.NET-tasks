<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="task1.aspx.cs" Inherits="tasks29_12.task1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
       
        .cont{
            width:40%;
/*            border-color:darkcyan;
*/            border:solid 2px darkcyan;
              font-size:25px;
        }
        .auto-style1{
            width:100%;
        }
        #nametxt,#passtxt{
            height:50%;
         border-radius:2%;

        }
        #login{
background-color:cornsilk;
border-color:cornsilk;
padding:10px 15px 10px 15px;
font-size:17px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="cont">

           <table class="auto-style1">
               <tr>
                   <td>User Name</td>
                   <td>
                       <asp:TextBox ID="nametxt" runat="server"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td>password</td>
                   <td>
                       <asp:TextBox ID="passtxt" runat="server"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td>
                       <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember Me" />
                   </td>
                   <td></td>
               </tr>
               <tr>
                   <td>
                       <asp:Button ID="login" runat="server" Text="Log in" OnClick="login_Click" />
                   </td>
               </tr>
           </table>

        </div>
    </form>
</body>
</html>
