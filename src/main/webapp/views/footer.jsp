<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<footer class="bg-gray-800 text-gray-300 py-10 font-sans">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="grid grid-cols-1 md:grid-cols-3 gap-8 mb-8">
            <%-- Quick Links Column --%>
            <div>
                <h3 class="text-lg font-semibold text-white mb-4 uppercase tracking-wider">Liên kết nhanh</h3>
                <ul class="space-y-2">
                    <li><a href="${pageContext.request.contextPath}/home" class="text-sm hover:text-white transition duration-300">Trang chủ</a></li>
                    <li><a href="${pageContext.request.contextPath}/products" class="text-sm hover:text-white transition duration-300">Sản phẩm</a></li>
                    <li><a href="${pageContext.request.contextPath}/about" class="text-sm hover:text-white transition duration-300">Về Chúng tôi</a></li>
                    <li><a href="${pageContext.request.contextPath}/contact" class="text-sm hover:text-white transition duration-300">Liên hệ</a></li>
                </ul>
            </div>

            <%-- Customer Support Column --%>
            <div>
                <h3 class="text-lg font-semibold text-white mb-4 uppercase tracking-wider">Hỗ trợ khách hàng</h3>
                <ul class="space-y-2">
                    <li><a href="${pageContext.request.contextPath}/faq" class="text-sm hover:text-white transition duration-300">Câu hỏi thường gặp</a></li>
                    <li><a href="${pageContext.request.contextPath}/shipping" class="text-sm hover:text-white transition duration-300">Thông tin vận chuyển</a></li>
                    <li><a href="${pageContext.request.contextPath}/returns" class="text-sm hover:text-white transition duration-300">Đổi trả & Bảo hành</a></li>
                    <li><a href="${pageContext.request.contextPath}/privacy" class="text-sm hover:text-white transition duration-300">Chính sách bảo mật</a></li>
                </ul>
            </div>

            <%-- Stay Connected Column --%>
            <div>
                <h3 class="text-lg font-semibold text-white mb-4 uppercase tracking-wider">Kết nối với chúng tôi</h3>
                <div class="flex space-x-5">
                    <a href="https://www.facebook.com/login" target="_blank" rel="noopener noreferrer" class="text-xl text-gray-400 hover:text-white transition duration-300">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="https://www.instagram.com/accounts/login/" target="_blank" rel="noopener noreferrer" class="text-xl text-gray-400 hover:text-white transition duration-300">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a href="https://twitter.com/login" target="_blank" rel="noopener noreferrer" class="text-xl text-gray-400 hover:text-white transition duration-300">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="https://www.youtube.com/" target="_blank" rel="noopener noreferrer" class="text-xl text-gray-400 hover:text-white transition duration-300">
                        <i class="fab fa-youtube"></i>
                    </a>
                    <a href="https://www.linkedin.com/login/" target="_blank" rel="noopener noreferrer" class="text-xl text-gray-400 hover:text-white transition duration-300">
                        <i class="fab fa-linkedin-in"></i>
                    </a>
                </div>
                <div class="mt-4 text-sm">
                    <p class="font-semibold text-white mb-1">Nhận tin tức mới nhất:</p>
                    <form action="#" method="post" class="flex">
                        <input type="email" placeholder="Nhập email của bạn" class="px-3 py-2 text-sm text-gray-800 bg-gray-100 border border-gray-600 rounded-l-md focus:outline-none focus:ring-2 focus:ring-blue-500 flex-grow">
                        <button type="submit" class="bg-blue-600 hover:bg-blue-700 text-white text-sm font-medium px-4 py-2 rounded-r-md transition duration-300">Đăng ký</button>
                    </form>
                </div>
            </div>
        </div>

        <%-- Bottom Bar --%>
        <div class="border-t border-gray-700 mt-8 pt-6 text-center text-xs text-gray-400">
            <p class="mb-1">© ${java.time.Year.now()} TechZone. Đã đăng ký Bản quyền.</p>
            <p>Địa chỉ: 123 Đường ABC, Quận 1, TP. Hồ Chí Minh | Điện thoại: (028) 9876 5432 | Email: info@techzone.vn</p>
        </div>
    </div>
</footer>