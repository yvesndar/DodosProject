<%-- 
    Document   : saveadmin
    Created on : Jun 14, 2022, 4:10:41 PM
    Author     : OTTOX
--%>

<%@page import="Dodos.Dao.Car"%>
<%@page import="Dodos.Model.Cars"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
          String brand=request.getParameter("brand");
          String model=request.getParameter("model");
          String year=request.getParameter("year");
          String CarID=request.getParameter("CarID");
          String Car_Color=request.getParameter("Car_Color");
          String Plate_Number=request.getParameter("PlateNumber");
          String LaterfeePer_Hour=request.getParameter("LaterfeePer_Hour");
         double Cost_Per_Day=Double.parseDouble(request.getParameter("Cost_Per_Day")); 
          String Car_Names=request.getParameter("Car_Name");
           RequestDispatcher req1=request.getRequestDispatcher("Admin.jsp");
    try{ 
        Cars c=new Cars();
        c.setCar_Brand(brand);
        c.setCar_ID(CarID);
        c.setCar_Model_Year(year);
        c.setCar_Names(Car_Names);
        c.setCar_Plate_Number(Plate_Number);
        c.setCost_Per_Day(Cost_Per_Day);
        c.setCar_Color(Car_Color);
        c.setLater_fee_Per_Hour(Double.parseDouble(LaterfeePer_Hour));
        
           Car c1=new Car();
           c1.SaveCar(c);
           req1.forward(request, response);
           }catch(Exception e){
               System.out.print(e);
                //out.println("Sorry you are trying to record an existing car will plate no "+ platNo+" ");
                e.printStackTrace();
           }

              %>
           
        
        
        
    </body>
</html>
