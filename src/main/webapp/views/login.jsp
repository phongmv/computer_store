<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login - Clothing Store</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body class="min-h-screen bg-gray-50 flex flex-col">

<!-- Header -->
<header class="bg-white shadow-md fixed w-full top-0 z-50">
    <div class="container mx-auto px-4 py-4 flex justify-between items-center">
        <a href="${pageContext.request.contextPath}/home" class="text-2xl font-bold text-blue-600 hover:text-blue-800">
            <i class="fas fa-tshirt mr-1"></i> Clothing Store
        </a>
        <nav class="flex items-center gap-4">
            <c:if test="${not empty sessionScope.user}">
                <span class="text-gray-700 flex items-center gap-1">
                    <i class="fas fa-user"></i> ${sessionScope.user.fullName}
                </span>
                <a href="${pageContext.request.contextPath}/auth/logout"
                   class="bg-red-500 hover:bg-red-600 text-white px-4 py-2 rounded-md transition flex items-center gap-2">
                    <i class="fas fa-sign-out-alt"></i> Logout
                </a>
            </c:if>
            <c:if test="${empty sessionScope.user}">
                <a href="${pageContext.request.contextPath}/auth/register"
                   class="bg-green-600 hover:bg-green-700 text-white px-4 py-2 rounded-md transition flex items-center gap-2">
                    <i class="fas fa-user-plus"></i> Register
                </a>
            </c:if>
        </nav>
    </div>
</header>

<!-- Main -->
<main class="flex-grow flex items-center justify-center px-4 pt-28 pb-16">
    <form action="${pageContext.request.contextPath}/auth/login" method="post"
          class="bg-white p-8 rounded-lg shadow-lg w-full max-w-md space-y-6 border border-gray-200">

        <div class="text-center">
            <h1 class="text-3xl font-bold text-blue-600 mb-1">
                <i class="fas fa-sign-in-alt mr-2"></i>Login
            </h1>
            <p class="text-gray-500">Welcome back! Please login to your account.</p>
        </div>

        <c:if test="${not empty error}">
            <div class="bg-red-100 text-red-700 px-4 py-2 rounded text-sm font-medium">
                    ${error}
            </div>
        </c:if>

        <div>
            <label for="username" class="block text-gray-700 font-medium mb-1">Username</label>
            <input type="text" id="username" name="username" required
                   class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
        </div>

        <div>
            <label for="password" class="block text-gray-700 font-medium mb-1">Password</label>
            <input type="password" id="password" name="password" required
                   class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
        </div>

        <button type="submit"
                class="w-full bg-blue-600 hover:bg-blue-700 text-white font-semibold py-2 rounded-lg transition">
            <i class="fas fa-lock mr-1"></i> Login
        </button>

        <p class="text-center text-sm text-gray-500">Don't have an account?
            <a href="${pageContext.request.contextPath}/auth/register" class="text-blue-600 hover:underline ml-1">Register</a>
        </p>
    </form>
</main>

<!-- Footer -->
<jsp:include page="./footer.jsp" />
</body>
</html>
