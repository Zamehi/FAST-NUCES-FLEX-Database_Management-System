# FAST-NUCES-FLEX-Management-System

A FLEX system is a database management system of FAST NUCES which involves designing and implementing a database to manage and schedule university students’ academic information. This type of system would allow the university to manage various aspects of student management, such as enrollment, course registration, scheduling, and student performance tracking. With a flex management system, students would be able to access and manage their academic information and schedules, while the university would be able to manage its resources and course offerings more effectively. The goal of a flex management system for students at Fast NUCES would be to improve the overall academic experience for students and optimize the university's operations.
There are many users involved in this system so the basic thing which you need to perform is a User Management. FLEX system database may have many users. Each user must have a user account. In the system which you are designing roles are Academic Officers, Faculty, and Students.
Flex is a system in which you just have to implement the features which are mentioned in the document. Do not add extra features to the system. Follow the requirements strictly. Make proper Sign Up, Login for each role. Some of the requirements might include user-friendly interfaces, efficient data processing, security and privacy, scalability, and integration with other systems.
Every user who are involved in the system have their own User Interface. You must create three interfaces.
• Academic Office Interface
• Faculty Interface
• Students Interface
Academic Office Interface:
The main role in this project will be of academic office because academic office will offer courses in every semester. Academic Office are users which authority to offer courses, manage students by assigning courses to the registered students and allocate the courses to the respective Course and Lab Instructors. The features in this interface will offer the courses and show them to the students (The students should see the offered courses on their interface). Keep in mind before registering the student to specific course check the Pre-Requisite of the course. Once the students registered to the specific courses the academic officers’ should start making sections. Here you have to check that a student can only take 6 courses in one semester not more than that and also check if the count of the registered students in the course is less than 10 than the course will not be offered. In each section the count of the student should not be greater than 50. In one section the students should be in range of 10 to 50 not more than that. After making sections the courses will be allocated to the Course and Lab Instructors. One course/lab instructor can only teach maximum 3 courses and minimum less than 3 courses with less workload in a semester.
There will be a proper report generation process too. The Academic Officers will generate following reports:
 Offered Courses Report: This report contains all the courses offered in a semester with the course codes and credit hours.
Department of Computer Science,
National University of Computer and Emerging Sciences,
Islamabad
3
 Students Section Report: This report contains all the students’ names with registration number in a specific section. Sort the report on the basis of the registration no in ascending order.
Section A
Registration No.
Student Name
19I-XXXX
A
19I-XXXX
B
20I-XXXX
C
21I-XXXX
D
 Course Allocation Report: This report contains the information of the course allocated to which course/lab instructor and as well as the coordinator of the course.
Course Code
Course
CHs
Section
Instructor
Coordinator
CS-XXX
Database Systems
3
CS-2B
Dr. Shujaat Hussain
Dr. Shujaat Hussain
CS-2C
Dr. Shujaat Hussain
CS-2G
Ms. Noor ul Ain
CS-2D
Dr. Amna Basharat
Note: Make excel sheet populate the excel sheet with at least 50 records manually and then import the data to the tables from that sheet.
Faculty Interface:
This interface is for the faculty members who are teaching the courses. Faculty members are users which authority to set marks distribution, manage attendance, manage evaluations, generate grades and reports. The faculty members can only see the courses assigned to them with section as shown in the image given below.
Spring 2023
Course Codes
Courses
Credit Hrs
CS-XXX
Database Systems
3
CS-XXX
COAL
2
CS-XXX
Operating System
3
CS-XXX
Data Structure
3
Department of Computer Science,
National University of Computer and Emerging Sciences,
Islamabad
4
The faculty can set marks distribution like the weightage of the assignments, quizzes, sessional and finals. Keep in mind that the total marks of course is 100 so the distribution should be in such a way that it is exactly equal to 100 not more than 100 and not less than 100.
The faculty will mark the attendance of the students in each section and also they can add the marks of the evaluations. You have to make separate interface for the attendance and evaluation management in the faculty interface. When the marks get finalized at the end of the semester then the faculty will generate grades on the basis of the marks taken by the students. Keep in mind that the grading policy used will be absolute.
There will be a proper report generation process too. The Faculty will generate following reports:
 Attendance Sheet Report: This report contains all the registered students registration numbers, names and attendance of the semester with percentage of the attendance.
 Evaluation Report: This report contains all the evaluation marks of the students with the total marks at the end column.
Department of Computer Science,
National University of Computer and Emerging Sciences,
Islamabad
5
 Grade Report: This report contains all the grades of the student in specific course with registration no and names.
Roll No
Name
Section
Marks
Grade
19I-XXXX
A
CS-2B
97
A+
19I-XXXX
B
CS-2B
96
A+
20I-XXXX
C
CS-2B
76
B
21I-XXXX
D
CS-2B
75
B
 Count of Grades Report: This report contains all the grades count in a specific section.
Grade
Count
A+
10
A
5
A-
20
B+
5
 Students Feedback Report: This report contains all the feedback given by the students to the teacher.
Student Interface:
This interface is for the students who registered themselves in the courses. You have to design this interface like your flex interface. Students are users who can see their information on the interface like their attendance, evaluation marks of each registered course, transcript, and previous semester CGPAs comparison graphs. The students can also give feedback to the teachers. For this you have to design the form. You have to make the same form same as given below:
Link to the Form: https://www.jotform.com/build/231072139016446
Department of Computer Science,
National University of Computer and Emerging Sciences,
Islamabad
6
Department of Computer Science,
National University of Computer and Emerging Sciences,
Islamabad
7
The feedback given to the teacher should be visible to the faculty on their interface with proper comments and find the percentage from the question values at the end and show percentage to the faculty member as well with comments.
Additional details and advice
The system is designed and developed keeping in view that,
 System should be user friendly
 All the webpages navigate properly
 The system is also equipped with state of security features, which enables only the authorized people to view or modify the sensitive information
 The information is protected by login and password, which can be assigned to each user of the system.
 Log every event that a particular user performs to keep history of each and everything. This is known as audit trail. Audit records provide information about the operation that was audited, the user performing the operation, and the date and time of the operation. This thing is for 20 bonus marks.
 User Management is most important part of the project. Make sure that assign right privileges to the right roles.
Department of Computer Science,
National University of Computer and Emerging Sciences,
Islamabad
8
What to submit
Submit your code and sql queries for this project, programmed in C# using Visual Studio 2019 and SQL Server. A document highlighting the design in terms of relationships/associations between different entities like ERD, Schema Diagram, and Mappings of the relationships must be submitted. Evaluation criteria that will be used for the grading is also shared with the project description. Each group must fill and bring the evaluation form (Rubric) for the demo.
