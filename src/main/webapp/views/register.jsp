<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>Register - TechZone</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    .input-icon {
      @apply absolute left-3 top-1/2 -translate-y-1/2 text-yellow-500;
    }
    .form-input {
      @apply pl-10 pr-4 py-3 rounded-xl border-2 border-yellow-200 focus:border-yellow-500 focus:ring-2 focus:ring-yellow-300 w-full transition;
    }
  </style>
</head>
<body class="bg-yellow-50 min-h-screen flex flex-col">

<jsp:include page="header.jsp"/>

<main class="flex-grow pt-24 pb-12">
  <div class="max-w-2xl mx-auto bg-white rounded-2xl shadow-xl overflow-hidden border-2 border-yellow-100">
    <!-- Form Header -->
    <div class="bg-gradient-to-r from-yellow-400 to-amber-500 p-6 text-center">
      <h1 class="text-2xl font-bold text-white flex items-center justify-center">
        <i class="fas fa-user-circle mr-3 text-yellow-100"></i>Create Account
      </h1>
    </div>

    <div class="p-8">
      <c:if test="${not empty error}">
        <div class="bg-red-50 border-l-4 border-red-500 text-red-700 p-4 rounded-lg mb-6 flex items-center">
          <i class="fas fa-exclamation-triangle mr-3"></i>
          <div>${error}</div>
        </div>
      </c:if>

      <form action="${pageContext.request.contextPath}/auth/register" method="post" class="space-y-6">
        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
          <!-- Username -->
          <div class="space-y-2">
            <label class="block text-sm font-semibold text-yellow-800">Username</label>
            <div class="relative">
              <i class="fas fa-user input-icon"></i>
              <input type="text" id="username" name="username" required
                     class="form-input" placeholder="Enter username">
            </div>
          </div>

          <!-- Email -->
          <div class="space-y-2">
            <label class="block text-sm font-semibold text-yellow-800">Email</label>
            <div class="relative">
              <i class="fas fa-envelope input-icon"></i>
              <input type="email" id="email" name="email" required
                     class="form-input" placeholder="your@email.com">
            </div>
          </div>

          <!-- Password -->
          <div class="space-y-2">
            <label class="block text-sm font-semibold text-yellow-800">Password</label>
            <div class="relative">
              <i class="fas fa-lock input-icon"></i>
              <input type="password" id="password" name="password" required
                     class="form-input" placeholder="••••••••">
            </div>
          </div>

          <!-- Confirm Password -->
          <div class="space-y-2">
            <label class="block text-sm font-semibold text-yellow-800">Confirm Password</label>
            <div class="relative">
              <i class="fas fa-lock input-icon"></i>
              <input type="password" id="confirmPassword" name="confirmPassword" required
                     class="form-input" placeholder="••••••••">
            </div>
          </div>

          <!-- Full Name -->
          <div class="space-y-2">
            <label class="block text-sm font-semibold text-yellow-800">Full Name</label>
            <div class="relative">
              <i class="fas fa-id-card input-icon"></i>
              <input type="text" id="fullName" name="fullName" required
                     class="form-input" placeholder="John Doe">
            </div>
          </div>

          <!-- Phone -->
          <div class="space-y-2">
            <label class="block text-sm font-semibold text-yellow-800">Phone</label>
            <div class="relative">
              <i class="fas fa-phone input-icon"></i>
              <input type="tel" id="phone" name="phone" required
                     class="form-input" placeholder="0123 456 789">
            </div>
          </div>

          <!-- Address -->
          <div class="md:col-span-2 space-y-2">
            <label class="block text-sm font-semibold text-yellow-800">Address</label>
            <div class="relative">
              <i class="fas fa-map-marker-alt input-icon"></i>
              <input type="text" id="address" name="address" required
                     class="form-input" placeholder="Street, City, Country">
            </div>
          </div>
        </div>

        <!-- Action Buttons -->
        <div class="flex flex-col md:flex-row justify-between gap-4 pt-6">
          <a href="${pageContext.request.contextPath}/home"
             class="flex items-center justify-center px-6 py-3 border-2 border-yellow-500 text-yellow-700 rounded-xl hover:bg-yellow-50 transition-all">
            <i class="fas fa-arrow-left mr-2"></i>Back to Home
          </a>
          <button type="submit"
                  class="flex items-center justify-center px-8 py-3 bg-gradient-to-r from-yellow-500 to-amber-600 text-white rounded-xl font-semibold hover:from-yellow-600 hover:to-amber-700 transition-all transform hover:-translate-y-0.5 shadow-lg hover:shadow-xl">
            <i class="fas fa-user-plus mr-2"></i>Create Account
          </button>
        </div>
      </form>

      <div class="text-center mt-6 text-sm text-yellow-700">
        Already have an account?
        <a href="${pageContext.request.contextPath}/auth/login" class="font-semibold hover:underline">
          Login here
        </a>
      </div>
    </div>
  </div>
</main>

<jsp:include page="footer.jsp"/>
</body>
</html>