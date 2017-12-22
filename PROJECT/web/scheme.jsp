<%-- 
    Document   : scheme.jsp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Scheme Entry
</title>       
    </head>
    <body>
        <%
            String finyr = request.getParameter("finyr");
            String dept_code = request.getParameter("DEPT_DESC");
            String item_indicator = request.getParameter("ITEM_INDICATOR");
            String scheme_date = request.getParameter("scheme_date");
            String scheme_value = request.getParameter("scheme_value");            
            try{
             Class.forName("oracle.jdbc.OracleDriver") ;
             Connection con= DriverManager.getConnection("jdbc:oracle:thin:@10.50.82.11:1521:SOS2","trainee","trainee");
             Statement st= con.createStatement();
             ResultSet rs1=st.executeQuery("select * from SCHEME1");
             int sum=Integer.parseInt(scheme_value);
             while(rs1.next())
             {
                 if(rs1.getString("FINYR").equals(finyr) && rs1.getString("DEPT_CODE").equals(dept_code) && rs1.getString("ITEM_INDICATOR").equals(item_indicator))
                 {
                     sum+=Integer.parseInt(rs1.getString("SCHEME_VALUE"));
                     //out.println("sum:"+sum);
                 }
             }
             int total_budget_amt=0;
             Statement st2= con.createStatement();
             ResultSet rs2=st2.executeQuery("select * from CAPEX");
             while(rs2.next()){
                 if(rs2.getString("FINYR").equals(finyr) && rs2.getString("DEPT_CODE").equals(dept_code) && rs2.getString("ITEM_INDICATOR").equals(item_indicator))
                 {
                     total_budget_amt=Integer.parseInt(rs2.getString("TOTAL_BUDGET_AMT"));
                     //out.println("TOTAL:"+total_budget_amt);
                     break;
                 }
             }
             if(total_budget_amt>=sum)
             {
             st.executeUpdate("INSERT INTO SCHEME1(FINYR,DEPT_CODE,ITEM_INDICATOR,SCHEME_VALUE,SCHEME_DATE)VALUES('"+finyr+"','"+dept_code+"','"+item_indicator+"','"+scheme_value+"',TO_DATE('"+scheme_date+"','RRRR-MM-DD'))");
              out.println("<script type=\"text/javascript\">");
              out.println("alert('Submit Successful');");
              out.println("location='index.jsp';");
              out.println("</script>");
     
             }
             else
             {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Budget Limit Exceeded');");
                out.println("location='index.jsp';");
                out.println("</script>");               
             }
            } 
            catch(Exception e)
            { 
            out.println(e);
            }
            
            %>         
    </body>
</html>

