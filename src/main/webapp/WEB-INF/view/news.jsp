
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Main CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">


    <title>COVID-19 Tracker</title>
  
  </head>
  <body>

    <div class="container">

      <div class="row">
          <div class="col-md-12">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="#">COVID-19 Tracker</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                      <a class="nav-link" href="${pageContext.request.contextPath}/">Status <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="map">Map</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="labs">Testing Locations</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="news">News</a>
                    </li>
                  </ul>
                </div>
          </nav>

      </div>

   </div>
        <div class="row" style="margin-top:10px">
            <div class="col-md-12">
            <h2 style="text-align:center">Covid-19 News</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                  <c:forEach var="news" items="${newsList}">
                      <div class="card" style="width: 100%; margin-bottom: 20px">
 
                        <div class="card-body">
                          <h5 class="card-title">${news.title}</h5>
<!--                          <p class="card-text">${news.description}</p>-->
                          <p class="card-text">${news.content}<a href="${news.url}" target="_blank" >Read more</a><br></p>
                          <b>Source:</b>${news.source}
                        </div>
                      </div>
                
                    </c:forEach>
            </div>
            <div class="col-md-2"></div>

        </div>     
               
                    
                    
  
   </div> 
                    
                     
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>   
  </body>
</html>
<%-- 
    Document   : lab
    Created on : Apr 24, 2020, 7:34:28 PM
    Author     : dimiksonkha
--%>

    <body>
        <h1></h1>

          
      
         
    </body>
</html>
