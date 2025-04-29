<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Your Shopping Cart - TechZone</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://cdn.tailwindcss.com"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    .cart-item:hover {
      transform: translateY(-2px);
      box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
    }
    .quantity-input:focus {
      box-shadow: 0 0 0 2px rgba(234, 179, 8, 0.5);
    }
  </style>
</head>
<body class="min-h-screen bg-gray-50 flex flex-col font-sans text-gray-800">

<!-- Header -->
<jsp:include page="header.jsp"/>

<main class="flex-grow px-4 sm:px-6 lg:px-8 py-8 flex flex-col items-center pt-24 pb-20 bg-gradient-to-b from-yellow-50 to-white">
  <div class="w-full max-w-6xl bg-white shadow-xl rounded-2xl overflow-hidden border border-yellow-100">
    <div class="bg-gradient-to-r from-yellow-400 to-yellow-500 p-6">
      <h1 class="text-2xl md:text-3xl font-bold text-white text-center">
        <i class="fas fa-shopping-cart mr-3"></i>Your Shopping Cart
      </h1>
    </div>

    <c:choose>
      <c:when test="${empty sessionScope.cart}">
        <div class="p-8 md:p-12 text-center">
          <div class="mx-auto max-w-md">
            <div class="w-24 h-24 bg-yellow-100 rounded-full flex items-center justify-center mx-auto mb-6">
              <i class="fas fa-shopping-cart text-4xl text-yellow-500"></i>
            </div>
            <h2 class="text-xl font-semibold text-gray-700 mb-3">Your cart is empty</h2>
            <p class="text-gray-600 mb-8">Start building your dream tech setup with our premium products</p>
            <a href="${pageContext.request.contextPath}/products"
               class="inline-flex items-center justify-center px-8 py-3 bg-gradient-to-r from-yellow-500 to-yellow-600 hover:from-yellow-600 hover:to-yellow-700 text-white font-medium rounded-lg shadow-md hover:shadow-lg transition-all duration-300 transform hover:-translate-y-1">
              <i class="fas fa-arrow-left mr-2"></i> Continue Shopping
            </a>
          </div>
        </div>
      </c:when>
      <c:otherwise>
        <div class="overflow-x-auto">
          <table class="w-full text-left text-gray-700">
            <thead class="bg-yellow-50 text-yellow-800 uppercase text-sm">
            <tr>
              <th class="px-6 py-4 font-bold">Product</th>
              <th class="px-6 py-4 font-bold text-right">Price</th>
              <th class="px-6 py-4 font-bold text-center">Quantity</th>
              <th class="px-6 py-4 font-bold text-right">Total</th>
              <th class="px-6 py-4 font-bold text-center">Action</th>
            </tr>
            </thead>
            <tbody class="divide-y divide-yellow-100">
            <c:forEach items="${sessionScope.cart}" var="item">
              <tr class="cart-item bg-white hover:bg-yellow-50 transition duration-200">
                <td class="px-6 py-5 font-medium text-gray-900">
                  <div class="flex items-center">
                    <div class="flex-shrink-0 h-16 w-16 rounded-md overflow-hidden border border-gray-200">
                      <img src="${not empty item.product.image ? 'data:image/jpeg;base64,'.concat(item.product.getImageBase64()) : 'https://via.placeholder.com/100?text=No+Image'}"
                           alt="${item.product.name}"
                           class="h-full w-full object-cover">
                    </div>
                    <div class="ml-4">
                      <h3 class="text-md font-semibold">${item.product.name}</h3>
                      <p class="text-sm text-gray-500 mt-1">${item.product.category}</p>
                    </div>
                  </div>
                </td>
                <td class="px-6 py-5 text-right font-medium">$${item.product.price}</td>
                <td class="px-6 py-5">
                  <form action="${pageContext.request.contextPath}/cart/update" method="post" class="flex items-center justify-center">
                    <input type="hidden" name="productId" value="${item.product.id}">
                    <div class="flex border border-gray-300 rounded-lg overflow-hidden">
                      <button type="button" onclick="this.parentNode.querySelector('input[type=number]').stepDown()"
                              class="px-3 bg-gray-100 text-gray-600 hover:bg-gray-200 transition">
                        <i class="fas fa-minus"></i>
                      </button>
                      <input type="number" name="quantity" value="${item.quantity}" min="1"
                             class="w-16 px-2 py-2 text-center border-0 focus:ring-2 focus:ring-yellow-500 quantity-input">
                      <button type="button" onclick="this.parentNode.querySelector('input[type=number]').stepUp()"
                              class="px-3 bg-gray-100 text-gray-600 hover:bg-gray-200 transition">
                        <i class="fas fa-plus"></i>
                      </button>
                    </div>
                    <button type="submit"
                            class="ml-2 px-3 py-2 bg-yellow-500 text-white rounded-lg hover:bg-yellow-600 text-sm font-medium transition">
                      Update
                    </button>
                  </form>
                </td>
                <td class="px-6 py-5 text-right font-semibold text-yellow-700">$${item.getTotalPrice()}</td>
                <td class="px-6 py-5 text-center">
                  <form action="${pageContext.request.contextPath}/cart/remove" method="post">
                    <input type="hidden" name="productId" value="${item.product.id}">
                    <button type="submit"
                            class="p-2 text-red-500 hover:text-white hover:bg-red-500 rounded-full transition duration-300">
                      <i class="fas fa-trash-alt"></i>
                    </button>
                  </form>
                </td>
              </tr>
            </c:forEach>
            </tbody>
            <tfoot class="bg-yellow-50">
              <tr>
                <td colspan="5" class="px-6 py-4">
                  <div class="flex justify-between items-center">
                    <a href="${pageContext.request.contextPath}/products"
                       class="flex items-center text-yellow-700 hover:text-yellow-900 font-medium">
                      <i class="fas fa-arrow-left mr-2"></i> Continue Shopping
                    </a>
                    <div class="text-right">
                      <div class="text-lg font-semibold text-yellow-800 mb-1">Cart Total:</div>
                      <div class="text-2xl font-bold text-yellow-700">
                        <c:set var="total" value="0" />
                        <c:forEach items="${sessionScope.cart}" var="item">
                          <c:set var="total" value="${total + item.getTotalPrice()}" />
                        </c:forEach>
                        $${total}
                      </div>
                    </div>
                  </div>
                </td>
              </tr>
              <tr>
                <td colspan="5" class="px-6 py-4 bg-yellow-100">
                  <div class="flex justify-end">
                    <a href="${pageContext.request.contextPath}/checkout"
                       class="flex items-center justify-center px-8 py-3 bg-gradient-to-r from-yellow-500 to-yellow-600 hover:from-yellow-600 hover:to-yellow-700 text-white font-bold rounded-lg shadow-md hover:shadow-lg transition-all duration-300 transform hover:-translate-y-1">
                      Proceed to Checkout
                      <i class="fas fa-arrow-right ml-3"></i>
                    </a>
                  </div>
                </td>
              </tr>
            </tfoot>
          </table>
        </div>
      </c:otherwise>
    </c:choose>
  </div>
</main>

<!-- Footer -->
<jsp:include page="./footer.jsp" />

<script>
  // Quantity input controls
  document.querySelectorAll('.quantity-input').forEach(input => {
    input.addEventListener('change', function() {
      if (this.value < 1) this.value = 1;
    });
  });
</script>
</body>
</html>