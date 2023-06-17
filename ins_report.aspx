<%--<%@ Page Language="C#" AutoEventWireup="true" CodeFile="generateReport.aspx.cs" Inherits="generateReport" %>--%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Report</title>
     <link rel="stylesheet" type="text/css" href="StyleSheet.css">
  
    <style type="text/css">
        .auto-style1 {
            height: 40%;
            font-size: 40px;
            margin-left: 340px;
            margin-top: 50px;
            width: 476px;
        }
        .auto-style4 {
            width: 603px;
        }
        .auto-style6 {
            margin-left: 0px;
        }
    </style>
  
    </head>
<body>
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
        <div>
        </div>
        <div class="EVhead">

           <h1> <asp:Label ID="Label1" runat="server" Text="Generate Report"></asp:Label></h1>
        </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <div class="TextBeforeButtons">
          
    <div class ="auto-style1">
        <p style="font-size:32px; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;" class="auto-style4">Attendance&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button7" runat="server" CssClass="auto-style6" Height="34px" Text="Report" Width="111px" />
        </p>
        
        <p style="font-size:32px; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;" class="auto-style4">Grade Count&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<asp:DropDownList ID="DropDownList10" runat="server" Height="16px" Width="121px">
           <asp:ListItem>Sections</asp:ListItem>
       </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button8" runat="server" CssClass="auto-style6" Height="34px" Text="Report" Width="111px" />
        </p>
        
        <p style="font-size:32px; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;" class="auto-style4">Grade Generate&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList7" runat="server" Height="16px" Width="121px">
                <asp:ListItem>Courses</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button9" runat="server" CssClass="auto-style6" Height="34px" Text="Report" Width="111px" />
        </p>
        
        <p style="font-size:32px; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;" class="auto-style4">Feedback&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button10" runat="server" CssClass="auto-style6" Height="34px" Text="Report" Width="111px" />
        </p>
        <p style="font-size:32px; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;" class="auto-style4">Evaluation&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Button ID="Button11" runat="server" CssClass="auto-style6" Height="34px" Text="Report" Width="111px" />
        </p>
        
        </div>
    </form>
</body>
</html>
