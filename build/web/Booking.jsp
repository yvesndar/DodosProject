<%-- 
    Document   : Booking
    Created on : Apr 11, 2022, 1:25:41 PM
    Author     : OTTOX
--%>

<%@page import="java.sql.Date"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Dodos.Dao.Client_Dao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Dodos.Model.Rental_Client"%>
<%@page import="Dodos.Model.Cars_to_Rental"%>
<%@page import="java.time.Period"%>
<%@page import="java.time.LocalDate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            * {
  margin: 0;
  padding: 0;
  -webkit-box-sizing: border-box;
          box-sizing: border-box;
}

body {
  width: 100%;
  color: black;
  -webkit-transition: 0.5s;
  transition: 0.5s;
  background-color: #1f1f1f;
  color: white;
  font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
}

body a {
  text-decoration: none;
  color: black;
  font-weight: bold;
}

body li {
  list-style: none;
}

body h1 {
  color: white;
  font-size: 1rem;
  margin: 2% 0;
}

body span {
  color: #c61616;
}

body h2 {
  text-align: center;
  font-size: 1.5em;
  color: #c61616;
  margin: 2% 0;
}

body h3 {
  font-size: 0.6rem;
}

body h4 {
  font-size: 0.8em;
  color: #c61616;
  margin: 2% 0;
}

body p {
  margin: 2% 0;
  font-size: 0.5rem;
}

body #about {
  color: #c61616;
}

@media screen and (max-width: 760px) {
  header {
    background-color: #1f1f1f;
    position: fixed;
    width: 100%;
    top: 0;
    left: 0;
    padding: 1% 0;
  }
  header a {
    color: white;
  }
  header .navigation {
    width: 100%;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: justify;
        -ms-flex-pack: justify;
            justify-content: space-between;
    -webkit-box-align: center;
        -ms-flex-align: center;
            align-items: center;
    margin: auto;
  }
  header .navigation .logo {
    width: 50%;
    margin: auto;
    font-size: 1rem;
    text-align: center;
  }
}

@media screen and (max-width: 760px) and (max-width: 760px) {
  header .navigation .nav_menu {
    position: fixed;
    padding: 1rem 0;
    width: 40%;
    top: -25rem;
    left: 10rem;
    right: 0;
    margin: 0 auto;
    -webkit-transition: 0.4s;
    transition: 0.4s;
    background-color: rgba(255, 255, 255, 0.9);
    border-radius: 1rem;
  }
}

@media screen and (max-width: 760px) {
  header .navigation .nav_list {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
        -ms-flex-direction: column;
            flex-direction: column;
    -webkit-box-align: center;
        -ms-flex-align: center;
            align-items: center;
    row-gap: 1rem;
  }
  header .navigation .nav_list .nav_item a {
    font-size: 1rem;
    color: black;
  }
  header .navigation .nav_toggle {
    width: 50%;
    margin: auto;
    text-align: right;
    cursor: pointer;
  }
  header .navigation .nav_toggle img {
    margin: auto;
    width: 1.5rem;
  }
  header .navigation #nav-menu.active {
    top: 0.5rem;
  }
}

@media screen and (min-width: 760px) and (max-width: 1350px) {
  header {
    background-color: #1f1f1f;
    position: fixed;
    width: 100%;
    top: 0;
    left: 0;
    padding: 1% 0;
  }
  header a {
    color: white;
  }
  header .navigation {
    width: 100%;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: justify;
        -ms-flex-pack: justify;
            justify-content: space-between;
    -webkit-box-align: center;
        -ms-flex-align: center;
            align-items: center;
    margin: auto;
  }
  header .navigation .logo {
    width: 50%;
    margin: auto;
    padding: 1%;
    font-size: 1.6rem;
  }
}

@media screen and (min-width: 760px) and (max-width: 1350px) and (max-width: 1350px) {
  header .navigation .nav_menu {
    position: fixed;
    padding: 1rem 0;
    width: 40%;
    top: -310px;
    left: 10rem;
    right: 0;
    margin: 0 auto;
    -webkit-transition: 0.4s;
    transition: 0.4s;
    background-color: white;
    border-radius: 1rem;
  }
}

@media screen and (min-width: 760px) and (max-width: 1350px) {
  header .navigation .nav_list {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
        -ms-flex-direction: column;
            flex-direction: column;
    -webkit-box-align: center;
        -ms-flex-align: center;
            align-items: center;
    row-gap: 1rem;
  }
  header .navigation .nav_list .nav_item a {
    font-size: 1rem;
    color: black;
  }
  header .navigation .nav_list .nav_item .links:hover {
    color: #c61616;
  }
  header .navigation .nav_toggle {
    width: 50%;
    margin: auto;
    text-align: right;
    cursor: pointer;
  }
  header .navigation .nav_toggle img {
    margin: auto;
  }
  header #nav-menu.active {
    top: 0.5rem;
  }
}

