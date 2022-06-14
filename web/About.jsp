<%-- 
    Document   : About
    Created on : May 23, 2022, 1:00:35 PM
    Author     : OTTOX
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/about.css" />
    </head>
    <body>
       <header>
      <nav id="navigation" class="navigation">
        <a href="" class="logo">GORILLA MOTORS</a>
        <div id="nav-menu" class="nav_menu">
          <ul id="nav_list" class="nav_list">
            <li class="nav_item">
                <a href="Home.html" id="home" class="links">Home</a>
            </li>
            <li class="nav_item">
                <a href="About.jsp" id="about" class="links">About</a>
            </li>
            <li class="nav_item">
                <a href="Rent.jsp" id="rental" class="links">Rentals</a>
            </li>
            <li class="nav_item">
                <a href="Buy.html" id="buy" class="links">Buy a Car</a>
            </li>
            <li class="nav_item">
              <a href="" id="repair" class="links">Repair Shop</a>
            </li>
            <li class="nav_item">
              <a href="" id="order" class="links">Order a Car</a>
            </li>
          </ul>
        </div>
        <div id="table" class="name">
            <table id="table" border="1" >
                <h1 class="name"> List of car rented</h1>
                <tr>
                <th>Platnumber</th>
                <th>Brand</th>
                <th>Days</th>
                <th>ClientID</th>
                <th>StartingDate</th>
                 </tr>
                  <%
        PreparedStatement pst=null;
    ResultSet rs = null;
     Connection conn1 = null;
    String RegistrationN=request.getParameter("RegistrationN");
     
    String url1 = "jdbc:mysql://localhost:3306/dodos_project";
            String user = "root";
            String password = "";
 
         try {
             Class.forName("com.mysql.jdbc.Driver");
             conn1 = DriverManager.getConnection(url1, user, password);
               //String sql="insert into campanies(RegistrationNo,CompanyName,Owner,Category,RegistrationDate,StartingDate,capital) values(?, ?, ?, ?, ?, ?, ?)";
             Statement st=conn1.createStatement();
             String sql ="select * from Cars_to_Rental";
              rs=st.executeQuery(sql);
              while(rs.next()){
                  
                  %>
                   <tr>
                      
                       <td> <%=rs.getString(1)%> </td>
                      <td><%=rs.getString(2)%></td>
                      <td><%=rs.getString(5)%></td>
                      <td><%=rs.getString(6)%></td>
                       <td><%=rs.getString(7)%></td>
                      
                  </tr>
                  <%
              }
            conn1.close();
         } catch (SQLException ex) {
             System.out.print(ex);
              out.println(" no \t" );
        ex.printStackTrace();
         }
           
        
        %>
        
            </table>
        </div>
        <div id="nav-toggle" class="nav_toggle">
          <img
            alt="toggle"
            onclick="togglemenu()"
            src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAIBJREFUSEvtVUEOgDAI616m/lxfNmMixrBgids4sePoaCiUFUw+ZXJ+hBPsABajqiu23TEvrqmgEsmkYi/OJNDSSUJNwHBJwBWwNLR63d3kr/E7AKyOMX3j4o02fHPoHngd6sWlk//7gO0YvZtkOJp7lsh62E2QTn4UCP+Th6+KE3LlOBnu4XThAAAAAElFTkSuQmCC"
          />
        </div>
      </nav>
    </header>
    <script src="/java/home.js"></script>
    </body>
</html>
