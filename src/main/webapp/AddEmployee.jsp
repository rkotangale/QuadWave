<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>

<%
	PrintWriter out1 = response.getWriter();
	String url = "jdbc:mysql://localhost:3306/quadwave";
   	String username = "root";
   	String password = "Rajat#123#";
   	try{
   		Class.forName("com.mysql.jdbc.Driver");
   		Connection con = DriverManager.getConnection(url,username,password);
   	   	Statement st = con.createStatement();
   	   	
   	   	int Eid = Integer.parseInt(request.getParameter("Eid"));
   	   	String EName = request.getParameter("EName");
   	 	String DOJ = request.getParameter("DOJ");
   	   	int YOE = Integer.parseInt(request.getParameter("YOE"));
   	   	String Designation = request.getParameter("Designation");
   	   	
   	   	String sql = "insert into employee values(?,?,?,?,?)";
   	   	PreparedStatement statement = con.prepareStatement(sql);
   	   	statement.setInt(1,Eid);
   	 	statement.setString(2,EName);
   		statement.setString(3,DOJ);
   		statement.setInt(4,YOE);
   		statement.setString(5,Designation);
   	   	statement.executeUpdate();
   	}
   	catch(Exception e){
   		System.out.println(e);
   	}
   	RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
   	rd.include(request, response);
%>