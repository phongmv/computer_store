<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>${product.name} - Shoe Store</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
        integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body class="bg-gray-50 text-gray-800">

<!-- Header -->
<jsp:include page="header.jsp" />

<!-- Product Details -->
<section class="pt-28 pb-16">
  <div class="max-w-7xl mx-auto px-4">

    <!-- Breadcrumb -->
    <nav class="text-sm text-gray-500 mb-6">
      <a href="${pageContext.request.contextPath}/home" class="hover:text-blue-600">Home</a>
      <span class="mx-2">/</span>
      <a href="${pageContext.request.contextPath}/home?category=${product.category}" class="hover:text-blue-600">${product.category}</a>
      <span class="mx-2">/</span>
      <span class="text-gray-400">${product.name}</span>
    </nav>

    <div class="flex flex-col lg:flex-row gap-10">
      <!-- Image -->
      <div class="lg:w-1/2">
        <div class="bg-white rounded-xl shadow overflow-hidden">
          <img src="${not empty product.image ? 'data:image/jpeg;base64,'.concat(product.getImageBase64()) : 'https://via.placeholder.com/800x600?text=No+Image'}"
               alt="${product.name}"
               class="w-full object-cover max-h-[500px]"
               onerror="this.src='https://via.placeholder.com/800x600?text=Image+Error'">
        </div>
      </div>

      <!-- Details -->
      <div class="lg:w-1/2">
        <div class="bg-white rounded-xl shadow p-6 space-y-6">
          <h1 class="text-3xl font-bold">${product.name}</h1>
          <p class="text-xl text-blue-600 font-semibold">$${product.price}</p>

          <c:choose>
            <c:when test="${product.stock > 0}">
              <span class="inline-block bg-green-100 text-green-700 text-sm px-3 py-1 rounded">
                <i class="fas fa-check-circle mr-1"></i> In Stock (${product.stock})
              </span>
            </c:when>
            <c:otherwise>
              <span class="inline-block bg-red-100 text-red-700 text-sm px-3 py-1 rounded">
                <i class="fas fa-times-circle mr-1"></i> Out of Stock
              </span>
            </c:otherwise>
          </c:choose>

          <p class="text-sm text-gray-600">Category:
            <span class="inline-block bg-gray-200 rounded-full px-2 py-1 font-medium ml-1">${product.category}</span>
          </p>

          <p class="text-gray-700 leading-relaxed">${product.description}</p>

          <!-- Add to Cart -->
          <form action="${pageContext.request.contextPath}/cart/add" method="post" class="space-y-4">
            <input type="hidden" name="productId" value="${product.id}" />
            <div class="flex items-center gap-3">
              <label for="quantity" class="text-sm font-medium">Quantity:</label>
              <input type="number" name="quantity" id="quantity" value="1" min="1" max="${product.stock > 0 ? product.stock : 1}"
                     class="w-24 border border-gray-300 px-3 py-2 rounded focus:outline-none focus:ring-2 focus:ring-blue-500">
            </div>
            <button type="submit"
                    class="w-full flex justify-center items-center bg-blue-600 hover:bg-blue-700 text-white py-3 rounded-md font-medium transition disabled:bg-gray-400"
            ${product.stock <= 0 ? 'disabled' : ''}>
              <i class="fas fa-cart-plus mr-2"></i> Add to Cart
            </button>
          </form>

          <!-- Back -->
          <div>
            <a href="${pageContext.request.contextPath}/home"
               class="text-blue-600 hover:text-blue-800 text-sm inline-flex items-center mt-2">
              <i class="fas fa-arrow-left mr-1"></i> Back to Products
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- Footer -->
<jsp:include page="footer.jsp" />

</body>
</html>
