<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<header class="bg-white border-b border-gray-200 fixed top-0 w-full z-50 shadow-sm">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex justify-between h-16 items-center">
            <!-- Logo -->
            <div class="flex-shrink-0 flex items-center">
                <a href="${pageContext.request.contextPath}/home" class="text-2xl font-bold text-indigo-600 hover:text-indigo-800 transition-colors">
                    <span class="hidden sm:inline">FS-Modern</span>
                    <span class="sm:hidden">FS</span>
                </a>
            </div>

            <!-- Main Navigation -->
            <nav class="flex space-x-2 sm:space-x-4 items-center">
                <!-- User info if logged in -->
                <c:if test="${not empty sessionScope.user}">
                    <div class="hidden md:flex items-center space-x-2 px-3 py-2 rounded-lg bg-gray-50">
                        <div class="w-8 h-8 rounded-full bg-indigo-100 flex items-center justify-center text-indigo-600">
                            <i class="fas fa-user text-sm"></i>
                        </div>
                        <span class="text-sm font-medium text-gray-700">${sessionScope.user.fullName}</span>
                    </div>

                    <a href="${pageContext.request.contextPath}/auth/logout"
                       class="flex items-center px-3 py-2 text-sm font-medium text-gray-600 hover:text-indigo-600 hover:bg-gray-50 rounded-lg transition-colors">
                        <i class="fas fa-sign-out-alt mr-1"></i>
                        <span class="hidden sm:inline">Logout</span>
                    </a>
                </c:if>

                <!-- Auth buttons if not logged in -->
                <c:if test="${empty sessionScope.user}">
                    <a href="${pageContext.request.contextPath}/auth/login"
                       class="flex items-center px-3 py-2 text-sm font-medium text-gray-600 hover:text-indigo-600 hover:bg-gray-50 rounded-lg transition-colors">
                        <i class="fas fa-sign-in-alt mr-1"></i>
                        <span class="hidden sm:inline">Login</span>
                    </a>
                    <a href="${pageContext.request.contextPath}/auth/register"
                       class="flex items-center px-3 py-2 text-sm font-medium text-white bg-indigo-600 hover:bg-indigo-700 rounded-lg transition-colors">
                        <i class="fas fa-user-plus mr-1"></i>
                        <span class="hidden sm:inline">Register</span>
                    </a>
                </c:if>

                <!-- Cart button -->
                <a href="${pageContext.request.contextPath}/cart"
                   class="relative flex items-center px-3 py-2 text-sm font-medium text-gray-600 hover:text-indigo-600 hover:bg-gray-50 rounded-lg transition-colors">
                    <i class="fas fa-shopping-cart"></i>
                    <c:if test="${not empty sessionScope.cart}">
                        <span class="absolute -top-1 -right-1 bg-red-500 text-white text-xs rounded-full h-5 w-5 flex items-center justify-center">
                                ${fn:length(sessionScope.cart)}
                        </span>
                    </c:if>
                    <span class="hidden sm:inline ml-1">Cart</span>
                </a>

                <!-- Add Product button -->
                <a href="${pageContext.request.contextPath}/product-new"
                   class="flex items-center px-3 py-2 text-sm font-medium text-white bg-gray-600 hover:bg-gray-700 rounded-lg transition-colors">
                    <i class="fas fa-plus-circle mr-1"></i>
                    <span class="hidden sm:inline">Add Product</span>
                </a>
            </nav>
        </div>
    </div>
</header>