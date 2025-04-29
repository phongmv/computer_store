<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>${product.name} - TechZone</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    .product-image {
      transition: transform 0.3s ease;
    }
    .product-image:hover {
      transform: scale(1.03);
    }
  </style>
</head>

<body class="bg-yellow-50 text-gray-800">

<!-- Header -->
<jsp:include page="header.jsp" />

<!-- Product Details -->
<section class="pt-28 pb-16">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">

    <!-- Breadcrumb -->
    <nav class="flex text-sm text-yellow-700 mb-8" aria-label="Breadcrumb">
      <ol class="inline-flex items-center space-x-1 md:space-x-2">
        <li class="inline-flex items-center">
          <a href="${pageContext.request.contextPath}/home" class="inline-flex items-center hover:text-yellow-800">
            <i class="fas fa-home mr-2"></i>
            Home
          </a>
        </li>
        <li>
          <div class="flex items-center">
            <i class="fas fa-angle-right text-gray-400"></i>
            <a href="${pageContext.request.contextPath}/home?category=${product.category}"
               class="ml-2 hover:text-yellow-800">${product.category}</a>
          </div>
        </li>
        <li aria-current="page">
          <div class="flex items-center">
            <i class="fas fa-angle-right text-gray-400"></i>
            <span class="ml-2 text-gray-500">${product.name}</span>
          </div>
        </li>
      </ol>
    </nav>

    <div class="flex flex-col lg:flex-row gap-8 xl:gap-12">
      <!-- Image Gallery -->
      <div class="lg:w-1/2">
        <div class="bg-white rounded-2xl shadow-lg overflow-hidden border-2 border-yellow-100 p-4 hover:border-yellow-200 transition">
          <img src="${not empty product.image ? 'data:image/jpeg;base64,'.concat(product.getImageBase64()) : 'https://via.placeholder.com/800x600?text=No+Image'}"
               alt="${product.name}"
               class="w-full h-auto object-cover product-image rounded-lg"
               onerror="this.src='https://via.placeholder.com/800x600?text=Image+Error'">
        </div>
      </div>

      <!-- Product Info -->
      <div class="lg:w-1/2">
        <div class="bg-white rounded-2xl shadow-lg p-6 md:p-8 space-y-6 border border-yellow-100">
          <div class="space-y-4">
            <h1 class="text-3xl md:text-4xl font-bold text-yellow-900">${product.name}</h1>

            <div class="flex items-center space-x-4">
              <p class="text-2xl md:text-3xl font-bold text-yellow-600">$${product.price}</p>
              <c:choose>
                <c:when test="${product.stock > 0}">
                  <span class="inline-flex items-center bg-green-100 text-green-800 text-sm px-3 py-1 rounded-full">
                    <i class="fas fa-check-circle mr-2 text-sm"></i>Available (${product.stock})
                  </span>
                </c:when>
                <c:otherwise>
                  <span class="inline-flex items-center bg-red-100 text-red-800 text-sm px-3 py-1 rounded-full">
                    <i class="fas fa-times-circle mr-2 text-sm"></i>Out of Stock
                  </span>
                </c:otherwise>
              </c:choose>
            </div>

            <div class="flex items-center space-x-3">
              <span class="text-sm text-gray-600">Category:</span>
              <span class="inline-block bg-yellow-100 text-yellow-800 rounded-full px-3 py-1 text-sm font-medium">
                <i class="fas fa-tag mr-1 text-xs"></i>${product.category}
              </span>
            </div>
          </div>

          <p class="text-gray-700 leading-relaxed text-lg">${product.description}</p>

          <!-- Add to Cart Form -->
          <form action="${pageContext.request.contextPath}/cart/add" method="post" class="space-y-6">
            <input type="hidden" name="productId" value="${product.id}" />

            <div class="flex items-center space-x-4">
              <label for="quantity" class="text-lg font-medium text-gray-700">Quantity:</label>
              <div class="flex border border-yellow-300 rounded-lg overflow-hidden">
                <button type="button" onclick="adjustQuantity(-1)"
                        class="px-3 bg-yellow-100 text-yellow-700 hover:bg-yellow-200 transition">
                  <i class="fas fa-minus"></i>
                </button>
                <input type="number" name="quantity" id="quantity" value="1" min="1" max="${product.stock}"
                       class="w-20 text-center border-0 focus:ring-2 focus:ring-yellow-500">
                <button type="button" onclick="adjustQuantity(1)"
                        class="px-3 bg-yellow-100 text-yellow-700 hover:bg-yellow-200 transition">
                  <i class="fas fa-plus"></i>
                </button>
              </div>
            </div>

            <button type="submit"
                    class="w-full flex justify-center items-center space-x-2 bg-gradient-to-r from-yellow-500 to-amber-600 hover:from-yellow-600 hover:to-amber-700 text-white py-4 rounded-xl font-semibold text-lg transition-all transform hover:-translate-y-0.5 shadow-md hover:shadow-lg"
                    ${product.stock <= 0 ? 'disabled' : ''}>
              <i class="fas fa-shopping-cart mr-2"></i>
              ${product.stock > 0 ? 'Add to Cart' : 'Out of Stock'}
            </button>
          </form>

          <div class="pt-4">
            <a href="${pageContext.request.contextPath}/home"
               class="inline-flex items-center text-yellow-700 hover:text-yellow-900 transition">
              <i class="fas fa-arrow-left mr-2"></i>
              <span class="border-b border-transparent hover:border-yellow-700">Continue Shopping</span>
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- Footer -->
<jsp:include page="footer.jsp" />

<script>
  function adjustQuantity(change) {
    const quantityInput = document.getElementById('quantity');
    let newValue = parseInt(quantityInput.value) + change;
    if (newValue < 1) newValue = 1;
    if (newValue > ${product.stock}) newValue = ${product.stock};
    quantityInput.value = newValue;
  }
</script>

</body>
</html>