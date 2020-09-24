<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
   <head>
      <meta charset="ISO-8859-1">
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
      <title>Insert title here</title>
   </head>
   <body>
      <div>
         <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="/springMVC">Employee-Manag</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
               <ul class="navbar-nav mr-auto">
                  <li class="nav-item active">
                     <a class="nav-link active" href="/springMVC/addEmployee">Add Employee <span class="sr-only">(current)</span></a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" href="/springMVC/viewEmployees">View Employees</a>
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
         <h1>Update Employee Info</h1>
         <div>
            <form:form method="post" action="/springMVC/saveUpdate">
               <table class="table-striped" class="table">
               <tr>
                     <td>Id</td>
                     <td>
                        <form:input path="id" class="form-control" disabled="true"/>
                     </td>
                  </tr>
                  <tr>
                     <td>Phone Number</td>
                     <td>
                        <form:input path="phone" class="form-control"/>
                     </td>
                  </tr>
                  <tr>
                     <td>Age</td>
                     <td>
                        <form:input path="age" class="form-control"/>
                     </td>
                  </tr>
                  <tr>
                     <td>Weight</td>
                     <td>
                        <form:input path="weight" class="form-control"/>
                     </td>
                  </tr>
                  <tr>
                     <td>Height</td>
                     <td>
                        <form:input path="height" class="form-control"/>
                     </td>
                  </tr>
                  <tr>
                     <td>First Name</td>
                     <td>
                        <form:input path="fName" class="form-control"/>
                     </td>
                  </tr>
                  <tr>
                     <td>Last Name</td>
                     <td>
                        <form:input path="lName" class="form-control"/>
                     </td>
                  </tr>
                  <tr>
                     <td>Gender</td>
                     <td>
                        <form:input path="gender" class="form-control"/>
                     </td>
                  </tr>
                  <tr>
                     <td>E-Mail</td>
                     <td>
                        <form:input path="eMail" class="form-control"/>
                     </td>
                  </tr>
                  <tr>
                     <td>City</td>
                     <td>
                        <form:input path="city" class="form-control"/>
                     </td>
                  </tr>
                  <tr>
                     <td>Country</td>
                     <td>
                        <form:input path="country" class="form-control"/>
                     </td>
                  </tr>
                  <tr>
                     <td><input type="submit" value="save" class="btn btn-primary btn-lg"/></td>
                  </tr>
               </table>
            </form:form>
         </div>
      </div>
   </body>
</html>