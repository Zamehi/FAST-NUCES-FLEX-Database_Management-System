<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ins_evaluation.aspx.cs" Inherits="ins_evaluation" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Evaluation Update</title>
     <link rel="stylesheet" type="text/css" href="StyleSheet.css">
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
        <h1><asp:Label ID="Label1" runat="server" Text="Faculty Evaluation"></asp:Label></h1>
            </div>
            <div class="heading">

        

        <div class="section">
            
            <asp:DropDownList ID="sections" runat="server" AutoPostBack="True" Height="21px" Width="132px" OnSelectedIndexChanged="sections_SelectedIndexChanged" >
                <asp:ListItem Text="Course" Value=""></asp:ListItem>
                <asp:ListItem ></asp:ListItem>
              
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="sections0" runat="server" AutoPostBack="True" Height="21px" Width="122px">
     <asp:ListItem Text="Section" Value=""></asp:ListItem>           
    <asp:ListItem></asp:ListItem>
               
    </asp:DropDownList>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="sections2" runat="server" AutoPostBack="True" Height="21px" Width="122px" OnSelectedIndexChanged="sections2_SelectedIndexChanged">
        <asp:ListItem Text="Evaluations" Value=""></asp:ListItem>
        <asp:ListItem>Assignment</asp:ListItem>
        <asp:ListItem>Quiz</asp:ListItem>
                <asp:ListItem>SS1</asp:ListItem>
                <asp:ListItem>ss2</asp:ListItem>
                <asp:ListItem>final</asp:ListItem>
    </asp:DropDownList>
            <label for="date">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select a date:</label>
    <input type="date" id="date" name="date">
            <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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
            
           
                
                ></asp:SqlDataSource><br />
            <br />
            <br />
&nbsp;</div>
                  </div>
        
    </form>
</body>
</html>