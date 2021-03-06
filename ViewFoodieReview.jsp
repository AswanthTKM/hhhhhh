<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Page Title</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <!--<script src='main.js'></script>-->
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body style="background-color:rgb(206, 203, 36); background-image:url(https://images.pexels.com/photos/82256/pexels-photo-82256.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2); background-size: cover;">
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->

    <div  class="container-fluid" >
        <div class="row" style="min-height: 20px;">
        </div>
        
    
          <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
              <a class="navbar-brand" href="#">FOODIE</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
              <div class="navbar navbar-dark bg-primary" id="navbarNavAltMarkup">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                  <li class="nav-item">
                    <a class="nav-link active"  href="fhome">Home</a>
                  </li>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                  <li class="nav-item">
                    <a class="nav-link active"  href="freview">Review</a>
                  </li>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                    <a class="nav-link active"  href="viewfreview">View Reviews</a>
                  </li>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  
                    <a class="btn btn-block btn-dark mb-2"    href="ab">Logout</a>
                  </li>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                </ul>
               </div>
            </div>
        </nav>
          
    </div>

    <div class="container-fluid">
        <div class="row" style="min-height: 40px;">
        </div>
    	<div class="row">
    		<div class="col-md-2">
		    </div>
	    	<div class="col-md-8" >
            	 <form  name="f3" method="post" action="" >
                <div class="row"  >
                    <div class="col-md-3"></div>
                    <div class="col-md-6" style="text-align: center;">
                        <h4 style="color:Maroon;text-decoration: underline; ">Reviews By You</h4>
                    </div>
                    <div class="col-md-3"></div>
                </div>
               
                <table width="100%" class="table table-striped" border="1" style="text-align:center; background-color:snow; border-spacing:12px;">
                    <tr>
                        
                        <th>Vendor ID</th>
                        <th>Vendor Name</th>
                        <th>Location</th>
                        <th>Date of Review</th>
                        <th>Review</th>
                        <th>Ratings</th>
                        <th></th>
                    </tr>
                    <c:forEach  var="r" items="${reviewfAll }">
                    <tr>
                        <td id="vid">${r.vendorid }</td>
                        <td><a href="vendshow/${r.vendorname }">${r.vendorname }</a></td>
                        <td>${r.location }</td>
                        <td>${r.dateofreview }</td>
                        <td>${r.review }</td>
                        <td>${r.ratings }</td>
                        <td>
                          <div class="col-12" style="text-align: center;">
                            <a class="btn btn-block btn-primary mb-1" href="editreview/${r.vendorid }">EDIT</a>
                          </div>
                        </td>
                       
                        
                    </tr>
                    </c:forEach>
                </table>
                <div>
                    <h6 style="color:green;text-align: center;">${msg }</h>
                </div>
                
                </form>
            </div>
            <div class="col-md-2">
              
		        </div>
    	</div>
    </div>
</body>
</html>