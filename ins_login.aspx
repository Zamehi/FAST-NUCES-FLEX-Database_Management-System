<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ins_login.aspx.cs" Inherits="ins_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
         <link rel="stylesheet" type="text/css" href="StyleSheet.css">
<style>
    *{
        box-sizing:border-box;
    }
    .auto-style1 {
        margin-top:-1240px;
        margin-left: 700px;
        height: 130vh;
        margin-bottom:0;
        width: 50vw;
    max-width: 120%;
    }
    .auto-style2 {
        padding: 150px;
        width: 383px;
    }
    .TextBOX{
        margin-left:100px;
        margin-top:100px;
    }
    #MyTextBox{
        text-align:center;
    }
     #TextBox1::placeholder {
        text-align: center;
        padding-top: 8px; /* adjust as needed */
    }
    .auto-style3 {
        margin-left: 100px;
        margin-top: 100px;
        width: 303px;
    }
    .auto-style4 {
        width: 273px;
    }
       .LibImg .image-text {
        position: absolute;
        top: 50%;
        left: 50%;
        margin-left:400px;
        transform: translate(-50%, -50%);
        font-size: 45px;
        color: wheat;
        font:bolder;
        font-size:xx-large;
        font-weight:bold;
        text-shadow: 2px 2px 4px black;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
            <div class="auto-style2">
             <img src="flex.png" alt="Flex was here" >
            <div class="auto-style3">
            <label for="myInput">Instructor-ID:<br />
                </label>
                &nbsp;<asp:TextBox runat="server" ID="MyTextBox" Height="33px" Width="229px"  placeholder="INS ID" OnTextChanged="MyTextBox_TextChanged"></asp:TextBox>
           <br><p>Password:</p>
                <asp:TextBox runat="server" ID="TextBox1" TextMode="Password" Height="29px" Width="226px" placeholder="Password" OnTextChanged="TextBox1_TextChanged" ></asp:TextBox>

                <br />
                <br />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Height="43px" Text="Submit" Width="158px" OnClick="Button1_Click" />

        </div>
            </div>
            <div class="LibImg">
                <img src="libr.jpg" alt="library was here" class="auto-style1" >
            <div class="image-text">Flex-Instructor</div>
                </div>
        </div>

        
    </form>
</body>
</html>
