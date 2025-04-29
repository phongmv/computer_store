<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Về Chúng Tôi - FS-Modern</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        body {
            font-family: 'Inter', sans-serif;
        }
    </style>
</head>
<body class="bg-gradient-to-r from-blue-50 to-purple-100 text-gray-800 font-sans">

<%-- Header --%>
<jsp:include page="header.jsp"/>

<main class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 pt-24 pb-20">

    <section class="mb-16 text-center">
        <h2 class="text-5xl font-extrabold text-indigo-700 mb-6">Chúng tôi là ai?</h2>
        <p class="text-lg text-gray-700 leading-relaxed max-w-3xl mx-auto mb-8">
            FS-Modern là điểm đến tin cậy của bạn cho công nghệ máy tính và điện tử tiên tiến. Được thành lập bởi đội ngũ kỹ sư và những người đam mê công nghệ, sứ mệnh của chúng tôi là trao quyền cho người dùng bằng các thiết bị chất lượng hàng đầu và dịch vụ vượt trội.
        </p>
        <img src="https://images.unsplash.com/photo-1581090700227-1e8e8d1e8e2b?auto=format&fit=crop&w=1350&q=80" alt="Đội ngũ FS-Modern" class="rounded-xl shadow-2xl w-full max-w-4xl mx-auto max-h-[450px] object-cover mb-8 border-4 border-indigo-300">
        <p class="text-md text-gray-600 max-w-3xl mx-auto">
            Từ game thủ đến chuyên gia, chúng tôi phục vụ khách hàng toàn cầu với cam kết về sự đổi mới, chất lượng và tính bền vững trong mọi hoạt động.
        </p>
    </section>

    <section class="mb-16 bg-white p-8 rounded-lg shadow-xl border border-indigo-200">
        <h2 class="text-3xl font-semibold text-indigo-900 mb-4 text-center">Sứ Mệnh Của Chúng Tôi</h2>
        <p class="text-gray-700 leading-relaxed text-center max-w-3xl mx-auto">
            Trang bị cho mọi cá nhân và tổ chức những giải pháp máy tính hiệu năng cao, đáng tin cậy, thúc đẩy sự sáng tạo, năng suất và tiến bộ.
        </p>
    </section>

    <section class="grid md:grid-cols-2 lg:grid-cols-4 gap-8">
        <div class="bg-white p-6 rounded-lg shadow-md border border-indigo-200 hover:shadow-xl transition-shadow duration-300">
            <h3 class="text-xl font-semibold text-indigo-600 mb-3">Phần Cứng Cao Cấp</h3>
            <p class="text-gray-600 leading-relaxed">Chúng tôi cung cấp linh kiện và thiết bị từ các thương hiệu đáng tin cậy nhất, đảm bảo hiệu suất và độ bền cho mọi nhu cầu sử dụng.</p>
        </div>
        <div class="bg-white p-6 rounded-lg shadow-md border border-indigo-200 hover:shadow-xl transition-shadow duration-300">
            <h3 class="text-xl font-semibold text-indigo-600 mb-3">Đổi Mới Công Nghệ</h3>
            <p class="text-gray-600 leading-relaxed">Danh mục sản phẩm của chúng tôi có CPU, GPU và thiết bị ngoại vi mới nhất để giúp bạn luôn dẫn đầu trong kỷ nguyên số.</p>
        </div>
        <div class="bg-white p-6 rounded-lg shadow-md border border-indigo-200 hover:shadow-xl transition-shadow duration-300">
            <h3 class="text-xl font-semibold text-indigo-600 mb-3">Hỗ Trợ Khách Hàng</h3>
            <p class="text-gray-600 leading-relaxed">Các chuyên gia của chúng tôi luôn sẵn sàng hỗ trợ — cho dù bạn cần tư vấn cài đặt, trợ giúp cấu hình hay dịch vụ sau mua hàng.</p>
        </div>
        <div class="bg-white p-6 rounded-lg shadow-md border border-indigo-200 hover:shadow-xl transition-shadow duration-300">
            <h3 class="text-xl font-semibold text-indigo-600 mb-3">Trách Nhiệm Môi Trường</h3>
            <p class="text-gray-600 leading-relaxed">Chúng tôi cam kết thực hiện các hoạt động bền vững bao gồm bao bì tái chế và các sản phẩm tiết kiệm năng lượng.</p>
        </div>
    </section>
</main>

<!-- Footer -->
<jsp:include page="./footer.jsp" />

</body>
</html>
