<%-- 
    Document   : index.jsp
--%>
    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
   <b><title>SCHEME ENTRY</title></b>
<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap Template</title>
        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
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
body, html{
     height: 100%;
 	 background-repeat: no-repeat;
     background:url(https://cdn.wallpapersafari.com/10/98/S8k6zF.png);	
     background-size: cover;
}
</style>
<style type="text/css">
   input {font-weight:bold;}
</style>
</head>    
<form name="myform"  action="scheme.jsp" onsubmit="return validatefinyrandscheme()" method="post">
      <!-- Top content -->
        <div class="top-content">       	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
	  <h2><font size="10" color="BLACK">SCHEME ENTRY</font></h2>           
     </div>
    </div>                  
 <div class="form-bottom">
<div class="form-group">
<label for="finyr">FINANCIAL YEAR :</label>
 <input type="bold text" name="finyr" class="form-control" maxlength="8" size="20" required>
</div>
<div class="form-group">
<label for="dept_code">CHOOSE DEPARTMENT :</label>
<b>
<select  name="DEPT_DESC" class="form-control">
    <option>(01)FINANCE</option>
    <option>(02)HRD</option>
    <option>(03)IT</option>
    <option>(04)LEGAL</option>
    <option>(05)ELECTRICAL</option>
    <option>(06)CIVIL</option>
    <option>(07)MARKETING</option>
</select></b>
</div>
<div class="form-group">
<label for="item_indicator">ITEM INDICATOR :</label>
<b><select  name="ITEM_INDICATOR" class="form-control">
    <option >(01)HARDWARE</option>
    <option>(02)SOFTWARE</option>
    <option>(03)MISCELLANEOUS</option>
    </select></b>
</div>
<div class="form-group">
 <label for="finyr">SCHEME DATE :</label>
 <b><input type="date" class="form-control" name="scheme_date" required ></b>
</div>
<div class="form-group">
 <label for="scheme_value">SCHEME VALUE :</label>
 <b><input type="number" name="scheme_value" class="form-control" maxlength="10" size="20" required></b>
</div>
     <center> <button type="submit" class="btn">SUBMIT</button>
    </form>
	</div>
	</div>
	</div>
	</div>
</html>
