<%-- 
    Document   : Admin
    Created on : Jun 14, 2022, 2:22:34 PM
    Author     : OTTOX
--%>

<%@page import="Dodos.Dao.Car"%>
<%@page import="Dodos.Model.Cars"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Dodos.Model.Rental_Client"%>
<%@page import="java.util.List"%>
<%@page import="Dodos.Dao.Client_Dao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/admin.css" />
    <title>Document</title>
  </head>
  <body>
    <div class="overlay hidden"></div>
    <div class="container">
      <header>
        <h1>DODOS Limeted</h1>
        <input type="text" placeholder="Search" />
        <button class="add-car">Add a car</button>
        <div class="car-details">
          <h1>Register New Car</h1>
          <form action="saveadmin.jsp" method="post">
            <div class="name">
              <label for="name">Brand name</label>
              <input type="text" name="brand" />
            </div>
            <div class="name">
              <label for="model">Model </label>
              <input type="text" name="model" />
            </div>
            <div class="name">
              <label for="name">Year</label>
              <input type="text" name="year" />
            </div>
            <div class="name">
              <label for="name">Car Name</label>
              <input type="text" name="Car_Name" />
               </div>
                 <div class="name">
              <label for="name">Car ID</label>
              <input type="text" name="CarID" />
            </div>
            <div class="name">
              <label for="model">Car Color </label>
              <input type="text" name="Car_Color" />
            </div>
            <div class="name">
              <label for="name">Plate Number</label>
              <input type="text" name="PlateNumber" />
            </div>
            <div class="name">
              <label for="name">Cost Per Day</label>
              <input type="text" name="Cost_Per_Day" />
               </div>
              <div class="name">
              <label for="name">Later fee Per Hour</label>
              <input type="text" name="LaterfeePer_Hour" />
               </div>
             
            <button class="submit"   >Submit</button>
            <button class="cancel">Cancel</button>
          </form>
        </div>

        <div class="profile">
          <img src="" alt="" />
        </div>
      </header>

      <div class="button-tables">
        <div class="btncontainer">
          <button class="buttons selected" data-table="1">User</button>
          <button class="buttons" data-table="2">Rent</button>
          <button class="buttons" data-table="3">Purchases</button>
        </div>
        <div class="tablescontainer">
          <div class="tables t-1 user show" data-table="1">
            <h1>User Accounts</h1>
            <table>
              <thead>
                <tr>
                  <th>Names</th>
                  <th>Identification number</th>
                  <th>Address</th>
                  <th>Email</th>
                  <th>Phone Number</th>
                  <th>Password</th>
                </tr>
              </thead>
              <tbody>
                  <%
             
            Client_Dao k=new Client_Dao();
             List<Rental_Client> p=k.ViewClient();
              
         //DefaultTableModel tModel = (DefaultTableModel)table.getModel();
         //tModel.setRowCount(0);
           for( Rental_Client d : p)
           {
             
        %>
                <tr>
                  <td><%=d.getClient_Name() %></td>
              <td> <%=d.getClient_ID() %></td>
               <td> <%=d.getClient_Address() %></td>
              
               <td> <%=d.getClient_Email() %></td>
               <td> <%=d.getClient_Contact() %></td>
               <td> <%=d.getPsw() %></td>
               <%
               }
               %>
                </tr>
                
              </tbody>
            </table>
          </div>
          <div class="request">
            <div class="tables t-2 rent-request" data-table="2">
              <h1>Rent</h1>
                  
      
              <table>
                <tr>
                 <td>Client Number</td>
                 <td>Plate Number</td>
                  <td> Brand </td>
                  <td>Capacity</td>
                  <td>Starting Date</td>
                  <td>Days</td>
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
                    <td> <%=rs.getString(6) %> </td>
                      <td><%=rs.getString(1)%></td>
                      <td><%=rs.getString(2)%></td>
                      <td><%=rs.getString(4)%></td>
                       <td><%=rs.getString(7)%></td>
                      <td><%=rs.getString(5)%></td>
                     
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
            <div class="tables t-3 purchase-request" data-table="3">
              <h1>Sells</h1>
              <table>
                <tr>
                  <td>Client Name</td>
                  <td>Client Number</td>
                  <td>Client Address</td>
                  <td>Client Email</td>
                </tr>
                <tr>
                  <td>Ndaruhuye Yves</td>
                  <td>0788717923</td>
                  <td>huye</td>
                  <td>yndaruhuye@gmail.com</td>
                </tr>
                <tr>
                  <td>Ndaruhuye Yves</td>
                  <td>0788717923</td>
                  <td>huye</td>
                  <td>yndaruhuye@gmail.com</td>
                </tr>
                <tr>
                  <td>Ndaruhuye Yves</td>
                  <td>0788717923</td>
                  <td>huye</td>
                  <td>yndaruhuye@gmail.com</td>
                </tr>
                <tr>
                  <td>Ndaruhuye Yves</td>
                  <td>0788717923</td>
                  <td>huye</td>
                  <td>yndaruhuye@gmail.com</td>
                </tr>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
    <script src="js/admin.js"></script>
  </body>
</html>
