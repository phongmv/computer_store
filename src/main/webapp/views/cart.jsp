<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <title>Giỏ Hàng Của Bạn - TechZone</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://cdn.tailwindcss.com"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <style>
    /* Optional: Define a clean sans-serif font stack if needed */
    /* @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap'); */
    body {
      /* font-family: 'Inter', sans-serif; */
    }
  </style>
</head>
<body class="min-h-screen bg-gray-100 flex flex-col justify-between font-sans text-gray-800">

<%--Header--%>
<jsp:include page="header.jsp"/>

<main class="flex-grow px-4 sm:px-6 lg:px-8 py-8 flex flex-col items-center pt-24 pb-20">
  <div class="w-full max-w-5xl bg-white shadow-lg rounded-lg border border-gray-200 p-6 md:p-8">
    <h1 class="text-2xl md:text-3xl font-semibold text-gray-900 mb-6 text-center">Giỏ Hàng Của Bạn</h1>
    <c:choose>
      <c:when test="${empty sessionScope.cart}">
        <p class="text-gray-600 text-center text-lg py-10">Giỏ hàng của bạn hiện đang trống. Hãy bắt đầu xây dựng cấu hình mơ ước!</p>
        <div class="text-center mt-6">
          <a href="${pageContext.request.contextPath}/products" class="inline-block bg-blue-600 hover:bg-blue-700 text-white font-medium py-2 px-6 rounded-md transition duration-300">
            Tiếp tục mua sắm
          </a>
        </div>
      </c:when>
      <c:otherwise>
        <div class="overflow-x-auto">
          <table class="w-full table-auto text-left text-sm text-gray-700">
            <thead class="bg-gray-200 text-gray-600 uppercase text-xs tracking-wider">
            <tr>
              <th class="px-4 py-3 font-semibold">Sản phẩm</th>
              <th class="px-4 py-3 font-semibold text-right">Đơn giá</th>
              <th class="px-4 py-3 font-semibold text-center">Số lượng</th>
              <th class="px-4 py-3 font-semibold text-right">Tổng cộng</th>
              <th class="px-4 py-3 font-semibold text-center">Hành động</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${sessionScope.cart}" var="item">
              <tr class="border-b hover:bg-gray-50">
                <td class="px-4 py-4 font-medium text-gray-900">${item.product.name}</td>
                <td class="px-4 py-4 text-gray-800 font-medium text-right">$${item.product.price}</td>
                <td class="px-4 py-4">
                  <form action="${pageContext.request.contextPath}/cart/update" method="post" class="flex items-center justify-center space-x-2">
                    <input type="hidden" name="productId" value="${item.product.id}">
                    <input type="number" name="quantity" value="${item.quantity}" min="1"
                           class="w-16 px-2 py-1.5 border border-gray-300 rounded-md focus:ring-2 focus:ring-blue-500 focus:border-blue-500 focus:outline-none text-center">
                    <button type="submit" class="px-3 py-1.5 bg-blue-600 text-white rounded-md hover:bg-blue-700 text-xs font-medium transition duration-300">Cập nhật</button>
                  </form>
                </td>
                <td class="px-4 py-4 font-semibold text-gray-900 text-right">$${item.getTotalPrice()}</td>
                <td class="px-4 py-4 text-center">
                  <form action="${pageContext.request.contextPath}/cart/remove" method="post">
                    <input type="hidden" name="productId" value="${item.product.id}">
                    <button type="submit" class="px-3 py-1.5 bg-red-600 text-white rounded-md hover:bg-red-700 text-xs font-medium transition duration-300">Xóa</button>
                  </form>
                </td>
              </tr>
            </c:forEach>
            </tbody>
            <tfoot>
            <tr class="bg-gray-100 font-semibold text-gray-800">
              <td colspan="3" class="px-4 py-4 text-right text-base">Tổng Giỏ Hàng:</td>
              <td class="px-4 py-4 text-right text-lg font-bold text-blue-700">
                <c:set var="total" value="0" />
                <c:forEach items="${sessionScope.cart}" var="item">
                  <c:set var="total" value="${total + item.getTotalPrice()}" />
                </c:forEach>
                $${total}
              </td>
              <td class="px-4 py-4"></td> <%-- Empty cell for alignment --%>
            </tr>
            </tfoot>
          </table>
        </div>
        <div class="mt-8 flex justify-end">
          <a href="${pageContext.request.contextPath}/checkout" class="bg-green-600 hover:bg-green-700 text-white font-semibold py-2.5 px-8 rounded-md transition duration-300 text-base">
            Tiến hành Thanh toán
          </a>
        </div>
      </c:otherwise>
    </c:choose>
  </div>
</main>

<!-- Footer -->
<jsp:include page="./footer.jsp" />
</body>
</html>