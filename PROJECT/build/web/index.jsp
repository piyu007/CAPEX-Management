<%-- 
    Document   : index.jsp
    Created on : Dec 9, 2017, 10:35:04 AM
    Author     : it.trainee2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
   
<title>SCHEME ENTRY</title>

<script>
   
   function validatefinyrandscheme() {
    var x = document.forms["myform"]["finyr"].value;
    var y = document.forms["myform"]["scheme_value"].value;
    if (x == "" ) {
        alert("Financial year must be filled out");
        return false;
    } 
    if(y<=0)
    {
        alert("Invalid Scheme Value");
        return false;
    }
    if(x.length!=8){
        alert("Incorrect Financial Year");
    return false;}
    var f4=x.substring(0,4);
    var l4=x.substring(4,8);
    if(f4!=l4-1)
    {
        alert("Incorrect Financial Year");
        return false;
    }
    }
  
    </script>
<style> 
.button {
    background-color: #4CAF50; 
    border: none;
    color: white;
    padding: 10px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s;
    transition-duration: 0.4s;
    cursor: pointer;
}

.button1 {
    background-color: white; 
    color: black; 
    border: 2px solid #4CAF50;
}

.button1:hover {
    background-color: #4CAF50;
    color: white;
}
   

select {
    width: 10%;
    padding: 10px 10px;
    border: none;
    border-radius: 4px;
    background-color: #f1f1f1;
}

input[type=text], select {
    width: 10%;
    padding: 12px 15px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

body, html{
     height: 100%;
 	background-repeat: no-repeat;
 	background:url(https://i.ytimg.com/vi/4kfXjatgeEU/maxresdefault.jpg);
 	font-family: 'Oxygen', sans-serif;
	    background-size: cover;
}

</style>
</head>
<body>
    <form name="myform"  action="scheme.jsp" onsubmit="return validatefinyrandscheme()" method="post">
       <CENTER><h2><font size="10" color="BLACK">SCHEME ENTRY</font></h2>
            
    
 
<br>
<font size="6" color="BLACK">
<td>
 <label for="finyr">Financial year :</label>
</td>
<td>
<input type="text" name="finyr" maxlength="8" size="20" required>
</td>
&emsp;&emsp;&emsp;&nbsp;
Choose Dept :
<select  name="DEPT_DESC">
    <option>(01)FINANCE</option>
    <option>(02)HRD</option>
    <option>(03)IT</option>
    <option>(04)LEGAL</option>
    <option>(05)ELECTRICAL</option>
    <option>(06)CIVIL</option>
    <option>(07)MARKETING</option>
</select>
<BR><BR>
<BR>Item Indicator :
<select name="ITEM_INDICATOR">
    <option>(01)HARDWARE</option>
    <option>(02)SOFTWARE</option>
    <option>(03)MISCELLANEOUS</option>
</select>
&emsp;&emsp;&emsp;&emsp;&emsp;
<td>
 <label for="finyr">Scheme date :</label>
</td>
<td>
<input type="date" name="scheme_date" required >
</td>
<BR><BR>
<br>
<td>
<center> <label for="scheme_value">Scheme Value :</label>
</td>
<td>
<input type="number" name="scheme_value" maxlength="10" size="20" required>
</td>

<BR><BR> 
<center><button class="button button1">SUBMIT</button>
    </form>
   </font>
</body>
</html>
