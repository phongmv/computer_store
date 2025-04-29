<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modern Fashion | Home</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        .product-card:hover .product-image {
            transform: scale(1.05);
        }
        .category-card:hover .category-image {
            transform: scale(1.1);
        }
    </style>
</head>
<body class="bg-gray-50 font-sans">

<!-- Header -->
<jsp:include page="./header.jsp"/>


<!-- Featured Products -->
<section class="py-20" id="featured">
    <div class="container mx-auto px-4">
        <div class="flex flex-col md:flex-row justify-between items-center mb-12">
            <h2 class="text-3xl font-bold mb-4 md:mb-0">Our Products</h2>

            <c:if test="${not empty selectedCategory}">
                <div class="flex items-center space-x-4">
                    <span class="bg-indigo-100 text-indigo-800 px-4 py-2 rounded-full text-sm font-medium">
                            ${fn:toUpperCase(fn:substring(selectedCategory, 0, 1))}${fn:toLowerCase(fn:substring(selectedCategory, 1, -1))}
                    </span>
                    <a href="${pageContext.request.contextPath}/home?page=1"
                       class="text-gray-500 hover:text-indigo-600 flex items-center transition">
                        <i class="fas fa-times mr-1"></i> Clear
                    </a>
                </div>
            </c:if>
        </div>

        <c:choose>
            <c:when test="${empty products}">
                <div class="col-span-full text-center py-16">
                    <div class="mx-auto w-24 h-24 bg-gray-200 rounded-full flex items-center justify-center mb-6">
                        <i class="fas fa-tshirt text-3xl text-gray-400"></i>
                    </div>
                    <h3 class="text-2xl font-semibold text-gray-700 mb-2">No products found</h3>
                    <p class="text-gray-500 max-w-md mx-auto">
                        <c:choose>
                            <c:when test="${not empty selectedCategory}">
                                We couldn't find any products in the ${selectedCategory} category.
                            </c:when>
                            <c:otherwise>
                                Our inventory is currently being updated. Please check back later.
                            </c:otherwise>
                        </c:choose>
                    </p>
                </div>
            </c:when>
            <c:otherwise>
                <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-8">
                    <c:forEach items="${products}" var="product">
                        <div class="product-card bg-white rounded-xl overflow-hidden shadow-sm hover:shadow-md transition duration-300 h-full flex flex-col">
                            <a href="${pageContext.request.contextPath}/product-detail?id=${product.id}" class="block overflow-hidden">
                                <div class="relative pt-[100%] overflow-hidden">
                                    <img src="${not empty product.image ? 'data:image/jpeg;base64,'.concat(product.getImageBase64()) : 'https://via.placeholder.com/500x500?text=No+Image'}"
                                         alt="${product.name}"
                                         class="product-image absolute inset-0 w-full h-full object-cover transition duration-500"
                                         onerror="this.src='https://via.placeholder.com/500x500?text=Image+Error'">
                                </div>
                            </a>
                            <div class="p-4 flex-grow flex flex-col">
                                <div class="mb-2">
                                    <span class="inline-block bg-gray-100 text-gray-600 text-xs px-2 py-1 rounded">
                                            ${not empty product.category ? product.category : 'Uncategorized'}
                                    </span>
                                </div>
                                <h3 class="font-semibold text-lg mb-2">
                                    <a href="${pageContext.request.contextPath}/product-detail?id=${product.id}" class="hover:text-indigo-600 transition">
                                            ${product.name}
                                    </a>
                                </h3>
                                <div class="mt-auto flex justify-between items-center">
                                    <span class="text-indigo-600 font-bold">$${product.price}</span>
                                    <button class="text-gray-400 hover:text-indigo-600 transition">
                                        <i class="fas fa-heart"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </c:otherwise>
        </c:choose>

        <!-- Pagination -->
        <c:if test="${not empty totalPages and totalPages > 1}">
            <div class="flex justify-center mt-16">
                <nav class="inline-flex rounded-md shadow-sm -space-x-px" aria-label="Pagination">
                    <!-- Previous Button -->
                    <c:choose>
                        <c:when test="${currentPage > 1}">
                            <a href="${pageContext.request.contextPath}/${paginationUrl}${currentPage - 1}"
                               class="relative inline-flex items-center px-3 py-2 rounded-l-md border border-gray-300 bg-white text-sm font-medium text-gray-500 hover:bg-gray-50">
                                <span class="sr-only">Previous</span>
                                <i class="fas fa-chevron-left"></i>
                            </a>
                        </c:when>
                        <c:otherwise>
                            <span class="relative inline-flex items-center px-3 py-2 rounded-l-md border border-gray-300 bg-gray-100 text-sm font-medium text-gray-400 cursor-not-allowed">
                                <span class="sr-only">Previous</span>
                                <i class="fas fa-chevron-left"></i>
                            </span>
                        </c:otherwise>
                    </c:choose>

                    <!-- Page Numbers -->
                    <c:set var="startPage" value="${currentPage - 2 > 1 ? currentPage - 2 : 1}" />
                    <c:set var="endPage" value="${currentPage + 2 < totalPages ? currentPage + 2 : totalPages}" />

                    <c:if test="${startPage > 1}">
                        <a href="${pageContext.request.contextPath}/${paginationUrl}1"
                           class="relative inline-flex items-center px-4 py-2 border border-gray-300 bg-white text-sm font-medium text-gray-700 hover:bg-gray-50">
                            1
                        </a>
                        <c:if test="${startPage > 2}">
                            <span class="relative inline-flex items-center px-4 py-2 border border-gray-300 bg-white text-sm font-medium text-gray-700">
                                ...
                            </span>
                        </c:if>
                    </c:if>

                    <c:forEach begin="${startPage}" end="${endPage}" var="i">
                        <c:choose>
                            <c:when test="${i == currentPage}">
                                <span aria-current="page" class="relative inline-flex items-center px-4 py-2 border border-indigo-500 bg-indigo-50 text-sm font-medium text-indigo-600">
                                        ${i}
                                </span>
                            </c:when>
                            <c:otherwise>
                                <a href="${pageContext.request.contextPath}/${paginationUrl}${i}"
                                   class="relative inline-flex items-center px-4 py-2 border border-gray-300 bg-white text-sm font-medium text-gray-700 hover:bg-gray-50">
                                        ${i}
                                </a>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>

                    <c:if test="${endPage < totalPages}">
                        <c:if test="${endPage < totalPages - 1}">
                            <span class="relative inline-flex items-center px-4 py-2 border border-gray-300 bg-white text-sm font-medium text-gray-700">
                                ...
                            </span>
                        </c:if>
                        <a href="${pageContext.request.contextPath}/${paginationUrl}${totalPages}"
                           class="relative inline-flex items-center px-4 py-2 border border-gray-300 bg-white text-sm font-medium text-gray-700 hover:bg-gray-50">
                                ${totalPages}
                        </a>
                    </c:if>

                    <!-- Next Button -->
                    <c:choose>
                        <c:when test="${currentPage < totalPages}">
                            <a href="${pageContext.request.contextPath}/${paginationUrl}${currentPage + 1}"
                               class="relative inline-flex items-center px-3 py-2 rounded-r-md border border-gray-300 bg-white text-sm font-medium text-gray-500 hover:bg-gray-50">
                                <span class="sr-only">Next</span>
                                <i class="fas fa-chevron-right"></i>
                            </a>
                        </c:when>
                        <c:otherwise>
                            <span class="relative inline-flex items-center px-3 py-2 rounded-r-md border border-gray-300 bg-gray-100 text-sm font-medium text-gray-400 cursor-not-allowed">
                                <span class="sr-only">Next</span>
                                <i class="fas fa-chevron-right"></i>
                            </span>
                        </c:otherwise>
                    </c:choose>
                </nav>
            </div>
        </c:if>
    </div>
