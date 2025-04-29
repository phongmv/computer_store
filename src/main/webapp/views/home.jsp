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

<!-- Hero Section -->
<section class="bg-blue-600 text-white pt-20"></section>

<!-- Categories Section -->
<section class="py-16 bg-gradient-to-b from-yellow-50 to-white">
    <div class="container mx-auto px-4">
        <div class="text-center mb-16">
            <h2 class="text-4xl font-bold text-yellow-800 mb-4">Shop by Category</h2>
            <p class="text-lg text-yellow-600 max-w-2xl mx-auto">Discover our premium selection of tech products curated just for you</p>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-3 gap-8 max-w-6xl mx-auto">
            <!-- Laptops Card -->
            <div class="group relative overflow-hidden rounded-2xl shadow-lg hover:shadow-xl transition-all duration-500 ${selectedCategory eq 'Laptops' ? 'ring-4 ring-yellow-400' : ''}">
                <div class="absolute inset-0 bg-gradient-to-t from-black/60 to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-300 z-10"></div>
                <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80"
                     alt="Laptops"
                     class="w-full h-64 object-cover group-hover:scale-105 transition-transform duration-500"
                     onerror="this.src='https://via.placeholder.com/600x400?text=Laptops'">

                <div class="absolute bottom-0 left-0 right-0 p-6 text-center z-20 transform translate-y-4 group-hover:translate-y-0 transition-transform duration-300">
                    <h3 class="text-2xl font-bold text-white mb-3">Laptops</h3>
                    <a href="${pageContext.request.contextPath}/home?category=Laptops&page=1"
                       class="inline-flex items-center justify-center bg-yellow-500 hover:bg-yellow-600 text-white px-6 py-3 rounded-full font-medium transition-all transform hover:scale-105 shadow-md hover:shadow-lg">
                        View Collection
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 ml-2" viewBox="0 0 20 20" fill="currentColor">
                            <path fill-rule="evenodd" d="M10.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L12.586 11H5a1 1 0 110-2h7.586l-2.293-2.293a1 1 0 010-1.414z" clip-rule="evenodd" />
                        </svg>
                    </a>
                </div>

                <div class="absolute top-4 right-4 bg-white text-yellow-800 px-3 py-1 rounded-full text-sm font-semibold shadow-sm">
                    <i class="fas fa-star mr-1 text-yellow-500"></i> Popular
                </div>
            </div>

            <!-- Desktops Card -->
            <div class="group relative overflow-hidden rounded-2xl shadow-lg hover:shadow-xl transition-all duration-500 ${selectedCategory eq 'Desktops' ? 'ring-4 ring-yellow-400' : ''}">
                <div class="absolute inset-0 bg-gradient-to-t from-black/60 to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-300 z-10"></div>
                <img src="https://images.unsplash.com/photo-1587825140708-dfaf72ae4b04?auto=format&fit=crop&w=600&q=80"
                     alt="Desktops"
                     class="w-full h-64 object-cover group-hover:scale-105 transition-transform duration-500"
                     onerror="this.src='https://via.placeholder.com/600x400?text=Desktops'">

                <div class="absolute bottom-0 left-0 right-0 p-6 text-center z-20 transform translate-y-4 group-hover:translate-y-0 transition-transform duration-300">
                    <h3 class="text-2xl font-bold text-white mb-3">Desktops</h3>
                    <a href="${pageContext.request.contextPath}/home?category=Desktops&page=1"
                       class="inline-flex items-center justify-center bg-yellow-500 hover:bg-yellow-600 text-white px-6 py-3 rounded-full font-medium transition-all transform hover:scale-105 shadow-md hover:shadow-lg">
                        View Collection
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 ml-2" viewBox="0 0 20 20" fill="currentColor">
                            <path fill-rule="evenodd" d="M10.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L12.586 11H5a1 1 0 110-2h7.586l-2.293-2.293a1 1 0 010-1.414z" clip-rule="evenodd" />
                        </svg>
                    </a>
                </div>
            </div>

            <!-- Accessories Card -->
            <div class="group relative overflow-hidden rounded-2xl shadow-lg hover:shadow-xl transition-all duration-500 ${selectedCategory eq 'Accessories' ? 'ring-4 ring-yellow-400' : ''}">
                <div class="absolute inset-0 bg-gradient-to-t from-black/60 to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-300 z-10"></div>
                <img src="https://images.unsplash.com/photo-1606761568499-6d2451b23c66?auto=format&fit=crop&w=600&q=80"
                     alt="Accessories"
                     class="w-full h-64 object-cover group-hover:scale-105 transition-transform duration-500"
                     onerror="this.src='https://via.placeholder.com/600x400?text=Accessories'">

                <div class="absolute bottom-0 left-0 right-0 p-6 text-center z-20 transform translate-y-4 group-hover:translate-y-0 transition-transform duration-300">
                    <h3 class="text-2xl font-bold text-white mb-3">Accessories</h3>
                    <a href="${pageContext.request.contextPath}/home?category=Accessories&page=1"
                       class="inline-flex items-center justify-center bg-yellow-500 hover:bg-yellow-600 text-white px-6 py-3 rounded-full font-medium transition-all transform hover:scale-105 shadow-md hover:shadow-lg">
                        View Collection
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 ml-2" viewBox="0 0 20 20" fill="currentColor">
                            <path fill-rule="evenodd" d="M10.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L12.586 11H5a1 1 0 110-2h7.586l-2.293-2.293a1 1 0 010-1.414z" clip-rule="evenodd" />
                        </svg>
                    </a>
                </div>

                <div class="absolute top-4 left-4 bg-yellow-500 text-white px-3 py-1 rounded-full text-sm font-semibold shadow-sm">
                    <i class="fas fa-bolt mr-1"></i> New Arrivals
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Featured Products -->
<section class="py-16 bg-gradient-to-b from-yellow-50 to-white" id="featured">
    <div class="container mx-auto px-4">
        <div class="flex flex-col md:flex-row justify-between items-center mb-12">
            <div class="text-center md:text-left mb-6 md:mb-0">
                <h2 class="text-4xl font-bold text-yellow-800 mb-2">Featured Products</h2>
                <p class="text-yellow-600">Premium quality products curated just for you</p>
            </div>
            <c:if test="${not empty selectedCategory}">
                <a href="${pageContext.request.contextPath}/home?page=1"
                   class="flex items-center text-yellow-700 hover:text-yellow-900 transition-all group">
                    <span class="mr-2 bg-yellow-100 group-hover:bg-yellow-200 px-4 py-2 rounded-full transition-all">
                        <i class="fas fa-times mr-1 group-hover:rotate-90 transition-transform"></i>
                        Clear Filter
                    </span>
                </a>
            </c:if>
        </div>

        <c:if test="${not empty selectedCategory}">
            <div class="mb-8 flex justify-center">
                <div class="inline-flex items-center bg-white border border-yellow-200 text-yellow-800 px-6 py-3 rounded-full shadow-sm font-medium">
                    <i class="fas fa-filter text-yellow-500 mr-3"></i>
                    <span class="mr-3">Currently viewing:</span>
                    <span class="bg-yellow-100 px-4 py-1 rounded-full font-bold">
                        ${fn:toUpperCase(fn:substring(selectedCategory, 0, 1))}${fn:toLowerCase(fn:substring(selectedCategory, 1, -1))}
                    </span>
                </div>
            </div>
        </c:if>

        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-8">
            <c:choose>
                <c:when test="${empty products}">
                    <div class="col-span-full py-12">
                        <div class="max-w-2xl mx-auto bg-white rounded-2xl shadow-xl overflow-hidden">
                            <div class="p-8 text-center">
                                <div class="mx-auto h-24 w-24 flex items-center justify-center bg-yellow-100 rounded-full mb-6">
                                    <i class="fas fa-box-open text-4xl text-yellow-500"></i>
                                </div>
                                <h3 class="text-3xl font-bold text-yellow-800 mb-3">No Products Found</h3>
                                <p class="text-lg text-yellow-600 mb-8">
                                    <c:choose>
                                        <c:when test="${not empty selectedCategory}">
                                            We couldn't find any products matching "${selectedCategory}"
                                        </c:when>
                                        <c:otherwise>
                                            Our inventory is currently being updated
                                        </c:otherwise>
                                    </c:choose>
                                </p>
                                <a href="${pageContext.request.contextPath}/home?page=1"
                                   class="inline-flex items-center justify-center px-8 py-4 bg-gradient-to-r from-yellow-500 to-yellow-600 hover:from-yellow-600 hover:to-yellow-700 text-white font-bold rounded-full transition-all transform hover:scale-105 shadow-lg hover:shadow-xl">
                                    Explore All Products
                                    <i class="fas fa-chevron-right ml-3"></i>
                                </a>
                            </div>
                        </div>
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
                        <div class="group relative">
                            <a href="${pageContext.request.contextPath}/product-detail?id=${product.id}" class="block h-full">
                                <div class="h-full bg-white rounded-2xl shadow-lg overflow-hidden hover:shadow-2xl transition-all duration-300 flex flex-col">
                                    <div class="relative overflow-hidden pt-[75%]">
                                        <img src="${not empty product.image ? 'data:image/jpeg;base64,'.concat(product.getImageBase64()) : 'https://via.placeholder.com/500x375?text=No+Image'}"
                                             alt="${product.name}"
                                             class="absolute top-0 left-0 w-full h-full object-cover group-hover:scale-110 transition-transform duration-500"
                                             onerror="this.src='https://via.placeholder.com/500x375?text=Image+Error'">
                                        <div class="absolute top-4 right-4 bg-yellow-500 text-white text-xs font-bold px-3 py-1 rounded-full shadow-lg z-10">
                                            NEW
                                        </div>
                                        <div class="absolute inset-0 bg-gradient-to-t from-black/20 via-black/5 to-transparent"></div>
                                    </div>
                                    <div class="p-6 flex-grow">
                                        <div class="flex justify-between items-start mb-2">
                                            <h3 class="text-xl font-bold text-gray-800 group-hover:text-yellow-700 transition-colors line-clamp-2">${product.name}</h3>
                                            <p class="text-yellow-600 font-bold text-xl ml-4 whitespace-nowrap">$${product.price}</p>
                                        </div>
                                        <div class="mt-4">
                                            <span class="inline-flex items-center bg-yellow-100 text-yellow-800 rounded-full px-3 py-1 text-sm font-semibold">
                                                <i class="fas fa-tag mr-1 text-yellow-500 text-xs"></i>
                                                ${not empty product.category ? product.category : 'Uncategorized'}
                                            </span>
                                        </div>
                                    </div>
                                    <div class="px-6 pb-6">
                                        <button class="w-full bg-gradient-to-r from-yellow-500 to-yellow-600 hover:from-yellow-600 hover:to-yellow-700 text-white font-bold py-3 px-6 rounded-lg transition-all transform group-hover:-translate-y-1 flex items-center justify-center shadow-md hover:shadow-lg">
                                            <i class="fas fa-shopping-cart mr-3"></i>
                                            Add to Cart
                                        </button>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </c:forEach>
                </div>
            </c:otherwise>
        </c:choose>

        <div class="mt-16 text-center">
            <a href="${pageContext.request.contextPath}/home?page=1"
               class="inline-flex items-center justify-center px-8 py-4 border border-yellow-300 text-yellow-700 hover:text-white hover:bg-yellow-600 hover:border-yellow-600 font-bold rounded-full transition-all transform hover:scale-105 shadow-sm hover:shadow-lg">
                View All Products
                <i class="fas fa-arrow-right ml-3"></i>
            </a>
        </div>
    </div>
</section>

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