<%@ Page Language="C#" AutoEventWireup="true" CodeFile="std_cgpa.aspx.cs" Inherits="std_cgpa" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Attendance</title>
     <link rel="stylesheet" type="text/css" href="StyleSheet.css">
    </head>
<body>
    <div class="content">
            <h1>CGPA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h1>
        </div>
    <form id="form1" runat="server">
        <div>   
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
            <div class="CourseButton">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
                <asp:Label ID="Label1" runat="server" Text="CGPA:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            
                <asp:Chart ID="Chart2" runat="server" Width="500" Height="300">
    <Series>
        <asp:Series Name="GPA" ChartType="Column" XValueMember="Semester" YValueMembers="GPA">
        </asp:Series>
    </Series>
    <ChartAreas>
        <asp:ChartArea Name="ChartArea1">
        </asp:ChartArea>
    </ChartAreas>
</asp:Chart>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
    </form>
</body>
</html>