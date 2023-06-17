<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ins_marksdist.aspx.cs" Inherits="ins_marks" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Marks Distribution</title>
    
     <link rel="stylesheet" type="text/css" href="StyleSheet.css">
    <style type="text/css">
        .auto-style1 {
            margin-left: 280px;
            margin-top:50px;
        }
        .auto-style4 {
            width: 116px;
        }
        .auto-style5 {
            width: 103px;
        }
        .auto-style6 {
            margin-left: 280px;
            margin-top: 50px;
            width: 66%;
            height: 306px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
          <nav>
        <div>
            <div class="navxx"> 
		  <ul>
			<div class="xx">
			  <li><a href="ins_home.aspx" style="border: thick solid #3f51b5; border-radius:12px; margin-top:20px; color:black;">Home</a></li>
                        <li><a href="ins_evaluation.aspx" style="border: thick solid #3f51b5;color:black;border-radius:12px">Evaluation</a></li>
                        <li><a href="ins_attendance.aspx" style="border: thick solid #3f51b5;color:black;border-radius:12px">Attendance</a></li>
                        <li><a href="ins_feedback.aspx" style="border: thick solid #3f51b5;color:black;border-radius:12px">Feedback</a></li>
				         <li><a href="ins_marksdist.aspx" style="border: thick solid #3f51b5;color:black;border-radius:12px">Marks Dist.</a></li>
                        <li><a href="ins_report.aspx" style="border: thick solid #3f51b5;color:black;border-radius:12px">Reports</a></li>

				</div>
				</ul>
			</div>
        </div>
            </nav>
          <div class ="EVhead">
        <h1><asp:Label ID="Label1" runat="server" Text="Marks Distribution"></asp:Label></h1>
            </div>

        <div class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" Height="32px" Width="146px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                <asp:ListItem>Course</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
                <table class="auto-style6" border="0">
                  <div class="fixCol">
                    <tr>
                        <td class="auto-style4" style="background-color: #6699FF">Evaluations</td>
                        <td class="auto-style5" style="background-color: #6699FF">Weightage</td>
                    </tr>
                  </div>
                    <tr>
                        <td class="auto-style4">Assignments</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged1"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Quizes</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                        </td>
                        </tr>
                    <tr>
                        <td class="auto-style4">Sessional 1</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                        </tr>
                    <tr>
                        <td class="auto-style4">Sessional 2</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                        </tr>
                    <tr>
                        <td class="auto-style4">Final</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                        </tr>
                    <tr>
                        <td class="auto-style4">Projects</td>
                        <td class="auto-style5" draggable="true">
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            
                        </td>
                    </tr>
                </table>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Set" Height="37px" Width="57px" />
          <asp:TextBox ID="TextBox7" runat="server" OnTextChanged="TextBox7_TextChanged"></asp:TextBox>
          </p>
    </form>
                </body>
</html>