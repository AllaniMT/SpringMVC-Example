<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
   <head>
      <meta charset="ISO-8859-1">
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
      <title>Employees</title>
   </head>
   <body>
      <div>
         <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="springMVC">Employee-Manag</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
               <ul class="navbar-nav mr-auto">
                  <li class="nav-item active">
                     <a class="nav-link" href="/springMVC/addEmployee">Add Employee <span class="sr-only">(current)</span></a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link active" href="/springMVC/viewEmployees">View Employees</a>
                  </li>
                  <li class="nav-item dropdown">
                     <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     Dropdown
                     </a>
                     <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Something else here</a>
                     </div>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                  </li>
               </ul>
               <form class="form-inline my-2 my-lg-0">
                  <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                  <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
               </form>
            </div>
         </nav>
      </div>
      <div>
      </div>
      <h1>All Employee</h1>
      <div class="container">
      <table width="100%" class="table-bordered active">
         <tr>
            <th>Phone</th>
            <th>Age</th>
            <th>Weight</th>
            <th>Height</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Gender</th>
            <th>E-Mail</th>
            <th>City</th>
            <th>Country</th>
         </tr>
         <c:forEach var="employee" items="${listofEmployees}">
            <tr>
               <td>${employee.phone}</td>
               <td>${employee.age}</td>
               <td>${employee.weight}</td>
               <td>${employee.height}</td>
               <td>${employee.fName}</td>
               <td>${employee.lName}</td>
               <td>${employee.gender}</td>
               <td>${employee.eMail}</td>
               <td>${employee.city}</td>
               <td>${employee.country}</td>
               <td><a href="updateEmployee/${employee.id}">Edit</a></td>
               <td><a href="deleteEmployee/${employee.id}">Delete</a></td>
            </tr>
         </c:forEach>
      </table>
      <div>
         <ul>
            <li><a class="btn btn-succes btn-lg" href="/springMVC/addEmployee">Add Employee</a></li>
         </ul>
      </div>
      </div>
   </body>
</html>