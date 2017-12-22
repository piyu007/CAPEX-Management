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
        <style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
}
th {
    text-align: left;
}
table#t01 tr:nth-child(even) {
    background-color: #eee;
}
table#t01 tr:nth-child(odd) {
   background-color:#fff;
}
</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REPORT
</title>       
    </head>
    <body>  <center><h2>SCHEME ENTRY REPORT</h2>
     <table style="width:100%" id="t01">    
<tr>
 <th>FINANCIAL YEAR </th>
<th>DEPT CODE</th>
<th>ITEM INDICATOR</th>
<th>TOTAL BUDGET AMOUNT</th>
<th>SCHEME VALUE</th>
</tr>
<%      
            try{
             Class.forName("oracle.jdbc.OracleDriver") ;
             Connection con= DriverManager.getConnection("jdbc:oracle:thin:@10.50.82.11:1521:SOS2","trainee","trainee");
             Statement st= con.createStatement();            
             ResultSet rs=st.executeQuery("select SCHEME1.FINYR,SCHEME1.DEPT_CODE,SCHEME1.ITEM_INDICATOR,CAPEX.TOTAL_BUDGET_AMT,sum(SCHEME_VALUE) from SCHEME1,CAPEX WHERE SCHEME1.FINYR=CAPEX.FINYR AND SCHEME1.DEPT_CODE=CAPEX.DEPT_CODE AND SCHEME1.ITEM_INDICATOR=CAPEX.ITEM_INDICATOR GROUP BY SCHEME1.FINYR,SCHEME1.DEPT_CODE,SCHEME1.ITEM_INDICATOR,CAPEX.TOTAL_BUDGET_AMT ORDER BY SCHEME1.DEPT_CODE");         
             while(rs.next())
             {
                  %>  <tr>
                <td> <%= rs.getString("FINYR") %></td>
                <td><%= rs.getString("DEPT_CODE") %></td>
                <td><%=rs.getString("ITEM_INDICATOR")%></td>
                <td><%=rs.getString("TOTAL_BUDGET_AMT")%></td>
                <td><%= rs.getString("sum(SCHEME_VALUE)") %></td>
                    
                   <%
             }       
            } 
            catch(Exception e)
            { 
            out.println(e);
            }      
            %>         
            </table>      
</body>
</html>

