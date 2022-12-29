<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="task2.aspx.cs" Inherits="tasks29_12.task2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
  .cont{
      border:2px solid yellow;
      width:200px;
      padding:10px 15px 10px 15px;
      font-size:20px;
  }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <div class="cont">
                   <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
            <div>
                <asp:DropDownList ID="DropDownList1" AutoPostBack="true" OnSelectedIndexChanged="changelabelcolor" runat="server">
                    <asp:ListItem>Red</asp:ListItem>
                    <asp:ListItem>Black</asp:ListItem>
                    <asp:ListItem>Green</asp:ListItem>
                    <asp:ListItem>Blue</asp:ListItem>
                </asp:DropDownList>
            </div>
       
    </form>
</body>
</html>
