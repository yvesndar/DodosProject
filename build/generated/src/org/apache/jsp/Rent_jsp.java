package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Rent_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       <header>\n");
      out.write("      <nav id=\"navigation\" class=\"navigation\">\n");
      out.write("        <a href=\"\" class=\"logo\">GORILLA MOTORS</a>\n");
      out.write("        <div id=\"nav-menu\" class=\"nav_menu\">\n");
      out.write("          <ul id=\"nav_list\" class=\"nav_list\">\n");
      out.write("            <li class=\"nav_item\">\n");
      out.write("                <a href=\"/Home.html\" id=\"home\" class=\"links\">Home</a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav_item\">\n");
      out.write("                <a href=\"/About.html\" id=\"about\" class=\"links\">About</a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav_item\">\n");
      out.write("                <a href=\"/Rent.jsp\" id=\"rental\" class=\"links\">Rentals</a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav_item\">\n");
      out.write("              <a href=\"\" id=\"buy\" class=\"links\">Buy a Car</a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav_item\">\n");
      out.write("              <a href=\"\" id=\"repair\" class=\"links\">Repair Shop</a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav_item\">\n");
      out.write("              <a href=\"\" id=\"order\" class=\"links\">Order a Car</a>\n");
      out.write("            </li>\n");
      out.write("          </ul>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"nav-toggle\" class=\"nav_toggle\">\n");
      out.write("          <img\n");
      out.write("            alt=\"toggle\"\n");
      out.write("            onclick=\"togglemenu()\"\n");
      out.write("            src=\"/web/images/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAIBJREFUSEvtVUEOgDAI616m/lxfNmMixrBgids4sePoaCiUFUw+ZXJ+hBPsABajqiu23TEvrqmgEsmkYi/OJNDSSUJNwHBJwBWwNLR63d3kr/E7AKyOMX3j4o02fHPoHngd6sWlk//7gO0YvZtkOJp7lsh62E2QTn4UCP+Th6+KE3LlOBnu4XThAAAAAElFTkSuQmCC\"\n");
      out.write("          />\n");
      out.write("        </div>\n");
      out.write("      </nav>\n");
      out.write("    </header>\n");
      out.write("    </body>\n");
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