</section>

<!-- Categories Section -->
<section class="py-16 bg-gray-100">
    <div class="container mx-auto px-4">
        <div class="text-center mb-12">
            <h2 class="text-3xl font-bold mb-4">Shop by Category</h2>
            <p class="text-gray-600 max-w-2xl mx-auto">Explore our carefully curated collections for every style and occasion</p>
        </div>

        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
            <div class="category-card bg-white rounded-xl overflow-hidden shadow-sm hover:shadow-md transition duration-300 group">
                <a href="${pageContext.request.contextPath}/home?category=T-Shirts&page=1" class="block">
                    <div class="relative pt-[100%] overflow-hidden">
                        <img src="https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&w=600&q=80"
                             alt="T-Shirts"
                             class="category-image absolute inset-0 w-full h-full object-cover transition duration-500"
                             onerror="this.src='https://via.placeholder.com/600x600?text=T-Shirts'">
                    </div>
                    <div class="p-6 text-center">
                        <h3 class="text-xl font-bold mb-3 group-hover:text-indigo-600 transition">T-Shirts</h3>
                        <span class="inline-block px-4 py-2 text-sm font-medium text-indigo-600 group-hover:text-white group-hover:bg-indigo-600 rounded-full transition">
                            Shop Now <i class="fas fa-arrow-right ml-1"></i>
                        </span>
                    </div>
                </a>
            </div>

            <div class="category-card bg-white rounded-xl overflow-hidden shadow-sm hover:shadow-md transition duration-300 group">
                <a href="${pageContext.request.contextPath}/home?category=Dresses&page=1" class="block">
                    <div class="relative pt-[100%] overflow-hidden">
                        <img src="https://images.unsplash.com/photo-1585487000160-6ebcfceb0d03?auto=format&fit=crop&w=600&q=80"
                             alt="Dresses"
                             class="category-image absolute inset-0 w-full h-full object-cover transition duration-500"
                             onerror="this.src='https://via.placeholder.com/600x600?text=Dresses'">
                    </div>
                    <div class="p-6 text-center">
                        <h3 class="text-xl font-bold mb-3 group-hover:text-indigo-600 transition">Dresses</h3>
                        <span class="inline-block px-4 py-2 text-sm font-medium text-indigo-600 group-hover:text-white group-hover:bg-indigo-600 rounded-full transition">
                            Shop Now <i class="fas fa-arrow-right ml-1"></i>
                        </span>
                    </div>
                </a>
            </div>

            <div class="category-card bg-white rounded-xl overflow-hidden shadow-sm hover:shadow-md transition duration-300 group">
                <a href="${pageContext.request.contextPath}/home?category=Shoes&page=1" class="block">
                    <div class="relative pt-[100%] overflow-hidden">
                        <img src="https://images.unsplash.com/photo-1460353581641-37baddab0fa2?auto=format&fit=crop&w=600&q=80"
                             alt="Shoes"
                             class="category-image absolute inset-0 w-full h-full object-cover transition duration-500"
                             onerror="this.src='https://via.placeholder.com/600x600?text=Shoes'">
                    </div>
                    <div class="p-6 text-center">
                        <h3 class="text-xl font-bold mb-3 group-hover:text-indigo-600 transition">Shoes</h3>
                        <span class="inline-block px-4 py-2 text-sm font-medium text-indigo-600 group-hover:text-white group-hover:bg-indigo-600 rounded-full transition">
                            Shop Now <i class="fas fa-arrow-right ml-1"></i>
                        </span>
                    </div>
                </a>
            </div>

            <div class="category-card bg-white rounded-xl overflow-hidden shadow-sm hover:shadow-md transition duration-300 group">
                <a href="${pageContext.request.contextPath}/home?category=Accessories&page=1" class="block">
                    <div class="relative pt-[100%] overflow-hidden">
                        <img src="https://images.unsplash.com/photo-1523170335258-f5ed11844a49?auto=format&fit=crop&w=600&q=80"
                             alt="Accessories"
                             class="category-image absolute inset-0 w-full h-full object-cover transition duration-500"
                             onerror="this.src='https://via.placeholder.com/600x600?text=Accessories'">
                    </div>
                    <div class="p-6 text-center">
                        <h3 class="text-xl font-bold mb-3 group-hover:text-indigo-600 transition">Accessories</h3>
                        <span class="inline-block px-4 py-2 text-sm font-medium text-indigo-600 group-hover:text-white group-hover:bg-indigo-600 rounded-full transition">
                            Shop Now <i class="fas fa-arrow-right ml-1"></i>
                        </span>
                    </div>
                </a>
            </div>
        </div>
    </div>
</section>

<!-- Newsletter Section -->
<!-- Footer -->
<jsp:include page="./footer.jsp" />


</body>
</html>