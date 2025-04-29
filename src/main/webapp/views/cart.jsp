<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <title>Giỏ Hàng - FS-Modern</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://cdn.tailwindcss.com"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    .cart-item:hover {
      transform: translateY(-2px);
      box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
    }
    .quantity-input {
      -moz-appearance: textfield;
    }
    .quantity-input::-webkit-outer-spin-button,
    .quantity-input::-webkit-inner-spin-button {
      -webkit-appearance: none;
      margin: 0;
    }
  </style>
</head>
<body class="min-h-screen bg-gray-50 flex flex-col font-sans">

<%-- Header --%>
<jsp:include page="header.jsp"/>

<main class="flex-grow px-4 sm:px-6 lg:px-8 py-8 pt-24 pb-20">
  <div class="max-w-6xl mx-auto">
    <div class="mb-8">
      <h1 class="text-3xl font-bold text-gray-900">Giỏ hàng của bạn</h1>
      <p class="text-gray-600 mt-2">Kiểm tra và chỉnh sửa sản phẩm trước khi thanh toán</p>
    </div>

    <c:choose>
      <c:when test="${empty sessionScope.cart}">
        <div class="bg-white rounded-xl shadow-sm p-8 text-center">
          <div class="mx-auto w-24 h-24 bg-gray-100 rounded-full flex items-center justify-center mb-6">
            <i class="fas fa-shopping-cart text-3xl text-gray-400"></i>
          </div>
          <h3 class="text-xl font-semibold text-gray-700 mb-2">Giỏ hàng trống</h3>
          <p class="text-gray-500 mb-6">Bạn chưa có sản phẩm nào trong giỏ hàng</p>
          <a href="${pageContext.request.contextPath}/products"
             class="inline-flex items-center px-6 py-3 bg-indigo-600 hover:bg-indigo-700 text-white font-medium rounded-lg transition duration-300">
            <i class="fas fa-arrow-left mr-2"></i> Tiếp tục mua sắm
          </a>
        </div>
      </c:when>
      <c:otherwise>
        <div class="grid grid-cols-1 lg:grid-cols-3 gap-8">
            <%-- Danh sách sản phẩm --%>
          <div class="lg:col-span-2 space-y-4">
            <c:forEach items="${sessionScope.cart}" var="item">
              <div class="cart-item bg-white rounded-lg p-4 flex flex-col sm:flex-row gap-4 transition duration-300 border border-gray-200">
                <div class="flex-shrink-0">
                  <img src="${not empty item.product.image ? 'data:image/jpeg;base64,'.concat(item.product.getImageBase64()) : 'https://via.placeholder.com/150?text=No+Image'}"
                       alt="${item.product.name}"
                       class="w-24 h-24 sm:w-32 sm:h-32 object-cover rounded-lg"
                       onerror="this.src='https://via.placeholder.com/150?text=Image+Error'">
                </div>

                <div class="flex-grow">
                  <div class="flex justify-between">
                    <h3 class="font-medium text-gray-900">${item.product.name}</h3>
                    <form action="${pageContext.request.contextPath}/cart/remove" method="post">
                      <input type="hidden" name="productId" value="${item.product.id}">
                      <button type="submit" class="text-gray-400 hover:text-red-500 transition">
                        <i class="fas fa-times"></i>
                      </button>
                    </form>
                  </div>

                  <p class="text-gray-600 text-sm mt-1">${item.product.category}</p>

                  <div class="mt-4 flex flex-wrap items-center justify-between gap-4">
                    <form action="${pageContext.request.contextPath}/cart/update" method="post" class="flex items-center">
                      <input type="hidden" name="productId" value="${item.product.id}">
                      <button type="button" onclick="this.parentNode.querySelector('input[type=number]').stepDown()"
                              class="w-8 h-8 flex items-center justify-center border border-gray-300 rounded-l-md bg-gray-100 hover:bg-gray-200">
                        <i class="fas fa-minus text-xs"></i>
                      </button>
                      <input type="number" name="quantity" value="${item.quantity}" min="1"
                             class="quantity-input w-12 h-8 border-t border-b border-gray-300 text-center focus:outline-none focus:ring-1 focus:ring-indigo-500">
                      <button type="button" onclick="this.parentNode.querySelector('input[type=number]').stepUp()"
                              class="w-8 h-8 flex items-center justify-center border border-gray-300 rounded-r-md bg-gray-100 hover:bg-gray-200">
                        <i class="fas fa-plus text-xs"></i>
                      </button>
                      <button type="submit" class="ml-2 px-3 py-1 text-sm bg-gray-100 hover:bg-gray-200 rounded-md transition">
                        Cập nhật
                      </button>
                    </form>

                    <div class="text-right">
                      <p class="text-gray-500 text-sm">Đơn giá</p>
                      <p class="font-semibold text-gray-900">$${item.product.price}</p>
                    </div>

                    <div class="text-right">
                      <p class="text-gray-500 text-sm">Tổng</p>
                      <p class="font-semibold text-indigo-600">$${item.getTotalPrice()}</p>
                    </div>
                  </div>
                </div>
              </div>
            </c:forEach>
          </div>

            <%-- Tổng thanh toán --%>
          <div class="lg:col-span-1">
            <div class="bg-white rounded-lg shadow-sm p-6 border border-gray-200 sticky top-4">
              <h3 class="text-lg font-semibold text-gray-900 mb-4">Tóm tắt đơn hàng</h3>

              <div class="space-y-3 mb-6">
                <div class="flex justify-between">
                  <span class="text-gray-600">Tạm tính</span>
                  <c:set var="subtotal" value="0" />
                  <c:forEach items="${sessionScope.cart}" var="item">
                    <c:set var="subtotal" value="${subtotal + item.getTotalPrice()}" />
                  </c:forEach>
                  <span class="font-medium">$${subtotal}</span>
                </div>

                <div class="flex justify-between">
                  <span class="text-gray-600">Phí vận chuyển</span>
                  <span class="font-medium">Miễn phí</span>
                </div>

                <div class="border-t border-gray-200 my-2"></div>

                <div class="flex justify-between">
                  <span class="text-gray-900 font-semibold">Tổng cộng</span>
                  <span class="text-indigo-600 font-bold text-xl">$${subtotal}</span>
                </div>
              </div>
            </div>
          </div>
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