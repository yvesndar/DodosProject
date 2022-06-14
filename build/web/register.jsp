
    Document   : register
    Created on : Apr 5, 2022, 8:57:15 AM
    Author     : OTTOX
--%>
<%@page import="Dodos.Dao.Client_Dao"%>
<%@page import="Dodos.Model.Rental_Client"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Dodos.Model.Cars_to_Rental"%>
<%@page import="java.util.regex.Matcher"%>
<%@page import="java.util.regex.Pattern"%>
<%@page import="java.time.Period"%>
<%@page import="java.time.LocalDate"%>



<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
           String plate=request.getParameter("plate");
           String  brand=request.getParameter("brand");
            String  colors=request.getParameter("colors");
             String  carid=request.getParameter("ID");
              String  seats=request.getParameter("Seats");
               String  date=request.getParameter("date");
                String  until=request.getParameter("until");
                 long  clientid= Long.parseLong(request.getParameter("cd")); 
                 String  name=request.getParameter("name");
                  String  address=request.getParameter("address");
                   String  phone=request.getParameter("phone");
                    String  email=request.getParameter("email");
           
                  try{    
            LocalDate duration=LocalDate.parse( until);
             LocalDate uyumunsi=LocalDate.parse( date);
            int day=Period.between(duration, uyumunsi).getDays();
            int d=duration.getYear();
            int p=uyumunsi.getYear();
           
            Cars_to_Rental car=new Cars_to_Rental();
            car.setCar_Brand(brand);
            car.setCar_Capacity(seats);
            car.setCar_Color( colors);
            car.setCar_Plate_Number(plate);
            car.setDays(day);
            List<Cars_to_Rental> cars = new ArrayList<>();
            cars.add(car);
            Rental_Client re=new  Rental_Client();
            re.setCar_ID(cars);
            re.setClient_Address(address);
            re.setClient_Contact(phone);
            re.setClient_Email(email);
            re.setClient_ID(clientid);
            re.setClient_Name(name);
            Client_Dao du=new Client_Dao();
            du.saveClient(re);
            out.println("w=done ");
            
           
           
            }catch(Exception ex){
                System.out.print(ex);
                out.println("Sorry you are trying to record an existing car will plat ");
                ex.printStackTrace();
            }
            
            
        %>
    </body>
</html>
