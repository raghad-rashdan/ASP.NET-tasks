<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication10.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script type="text/javascript">
        function successalert() {
            swal({
                title: 'Congratulations!',
                text: 'Your message  sent',
                type: 'success'
            });
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
        <h5>Add a comment</h5>
       <textarea runat="server" class="form-control" id="textAreaExample" rows="4"></textarea>
        <asp:Button ID="Button1" class="btn btn-danger" runat="server" Text="Send" OnClick="Button1_Click" />
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
