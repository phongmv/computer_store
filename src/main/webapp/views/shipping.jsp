<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Shipping Policy - Clothing Store</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
</head>
<body class="bg-gray-50 text-gray-800 flex flex-col min-h-screen">

<jsp:include page="header.jsp"/>

<main class="flex-grow pt-24">
    <div class="max-w-4xl mx-auto px-4 py-10 bg-white rounded-lg shadow-md space-y-8">
        <h1 class="text-3xl font-bold text-center text-blue-600 mb-6">
            <i class="fas fa-truck mr-2"></i> Shipping Policy
        </h1>

        <section>
            <h2 class="text-xl font-semibold text-blue-500 mb-2">Order Processing Time</h2>
            <p class="text-gray-700 leading-relaxed">
                Orders will be processed within <strong>1-2 business days</strong> after payment is received. Please note that processing times may be slightly longer during sales events or public holidays.
            </p>
        </section>

        <section>
            <h2 class="text-xl font-semibold text-blue-500 mb-2">Shipping Methods</h2>
            <ul class="list-disc list-inside space-y-2 text-gray-700">
                <li>Standard Shipping (<strong>3-5 business days</strong>)</li>
                <li>Express Shipping (<strong>1-2 business days</strong>)</li>
                <li>Same-day Delivery (<strong>Available in Ho Chi Minh City only</strong>)</li>
            </ul>
        </section>

        <section>
            <h2 class="text-xl font-semibold text-blue-500 mb-2">Shipping Fees</h2>
            <p class="text-gray-700 leading-relaxed">
                Free shipping for orders over <strong>500,000₫</strong>. Orders below this amount will incur a shipping fee of <strong>30,000₫</strong>.
            </p>
        </section>

        <section>
            <h2 class="text-xl font-semibold text-blue-500 mb-2">Order Tracking</h2>
            <p class="text-gray-700 leading-relaxed">
                Once your order is shipped, you will receive an email with a tracking number to follow your delivery status.
            </p>
        </section>
    </div>
</main>

<jsp:include page="footer.jsp"/>

</body>
</html>
