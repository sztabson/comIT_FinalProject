/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2018-09-10 23:48:49 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class edit_005fclient_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<!-- saved from url=(0054)https://getbootstrap.com/docs/4.1/examples/dashboard/# -->\r\n");
      out.write("<html lang=\"en\"><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("    \r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("    <meta name=\"description\" content=\"\">\r\n");
      out.write("    <meta name=\"author\" content=\"\">\r\n");
      out.write("    <link rel=\"icon\" href=\"./Signin/bootstrap-solid.jpg\">\r\n");
      out.write("\r\n");
      out.write("    <title>IDC</title>\r\n");
      out.write("\r\n");
      out.write("    <!-- Bootstrap core CSS -->\r\n");
      out.write("    <link href=\"./Signin/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("    <!-- Custom styles for this template -->\r\n");
      out.write("    <link href=\"./Signin/dashboard.css\" rel=\"stylesheet\">\r\n");
      out.write("  <style type=\"text/css\">/* Chart.js */\r\n");
      out.write("@-webkit-keyframes chartjs-render-animation{from{opacity:0.99}to{opacity:1}}@keyframes chartjs-render-animation{from{opacity:0.99}to{opacity:1}}.chartjs-render-monitor{-webkit-animation:chartjs-render-animation 0.001s;animation:chartjs-render-animation 0.001s;}</style></head>\r\n");
      out.write("\r\n");
      out.write("  <body>\r\n");
      out.write("    <nav class=\"navbar navbar-expand-md navbar-dark bg-dark fixed-top\">\r\n");
      out.write("      <a class=\"navbar-brand\" href=\"/idc_w.do\">IDC</a>\r\n");
      out.write("      <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarsExampleDefault\" aria-controls=\"navbarsExampleDefault\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("        <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("      </button>\r\n");
      out.write("\r\n");
      out.write("      <div class=\"collapse navbar-collapse\" id=\"navbarsExampleDefault\">\r\n");
      out.write("        <ul class=\"navbar-nav mr-auto\">\r\n");
      out.write("\r\n");
      out.write("          <li class=\"nav-item\">\r\n");
      out.write("            <a class=\"nav-link\" href=\"/clients.do\">Report</a>\r\n");
      out.write("          </li>\r\n");
      out.write("\r\n");
      out.write("\t\t  <li class=\"nav-item text-nowrap\">\r\n");
      out.write("            <a class=\"nav-link\" href=\"/login.do\">Sign out</a>\r\n");
      out.write("          </li>\r\n");
      out.write("\r\n");
      out.write("        </ul>\r\n");
      out.write("\r\n");
      out.write("      </div>\r\n");
      out.write("    </nav>\r\n");
      out.write("<main role=\"main\" class=\"col-md-9 ml-sm-auto col-lg-10 px-4\"><div class=\"chartjs-size-monitor\" style=\"position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;\"><div class=\"chartjs-size-monitor-expand\" style=\"position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;\"><div style=\"position:absolute;width:1000000px;height:1000000px;left:0;top:0\"></div></div><div class=\"chartjs-size-monitor-shrink\" style=\"position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;\"><div style=\"position:absolute;width:200%;height:200%;left:0; top:0\"></div></div></div>\r\n");
      out.write("\r\n");
      out.write("\t <div class=\"d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom\">\r\n");
      out.write("            <h1 class=\"h2\">Edit ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${client.WO}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("</h1>\r\n");
      out.write("            </div>    \r\n");
      out.write("\t <form  name=\"f1\" action=\"/edit_client.do\" method=\"POST\">\r\n");
      out.write("             <div class=\"mb-3\">\r\n");
      out.write("               <label for=\"workOrder\">Work Order</label>\r\n");
      out.write("               <div class=\"input-group\">\r\n");
      out.write("                 <div class=\"input-group-prepend\">\r\n");
      out.write("                   <span class=\"input-group-text\">#</span>\r\n");
      out.write("                 </div>\r\n");
      out.write("                 <input type=\"text\" class=\"form-control\" name=\"wo\" id=\"inputWO\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${client.WO}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" required=\"\">\r\n");
      out.write("                 <div class=\"invalid-feedback\" style=\"width: 100%;\">\r\n");
      out.write("                   Work Order is required.\r\n");
      out.write("                 </div>\r\n");
      out.write("               </div>\r\n");
      out.write("             </div>\r\n");
      out.write("             <div class=\"mb-3\">\r\n");
      out.write("                <label for=\"Address\">Address</label>\r\n");
      out.write("                <input type=\"text\" class=\"form-control\" name=\"address\" id=\"inputAddress\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${client.address}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" required=\"\">\r\n");
      out.write("                <div class=\"invalid-feedback\">\r\n");
      out.write("                  Address is required.\r\n");
      out.write("                </div>\r\n");
      out.write("             </div>\r\n");
      out.write("             <div class=\"mb-3\">\r\n");
      out.write("              <label for=\"circuitNumber\">Circuit number</label>\r\n");
      out.write("              <div class=\"input-group\">\r\n");
      out.write("                <div class=\"input-group-prepend\">\r\n");
      out.write("                  <span class=\"input-group-text\">tel:</span>\r\n");
      out.write("                </div>\r\n");
      out.write("                <input type=\"text\" class=\"form-control\" name=\"phone\" id=\"inputPhone\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${client.phone}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" placeholder=\"Circuit number\" required=\"\">\r\n");
      out.write("                <div class=\"invalid-feedback\" style=\"width: 100%;\">\r\n");
      out.write("                  Circuit number is required.\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("<!-- \r\n");
      out.write("            <div class=\"mb-3\">\r\n");
      out.write("              <label for=\"comments\">Comments <span class=\"text-muted\">(Optional)</span></label>\r\n");
      out.write("              <input type=\"text\" class=\"form-control\" id=\"comments\" placeholder=\"Comments\">\r\n");
      out.write("            </div>\r\n");
      out.write("-->\t\t\t\r\n");
      out.write("            <div class=\"mb-3\">\r\n");
      out.write("              <label for=\"mileage\">Mileage Charges <span class=\"text-muted\"></span></label>\r\n");
      out.write("              <input type=\"text\" class=\"form-control\" name=\"mileage\" id=\"inputMileage\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${client.mileage}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\">\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"mb-3\">\r\n");
      out.write("              <label for=\"install\">Install name <span class=\"text-muted\"></span></label>\r\n");
      out.write("              <input type=\"text\" class=\"form-control\" name=\"install\" id=\"inputinstall\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${client.install}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\">\r\n");
      out.write("            </div>\r\n");
      out.write("            <br/>\r\n");
      out.write("         \r\n");
      out.write("            <hr class=\"mb-4\">\r\n");
      out.write("\t\t\t<input id=\"id\" name=\"id\" type=\"hidden\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${client.ID}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\">\r\n");
      out.write("\t\t\t<button class=\"btn btn-primary btn-lg btn-block\" value=\"Submit\" type=\"submit\">Submit</button>\r\n");
      out.write("           </form>\r\n");
      out.write("           </main>\r\n");
      out.write("\t</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
