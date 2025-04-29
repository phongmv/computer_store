<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<footer class="bg-yellow-100 text-yellow-900 py-10 font-sans border-t border-yellow-300">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    <div class="grid grid-cols-1 md:grid-cols-3 gap-8 mb-8">
      <!-- Quick Links -->
      <div>
        <h3 class="text-lg font-bold mb-4 uppercase tracking-wide">Quick Links</h3>
        <ul class="space-y-2">
          <li><a href="${pageContext.request.contextPath}/home" class="text-sm hover:text-yellow-600 transition">Home</a></li>
          <li><a href="${pageContext.request.contextPath}/products" class="text-sm hover:text-yellow-600 transition">Products</a></li>
          <li><a href="${pageContext.request.contextPath}/about" class="text-sm hover:text-yellow-600 transition">About Us</a></li>
          <li><a href="${pageContext.request.contextPath}/contact" class="text-sm hover:text-yellow-600 transition">Contact</a></li>
        </ul>
      </div>

      <!-- Customer Support -->
      <div>
        <h3 class="text-lg font-bold mb-4 uppercase tracking-wide">Customer Support</h3>
        <ul class="space-y-2">
          <li><a href="${pageContext.request.contextPath}/faq" class="text-sm hover:text-yellow-600 transition">FAQs</a></li>
          <li><a href="${pageContext.request.contextPath}/shipping" class="text-sm hover:text-yellow-600 transition">Shipping Information</a></li>
          <li><a href="${pageContext.request.contextPath}/returns" class="text-sm hover:text-yellow-600 transition">Returns & Warranty</a></li>
          <li><a href="${pageContext.request.contextPath}/privacy" class="text-sm hover:text-yellow-600 transition">Privacy Policy</a></li>
        </ul>
      </div>

      <!-- Stay Connected -->
      <div>
        <h3 class="text-lg font-bold mb-4 uppercase tracking-wide">Stay Connected</h3>
        <div class="flex space-x-5">
          <a href="https://www.facebook.com/login" class="text-xl text-yellow-700 hover:text-yellow-900 transition">
            <i class="fab fa-facebook-f"></i>
          </a>
          <a href="https://www.instagram.com/accounts/login/" class="text-xl text-yellow-700 hover:text-yellow-900 transition">
            <i class="fab fa-instagram"></i>
          </a>
          <a href="https://twitter.com/login" class="text-xl text-yellow-700 hover:text-yellow-900 transition">
            <i class="fab fa-twitter"></i>
          </a>
          <a href="https://www.youtube.com/" class="text-xl text-yellow-700 hover:text-yellow-900 transition">
            <i class="fab fa-youtube"></i>
          </a>
          <a href="https://www.linkedin.com/login/" class="text-xl text-yellow-700 hover:text-yellow-900 transition">
            <i class="fab fa-linkedin-in"></i>
          </a>
        </div>
        <div class="mt-4 text-sm">
          <p class="font-semibold mb-1">Subscribe for latest news:</p>
          <form action="#" method="post" class="flex">
            <input type="email" placeholder="Enter your email"
              class="px-3 py-2 text-sm text-gray-800 bg-white border border-yellow-300 rounded-l-md focus:outline-none focus:ring-2 focus:ring-yellow-400 flex-grow">
            <button type="submit"
              class="bg-yellow-500 hover:bg-yellow-600 text-white text-sm font-medium px-4 py-2 rounded-r-md transition">
              Subscribe
            </button>
          </form>
        </div>
      </div>
    </div>

    <!-- Bottom Bar -->
    <div class="border-t border-yellow-300 mt-8 pt-6 text-center text-xs text-yellow-700">
      <p class="mb-1">© ${java.time.Year.now()} TechZone. All rights reserved.</p>
      <p>Address: 123 ABC Street, District 1, Ho Chi Minh City | Phone: (028) 9876 5432 | Email: info@techzone.vn</p>
    </div>
  </div>
</footer>
