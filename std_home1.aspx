<%@ Page Language="C#" AutoEventWireup="true" CodeFile="std_home1.aspx.cs" Inherits="std_home1" %>
<%--<%@ Page Language="C#" AutoEventWireup="true" CodeFile="std_evaluation1.aspx.cs" Inherits="std_evaluation1" %>--%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title>Student</title>
     <link rel="stylesheet" type="text/css" href="StyleSheet.css">
</head>
<body>
	 <div class="content">
            <h1>Flex Faculty</h1>
            <h1><a href="ins_home.aspx">ins_home.aspx</a></h1>
        </div>
    <form id="form1" runat="server">
      <nav>
		<div class="navxx"> 
		  <ul>
			<div class="xx">
			 <li><a href="std_home1.aspx" style="border-radius:12px; margin-top:20px; color:black;">Home</a></li>
                <li><a href="std_evaluation1.aspx" style="color:black;border-radius:12px">Evaluation</a></li>
                <li><a href="std_attendance.aspx" style="color:black;border-radius:12px">Attendance</a></li>
                <li><a href="std_feedback.aspx" style="color:black;border-radius:12px">Feedback</a></li>
                <li><a href="std_cgpa" style="color:black;border-radius:12px"> CGPA</a></li>
              <li><a href="std_course_reg.aspx" style="color:black;border-radius:12px">Course<br/>Register</a></li>
                  <li><a href="std_transcript.aspx" style=";color:black;border-radius:12px">Transcript</a></li>
			
			</div>
				</ul>
			</div>
	</nav>

	<!-- right side content -->
	<div class="container">
		<div class="box">
			<h2>Personal Information</h2>
			<p>Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged" ReadOnly="True"></asp:TextBox>
            </p>
				
			<p>DOB:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </p>
		</div>
		<div class="box121">
			<h2>University Information </h2>
			<p>Semester:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox6" runat="server" ReadOnly="True" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
            </p>
				
			<p>Student id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox7" runat="server" ReadOnly="True" OnTextChanged="TextBox7_TextChanged"></asp:TextBox>
            </p>
		</div>
	</div>
    </form>
</body>
</html>
