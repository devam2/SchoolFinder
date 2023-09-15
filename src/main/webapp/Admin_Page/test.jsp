<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
  <title>College Details</title>
</head>
<body>
<h1>College Details</h1>

<c:forEach var="college" items="${details}">
  <h2>${college["Name"]}</h2>
  <p>Location: ${college["Location"]}</p>
  <p>Fee: ${college["Fee"]}</p>
  <p>Seat: ${college["Seat"]}</p>
  <p>Scholarship: ${college["Scholarship"]}</p>
  <p>Level: ${college["Level"]}</p>
  <p>Faculty: ${college["Faculty"]}</p>
  <p>Admission Date: ${college["Admission_Date"]}</p>
  <p>Admission Deadline: ${college["Admission_Deadline"]}</p>
  <p>Type: ${college["Type"]}</p>

  <!-- Display the image using base64 -->
  <img src="data:image/jpeg;base64,${college.image}" alt="College Image" width="200"/>

  <h1>${college["image"]}</h1>

  <hr>
</c:forEach>

</body>
</html>