@media screen and (min-width: 1350px) {
  header {
    background-color: #1f1f1f;
    position: fixed;
    width: 100%;
    top: 0;
    left: 0;
    padding: 1% 0;
  }
  header a {
    color: white;
  }
  header .navigation {
    width: 100%;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: justify;
        -ms-flex-pack: justify;
            justify-content: space-between;
    -webkit-box-align: center;
        -ms-flex-align: center;
            align-items: center;
    margin: auto;
  }
  header .navigation .logo {
    width: 25%;
    margin: auto;
    padding: 0.5rem;
    font-size: 1.6rem;
  }
  header .navigation .nav_menu {
    width: 65%;
    top: 0px;
    left: 0px;
    right: 0;
    margin: 0 auto;
    -webkit-transition: 0.4s;
    transition: 0.4s;
    border-radius: 1rem;
  }
  header .navigation .nav_list {
    margin: auto;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: end;
        -ms-flex-pack: end;
            justify-content: end;
  }
  header .navigation .nav_list .nav_item {
    margin: 1rem 2rem;
  }
  header .navigation .nav_list .nav_item a {
    font-size: 1.2rem;
  }
  header .navigation .nav_list .nav_item .links:hover {
    color: #c61616;
  }
  header .navigation .nav_toggle {
    display: none;
  }
}
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                <a href="About.html" id="about" class="links">About</a>
            </li>
            <li class="nav_item">
                <a href="Rent.jsp" id="rental" class="links">Rentals</a>
            </li>
            <li class="nav_item">
              <a href="" id="buy" class="links">Buy a Car</a>
            </li>
            <li class="nav_item">
              <a href="" id="repair" class="links">Repair Shop</a>
            </li>
            <li class="nav_item">
              <a href="" id="order" class="links">Order a Car</a>
            </li>
          </ul>
        </div>
        <div id="nav-toggle" class="nav_toggle">
          <img
            alt="toggle"
            onclick="togglemenu()"
            src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAIBJREFUSEvtVUEOgDAI616m/lxfNmMixrBgids4sePoaCiUFUw+ZXJ+hBPsABajqiu23TEvrqmgEsmkYi/OJNDSSUJNwHBJwBWwNLR63d3kr/E7AKyOMX3j4o02fHPoHngd6sWlk//7gO0YvZtkOJp7lsh62E2QTn4UCP+Th6+KE3LlOBnu4XThAAAAAElFTkSuQmCC"
          />
       
       <%
           String plate=request.getParameter("plate");
           String  brand=request.getParameter("brand");
            String  colors=request.getParameter("colors");
             String  carid=request.getParameter("ID");
              String  seats=request.getParameter("Seats");
               String  date=request.getParameter("date");
                String  until=request.getParameter("until");
                 double  clientid= Double.parseDouble(request.getParameter("cd")); 
                 String  name=request.getParameter("name");
                  String  address=request.getParameter("address");
                   String  phone=request.getParameter("phone");
                    String  email=request.getParameter("email");
                try{    
            LocalDate duration=LocalDate.parse( until);
             LocalDate uyumunsi=LocalDate.parse( date);
             LocalDate uyumuns=LocalDate.now();
            int day=Period.between( uyumunsi,duration).getDays();
            PreparedStatement pst;
                Connection conn1 = null;
            String url1 = "jdbc:mysql://localhost:3306/dodos_project";
            String user = "root";
            String password = "";
           
             Class.forName("com.mysql.jdbc.Driver");
             conn1 = DriverManager.getConnection(url1, user, password);
            String sql=("INSERT INTO Cars_to_Rental VALUES(?, ?, ?, ?, ?, ?, ?)");
            pst=conn1.prepareStatement(sql);
            pst.setString(1, plate);
            pst.setString(2, brand);
            pst.setString(3, seats);
            pst.setString(4, colors);
            pst.setInt(5, day);
            pst.setDouble(6, clientid);
            pst.setDate(7, Date.valueOf(uyumunsi));
            pst.executeUpdate();
            out.println(" You'll recever a call letter ");
            }catch(Exception ex){
                ex.printStackTrace();
                out.println(ex);
            }
           
           
       %>
         </div>
      </nav>
    </header>
        
    </body>
</html>
