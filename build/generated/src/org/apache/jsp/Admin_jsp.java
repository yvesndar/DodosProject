package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Dodos.Dao.Car;
import Dodos.Model.Cars;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import Dodos.Model.Rental_Client;
import java.util.List;
import Dodos.Dao.Client_Dao;

public final class Admin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta charset=\"UTF-8\" />\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/admin.css\" />\n");
      out.write("    <title>Document</title>\n");
      out.write("  </head>\n");
      out.write("  <body>\n");
      out.write("    <div class=\"overlay hidden\"></div>\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <header>\n");
      out.write("        <h1>DODOS Limeted</h1>\n");
      out.write("        <input type=\"text\" placeholder=\"Search\" />\n");
      out.write("        <button class=\"add-car\">Add a car</button>\n");
      out.write("        <div class=\"car-details\">\n");
      out.write("          <h1>Register New Car</h1>\n");
      out.write("          <form action=\"saveadmin.jsp\" method=\"post\">\n");
      out.write("            <div class=\"name\">\n");
      out.write("              <label for=\"name\">Brand name</label>\n");
      out.write("              <input type=\"text\" name=\"brand\" />\n");
      out.write("            </div>\n");
      out.write("            <div class=\"name\">\n");
      out.write("              <label for=\"model\">Model </label>\n");
      out.write("              <input type=\"text\" name=\"model\" />\n");
      out.write("            </div>\n");
      out.write("            <div class=\"name\">\n");
      out.write("              <label for=\"name\">Year</label>\n");
      out.write("              <input type=\"text\" name=\"year\" />\n");
      out.write("            </div>\n");
      out.write("            <div class=\"name\">\n");
      out.write("              <label for=\"name\">Car Name</label>\n");
      out.write("              <input type=\"text\" name=\"Car_Name\" />\n");
      out.write("               </div>\n");
      out.write("                 <div class=\"name\">\n");
      out.write("              <label for=\"name\">Car ID</label>\n");
      out.write("              <input type=\"text\" name=\"CarID\" />\n");
      out.write("            </div>\n");
      out.write("            <div class=\"name\">\n");
      out.write("              <label for=\"model\">Car Color </label>\n");
      out.write("              <input type=\"text\" name=\"Car_Color\" />\n");
      out.write("            </div>\n");
      out.write("            <div class=\"name\">\n");
      out.write("              <label for=\"name\">Plate Number</label>\n");
      out.write("              <input type=\"text\" name=\"PlateNumber\" />\n");
      out.write("            </div>\n");
      out.write("            <div class=\"name\">\n");
      out.write("              <label for=\"name\">Cost Per Day</label>\n");
      out.write("              <input type=\"text\" name=\"Cost_Per_Day\" />\n");
      out.write("               </div>\n");
      out.write("              <div class=\"name\">\n");
      out.write("              <label for=\"name\">Later fee Per Hour</label>\n");
      out.write("              <input type=\"text\" name=\"LaterfeePer_Hour\" />\n");
      out.write("               </div>\n");
      out.write("             \n");
      out.write("            <button class=\"submit\"   >Submit</button>\n");
      out.write("            <button class=\"cancel\">Cancel</button>\n");
      out.write("          </form>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"profile\">\n");
      out.write("          <img src=\"\" alt=\"\" />\n");
      out.write("        </div>\n");
      out.write("      </header>\n");
      out.write("\n");
      out.write("      <div class=\"button-tables\">\n");
      out.write("        <div class=\"btncontainer\">\n");
      out.write("          <button class=\"buttons selected\" data-table=\"1\">User</button>\n");
      out.write("          <button class=\"buttons\" data-table=\"2\">Rent</button>\n");
      out.write("          <button class=\"buttons\" data-table=\"3\">Purchases</button>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"tablescontainer\">\n");
      out.write("          <div class=\"tables t-1 user show\" data-table=\"1\">\n");
      out.write("            <h1>User Accounts</h1>\n");
      out.write("            <table>\n");
      out.write("              <thead>\n");
      out.write("                <tr>\n");
      out.write("                  <th>Names</th>\n");
      out.write("                  <th>Identification number</th>\n");
      out.write("                  <th>Address</th>\n");
      out.write("                  <th>Email</th>\n");
      out.write("                  <th>Phone Number</th>\n");
      out.write("                  <th>Password</th>\n");
      out.write("                </tr>\n");
      out.write("              </thead>\n");
      out.write("              <tbody>\n");
      out.write("                  ");

             
            Client_Dao k=new Client_Dao();
             List<Rental_Client> p=k.ViewClient();
              
         //DefaultTableModel tModel = (DefaultTableModel)table.getModel();
         //tModel.setRowCount(0);
           for( Rental_Client d : p)
           {
             
        
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                  <td>");
      out.print(d.getClient_Name() );
      out.write("</td>\n");
      out.write("              <td> ");
      out.print(d.getClient_ID() );
      out.write("</td>\n");
      out.write("               <td> ");
      out.print(d.getClient_Address() );
      out.write("</td>\n");
      out.write("              \n");
      out.write("               <td> ");
      out.print(d.getClient_Email() );
      out.write("</td>\n");
      out.write("               <td> ");
      out.print(d.getClient_Contact() );
      out.write("</td>\n");
      out.write("               <td> ");
      out.print(d.getPsw() );
      out.write("</td>\n");
      out.write("               ");

               }
               
      out.write("\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("              </tbody>\n");
      out.write("            </table>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"request\">\n");
      out.write("            <div class=\"tables t-2 rent-request\" data-table=\"2\">\n");
      out.write("              <h1>Rent</h1>\n");
      out.write("                  \n");
      out.write("      \n");
      out.write("              <table>\n");
      out.write("                <tr>\n");
      out.write("                 <td>Client Number</td>\n");
      out.write("                 <td>Plate Number</td>\n");
      out.write("                  <td> Brand </td>\n");
      out.write("                  <td>Capacity</td>\n");
      out.write("                  <td>Starting Date</td>\n");
      out.write("                  <td>Days</td>\n");
      out.write("                </tr>\n");
      out.write("                 ");

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
                  
                  
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td> ");
      out.print(rs.getString(6) );
      out.write(" </td>\n");
      out.write("                      <td>");
      out.print(rs.getString(1));
      out.write("</td>\n");
      out.write("                      <td>");
      out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("                      <td>");
      out.print(rs.getString(4));
      out.write("</td>\n");
      out.write("                       <td>");
      out.print(rs.getString(7));
      out.write("</td>\n");
      out.write("                      <td>");
      out.print(rs.getString(5));
      out.write("</td>\n");
      out.write("                     \n");
      out.write("                </tr>\n");
      out.write("                ");

              }
            conn1.close();
         } catch (SQLException ex) {
             System.out.print(ex);
              out.println(" no \t" );
        ex.printStackTrace();
         }
           
        
        
      out.write("\n");
      out.write("              </table>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"tables t-3 purchase-request\" data-table=\"3\">\n");
      out.write("              <h1>Sells</h1>\n");
      out.write("              <table>\n");
      out.write("                <tr>\n");
      out.write("                  <td>Client Name</td>\n");
      out.write("                  <td>Client Number</td>\n");
      out.write("                  <td>Client Address</td>\n");
      out.write("                  <td>Client Email</td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                  <td>Ndaruhuye Yves</td>\n");
      out.write("                  <td>0788717923</td>\n");
      out.write("                  <td>huye</td>\n");
      out.write("                  <td>yndaruhuye@gmail.com</td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                  <td>Ndaruhuye Yves</td>\n");
      out.write("                  <td>0788717923</td>\n");
      out.write("                  <td>huye</td>\n");
      out.write("                  <td>yndaruhuye@gmail.com</td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                  <td>Ndaruhuye Yves</td>\n");
      out.write("                  <td>0788717923</td>\n");
      out.write("                  <td>huye</td>\n");
      out.write("                  <td>yndaruhuye@gmail.com</td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                  <td>Ndaruhuye Yves</td>\n");
      out.write("                  <td>0788717923</td>\n");
      out.write("                  <td>huye</td>\n");
      out.write("                  <td>yndaruhuye@gmail.com</td>\n");
      out.write("                </tr>\n");
      out.write("              </table>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <script src=\"js/admin.js\"></script>\n");
      out.write("  </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
