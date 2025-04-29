<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>Register - Shoe Store</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body class="bg-gray-100 min-h-screen flex flex-col">

<jsp:include page="header.jsp"/>

<main class="flex-grow pt-24">
  <div class="max-w-md mx-auto bg-white rounded-lg shadow-md p-8 mt-8">
    <h1 class="text-2xl font-bold text-gray-800 text-center mb-6">
      <i class="fas fa-user-plus mr-2 text-blue-500"></i> Register
    </h1>

    <c:if test="${not empty error}">
      <p class="text-red-500 text-sm font-medium text-center mb-4">${error}</p>
    </c:if>

    <form action="${pageContext.request.contextPath}/auth/register" method="post" class="space-y-4">
      <div>
        <label for="username" class="block text-sm font-medium text-gray-700">Username</label>
        <input type="text" id="username" name="username" required
               class="mt-1 block w-full p-2 rounded-md border border-gray-300 shadow-sm focus:ring-blue-500 focus:border-blue-500">
      </div>

      <div>
        <label for="password" class="block text-sm font-medium text-gray-700">Password</label>
        <input type="password" id="password" name="password" required
               class="mt-1 block w-full p-2 rounded-md border border-gray-300 shadow-sm focus:ring-blue-500 focus:border-blue-500">
      </div>

      <div>
        <label for="email" class="block text-sm font-medium text-gray-700">Email</label>
        <input type="email" id="email" name="email" required
               class="mt-1 block w-full p-2 rounded-md border border-gray-300 shadow-sm focus:ring-blue-500 focus:border-blue-500">
      </div>

      <div>
        <label for="fullName" class="block text-sm font-medium text-gray-700">Full Name</label>
        <input type="text" id="fullName" name="fullName" required
               class="mt-1 block w-full p-2 rounded-md border border-gray-300 shadow-sm focus:ring-blue-500 focus:border-blue-500">
      </div>

      <div>
        <label for="address" class="block text-sm font-medium text-gray-700">Address</label>
        <input type="text" id="address" name="address" required
               class="mt-1 block w-full p-2 rounded-md border border-gray-300 shadow-sm focus:ring-blue-500 focus:border-blue-500">
      </div>

      <div>
        <label for="phone" class="block text-sm font-medium text-gray-700">Phone</label>
        <input type="tel" id="phone" name="phone" required
               class="mt-1 block w-full p-2 rounded-md border border-gray-300 shadow-sm focus:ring-blue-500 focus:border-blue-500">
      </div>

      <div class="flex justify-between pt-4">
        <a href="${pageContext.request.contextPath}/home"
           class="px-4 py-2 border border-gray-300 rounded-md text-gray-700 hover:bg-gray-50">
          Cancel
        </a>
        <button type="submit"
                class="px-4 py-2 bg-blue-600 text-white rounded-md hover:bg-blue-700">
          Register
        </button>
      </div>
    </form>
  </div>
</main>

<jsp:include page="footer.jsp"/>
</body>
</html>
