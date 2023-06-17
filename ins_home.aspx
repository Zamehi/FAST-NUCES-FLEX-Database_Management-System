<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ins_home.aspx.cs" Inherits="ins_home" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title>Faculty</title>
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
			           <li><a href="ins_home.aspx" style="border: thick solid #3f51b5; border-radius:12px; margin-top:20px; color:black;">Home</a></li>
                        <li><a href="ins_evaluation.aspx" style="border: thick solid #3f51b5;color:black;border-radius:12px">Evaluation</a></li>
                        <li><a href="ins_attendance.aspx" style="border: thick solid #3f51b5;color:black;border-radius:12px">Attendance</a></li>
                        <li><a href="ins_feedback.aspx" style="border: thick solid #3f51b5;color:black;border-radius:12px">Feedback</a></li>
				         <li><a href="ins_marksdist.aspx" style="border: thick solid #3f51b5;color:black;border-radius:12px">Marks Dist.</a></li>
                        <li><a href="ins_report.aspx" style="border: thick solid #3f51b5;color:black;border-radius:12px">Reports</a></li>
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
			<p>Major:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox6" runat="server" ReadOnly="True" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
            </p>
				
			<p>Email id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox7" runat="server" ReadOnly="True" OnTextChanged="TextBox7_TextChanged"></asp:TextBox>
            </p>
		</div>
	</div>
    </form>
</body>
</html>
