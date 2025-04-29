<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login - TechZone</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        .auth-bg {
            background: linear-gradient(135deg, rgba(234, 179, 8, 0.08) 0%, rgba(255,255,255,1) 70%);
        }
        .form-input:focus {
            box-shadow: 0 0 0 3px rgba(234, 179, 8, 0.15);
        }
        .animate-fade-in {
            animation: fadeIn 0.3s ease-in;
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-10px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body class="min-h-screen bg-gray-50 flex flex-col font-sans">

<!-- Header -->
<header class="bg-yellow-100 shadow-sm fixed w-full top-0 z-50">
    <div class="container mx-auto px-6 py-4 flex justify-between items-center">
        <a href="${pageContext.request.contextPath}/home"
           class="flex items-center text-2xl font-bold text-yellow-600 hover:text-yellow-800 transition-colors group">
            <i class="fas fa-laptop-code mr-2 group-hover:rotate-12 transition-transform"></i>
            <span class="bg-gradient-to-r from-yellow-600 to-amber-600 bg-clip-text text-transparent">
                TechZone
            </span>
        </a>
        <nav class="flex items-center space-x-4">
            <c:if test="${not empty sessionScope.user}">
                <div class="flex items-center space-x-2 text-gray-700 bg-gray-100 px-4 py-2 rounded-lg">
                    <i class="fas fa-user-circle text-yellow-500"></i>
                    <span class="font-medium">${sessionScope.user.fullName}</span>
                </div>
                <a href="${pageContext.request.contextPath}/auth/logout"
                   class="flex items-center space-x-2 bg-red-500 hover:bg-red-600 text-white px-4 py-2 rounded-lg transition-all shadow-sm hover:shadow-md">
                    <i class="fas fa-sign-out-alt"></i>
                    <span>Logout</span>
                </a>
            </c:if>
            <c:if test="${empty sessionScope.user}">
                <a href="${pageContext.request.contextPath}/auth/register"
                   class="flex items-center space-x-2 bg-gradient-to-r from-yellow-500 to-amber-600 hover:from-yellow-600 hover:to-amber-700 text-white px-4 py-2 rounded-lg transition-all shadow-sm hover:shadow-md">
                    <i class="fas fa-user-plus"></i>
                    <span>Register</span>
                </a>
            </c:if>
        </nav>
    </div>
</header>

<!-- Main Content -->
<main class="flex-grow flex items-center justify-center px-4 pt-24 pb-16 auth-bg">
    <div class="w-full max-w-md mx-4 animate-fade-in">
        <div class="bg-white rounded-2xl shadow-2xl overflow-hidden border border-gray-100 transform transition-all hover:shadow-3xl">
            <!-- Decorative Header -->
            <div class="bg-gradient-to-r from-amber-500 to-yellow-600 p-6 text-center relative overflow-hidden">
                <div class="absolute inset-0 opacity-10" style="background-image: url('data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTYuNSAxMy41VjE1LjVDNi41IDE1Ljc2NTIgNi43MzQ3OCAxNiA3IDE2SDE1QzE1LjI2NTIgMTYgMTUuNSAxNS43NjUyIDE1LjUgMTUuNVY5LjVDMTUuNSA5LjIzNDc4IDE1LjI2NTIgOSAxNSA5SDEzLjVWNi41QzEzLjUgNC4wMTQ3MiAxMS40ODUzIDIgOSAyQzYuNTE0NzIgMiA0LjUgNC4wMTQ3MiA0LjUgNi41VjlIMy41QzMuMjM0NzggOSAzIDkuMjM0NzggMyA5LjVWMTUuNUMzIDE1Ljc2NTIgMy4yMzQ3OCAxNiAzLjUgMTZINi41VjEzLjVDNi41IDEzLjIzNDggNi43MzQ3OCAxMyA3IDEzSDkuNUM5Ljc2NTIyIDEzIDEwIDEzLjIzNDggMTAgMTMuNVYxNiIgc3Ryb2tlPSJ3aGl0ZSIgc3Ryb2tlLW9wYWNpdHk9IjAuMiIgc3Ryb2tlLXdpZHRoPSIxLjUiLz4KPC9zdmc+')"></div>
                <h1 class="text-2xl font-bold text-white flex items-center justify-center">
                    <i class="fas fa-fingerprint mr-3 text-amber-200"></i>Welcome Back
                </h1>
            </div>

            <!-- Login Form -->
            <form action="${pageContext.request.contextPath}/auth/login" method="post" class="p-6 space-y-6">
                <c:if test="${not empty error}">
                    <div class="bg-amber-50 border-l-4 border-amber-500 text-amber-700 p-4 rounded-lg flex items-start animate-fade-in">
                        <i class="fas fa-exclamation-triangle mt-1 mr-3 text-amber-500"></i>
                        <div class="flex-1">${error}</div>
                        <button type="button" class="text-amber-500 hover:text-amber-700" onclick="this.parentElement.remove()">
                            <i class="fas fa-times"></i>
                        </button>
                    </div>
                </c:if>

                <div class="space-y-2">
                    <label for="username" class="block text-sm font-medium text-gray-700">Username</label>
                    <div class="relative">
                        <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                            <i class="fas fa-user text-gray-400 text-sm"></i>
                        </div>
                        <input type="text" id="username" name="username" required
                               class="form-input block w-full pl-10 pr-3 py-3 border border-gray-300 rounded-xl focus:outline-none transition placeholder-gray-400"
                               placeholder="john.doe">
                    </div>
                </div>

                <div class="space-y-2">
                    <label for="password" class="block text-sm font-medium text-gray-700">Password</label>
                    <div class="relative">
                        <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                            <i class="fas fa-lock text-gray-400 text-sm"></i>
                        </div>
                        <input type="password" id="password" name="password" required
                               class="form-input block w-full pl-10 pr-3 py-3 border border-gray-300 rounded-xl focus:outline-none transition placeholder-gray-400"
                               placeholder="••••••••">
                        <button type="button" class="absolute right-3 top-3 text-gray-400 hover:text-yellow-500"
                                onclick="togglePasswordVisibility()">
                            <i class="fas fa-eye-slash"></i>
                        </button>
                    </div>
                </div>

                <div class="flex items-center justify-between">
                    <div class="flex items-center">

                    </div>

                </div>

                <button type="submit"
                        class="w-full flex justify-center items-center py-3.5 px-4 border border-transparent rounded-xl shadow-sm text-white bg-gradient-to-r from-yellow-500 to-amber-600 hover:from-yellow-600 hover:to-amber-700 font-medium focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-yellow-500 transition-all transform hover:-translate-y-0.5">
                    <i class="fas fa-unlock-alt mr-2"></i> Sign In
                </button>

                <div class="text-center text-sm text-gray-500">
                    New to TechZone?
                    <a href="${pageContext.request.contextPath}/auth/register"
                       class="font-medium text-yellow-700 hover:text-yellow-800 hover:underline ml-1.5">
                        Create account
                    </a>
                </div>
            </form>
        </div>
    </div>
</main>

<!-- Footer -->
<jsp:include page="./footer.jsp" />

<script>
    function togglePasswordVisibility() {
        const passwordField = document.getElementById('password');
        const toggleButton = document.querySelector('[onclick="togglePasswordVisibility()"] i');
        if (passwordField.type === 'password') {
            passwordField.type = 'text';
            toggleButton.classList.replace('fa-eye-slash', 'fa-eye');
        } else {
            passwordField.type = 'password';
            toggleButton.classList.replace('fa-eye', 'fa-eye-slash');
        }
    }
</script>
</body>
</html>