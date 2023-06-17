<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ins_feedback.aspx.cs" Inherits="ins_feedback" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Feedback</title>
     <link rel="stylesheet" type="text/css" href="StyleSheet.css">
    <style type="text/css">
        .auto-style2 
        {
            width: 76%;
        }
        .auto-style3 
        {
            width: 72%;
            height: 37px;
        }
        .auto-style4 {
            width: 69%;
        }
        .auto-style5 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <nav>
        <div>
            <div class="navxx"> 
		  <ul>
			<div class="xx">
			 <li>< <li><a href="ins_home.aspx" style="border: thick solid #3f51b5; border-radius:12px; margin-top:20px; color:black;">Home</a></li>
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
            
        </div>
        <div class ="EVhead">
          
            <h1>Feedback</h1>
                
        </div>
          <div class="dropCourse">
              <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style5"  Height="34px" Width="140px">
             <%--<asp:DropDownList ID="Course" runat="server" CssClass="auto-style5" OnSelectedIndexChanged="Course_SelectedIndexChanged" Height="34px" Width="140px">--%>
                <asp:ListItem>Courses</asp:ListItem>
                </asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:DropDownList ID="DropDownList1" runat="server" Height="34px" Width="129px">
                  <asp:ListItem>Section</asp:ListItem>
                  <asp:ListItem></asp:ListItem>
                  <asp:ListItem></asp:ListItem>
                  <asp:ListItem></asp:ListItem>
              </asp:DropDownList>
        </div>
        <div class="table1">		<!-- To draw table-->
             <table class="auto-style4">
		<thead>
			<tr>
				<th class="auto-style2">Reviews</th>    
			</tr>
		</thead>
		<tbody>
			<tr>
                
				<td class="auto-style3"></td>
			</tr>
			<tr>
				<td class="auto-style2">&nbsp;</td>
			</tr>
			
		</tbody>
	</table>
        </div>

    </form>
</body>
</html>
