<%@ Page Language="C#" AutoEventWireup="true" CodeFile="std_attendance.aspx.cs" Inherits="std_attendance" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Attendance</title>
     <link rel="stylesheet" type="text/css" href="StyleSheet.css">
    </head>
<body>
    <div class="content">
            <h1>Attendance&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h1>
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
            
            <asp:DropDownList ID="DropDownList2" runat="server" Height="32px" Width="146px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                <asp:ListItem>Course</asp:ListItem>
            </asp:DropDownList>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>