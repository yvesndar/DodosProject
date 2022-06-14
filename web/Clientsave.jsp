<%-- 
    Document   : Clientsave
    Created on : May 8, 2022, 3:48:41 PM
    Author     : OTTOX
--%>

<%@page import="Dodos.Dao.Client_Dao"%>
<%@page import="Dodos.Model.Rental_Client"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
          String fname=request.getParameter("first-name");
          String lname=request.getParameter("last-name");
          String email=request.getParameter("email");
          String psw=request.getParameter("psw");
          String psw_repeat=request.getParameter("psw_repeat");
           String province=request.getParameter("province");
           Long identification=Long.parseLong(request.getParameter("identification"));
           String phone_number=request.getParameter("phone_number");
              RequestDispatcher req1=request.getRequestDispatcher("Home.html");
           try{
           Rental_Client client=new Rental_Client();
          client.setClient_ID(identification);
          client.setClient_Name(fname+lname);
          client.setClient_Address(province);
          client.setClient_Contact(phone_number);
          client.setPsw(psw);
          client.setPsw_repeat(psw_repeat);
          client.setClient_Email(email);
         
              
       
          Client_Dao dao=new Client_Dao();
         
              dao.saveClient(client);
               req1.forward(request, response);
                  
          
           }catch(Exception e){
               System.out.print(e);
                //out.println("Sorry you are trying to record an existing car will plate no "+ platNo+" ");
                e.printStackTrace();
           }
          
      %>
    </body>
</html>
