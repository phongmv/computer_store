<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Shipping Policy - TechZone</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body class="bg-yellow-50 text-gray-800 flex flex-col min-h-screen">

<jsp:include page="header.jsp"/>

<main class="flex-grow pt-24 pb-12">
    <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="bg-white rounded-2xl shadow-xl border-2 border-yellow-100 overflow-hidden">
            <!-- Policy Header -->
            <div class="bg-gradient-to-r from-yellow-400 to-amber-500 p-8 text-center">
                <h1 class="text-3xl font-bold text-white">
                    <i class="fas fa-shipping-fast mr-2"></i>Shipping Policy
                </h1>
            </div>

            <!-- Policy Content -->
            <div class="p-8 space-y-8">
                <section class="space-y-4">
                    <div class="flex items-center space-x-3">
                        <i class="fas fa-clock text-2xl text-yellow-600"></i>
                        <h2 class="text-2xl font-semibold text-yellow-800">Order Processing</h2>
                    </div>
                    <p class="text-gray-700 leading-relaxed pl-10">
                        Orders processed within
                        <span class="bg-yellow-100 text-yellow-800 px-2 py-1 rounded-full">1-2 business days</span>
                        after payment confirmation
                    </p>
                </section>

                <section class="space-y-4">
                    <div class="flex items-center space-x-3">
                        <i class="fas fa-truck-moving text-2xl text-yellow-600"></i>
                        <h2 class="text-2xl font-semibold text-yellow-800">Shipping Options</h2>
                    </div>
                    <div class="grid gap-4 pl-10">
                        <div class="p-4 border-2 border-yellow-100 rounded-xl">
                            <div class="flex items-center space-x-2 text-yellow-700">
                                <i class="fas fa-check-circle text-yellow-500"></i>
                                <h3 class="font-semibold">Standard Shipping</h3>
                                <span class="bg-yellow-100 px-2 py-1 rounded-full text-sm">3-5 business days</span>
                            </div>
                        </div>

                        <div class="p-4 border-2 border-yellow-100 rounded-xl">
                            <div class="flex items-center space-x-2 text-yellow-700">
                                <i class="fas fa-bolt text-yellow-500"></i>
                                <h3 class="font-semibold">Express Shipping</h3>
                                <span class="bg-yellow-100 px-2 py-1 rounded-full text-sm">1-2 business days</span>
                            </div>
                        </div>

                        <div class="p-4 border-2 border-yellow-100 rounded-xl bg-amber-50">
                            <div class="flex items-center space-x-2 text-yellow-700">
                                <i class="fas fa-rocket text-yellow-500"></i>
                                <h3 class="font-semibold">Same-day Delivery</h3>
                                <span class="bg-yellow-100 px-2 py-1 rounded-full text-sm">HCMC Only</span>
                            </div>
                        </div>
                    </div>
                </section>

                <section class="space-y-4">
                    <div class="flex items-center space-x-3">
                        <i class="fas fa-tag text-2xl text-yellow-600"></i>
                        <h2 class="text-2xl font-semibold text-yellow-800">Shipping Fees</h2>
                    </div>
                    <div class="pl-10 space-y-2">
                        <p class="text-gray-700">
                            Free shipping for orders over
                            <span class="bg-yellow-100 text-yellow-800 px-2 py-1 rounded-full">500,000₫</span>
                        </p>
                        <p class="text-gray-700">
                            Standard fee:
                            <span class="bg-yellow-100 text-yellow-800 px-2 py-1 rounded-full">30,000₫</span>
                            for orders below 500,000₫
                        </p>
                    </div>
                </section>

                <section class="space-y-4">
                    <div class="flex items-center space-x-3">
                        <i class="fas fa-map-marked-alt text-2xl text-yellow-600"></i>
                        <h2 class="text-2xl font-semibold text-yellow-800">Order Tracking</h2>
                    </div>
                    <div class="pl-10 space-y-2">
                        <p class="text-gray-700">
                            Real-time tracking available via email/SMS after dispatch
                        </p>
                        <div class="mt-4 p-4 bg-yellow-50 rounded-xl border-2 border-yellow-200">
                            <div class="flex items-center space-x-2 text-yellow-700">
                                <i class="fas fa-box-open text-lg"></i>
                                <span class="font-mono">Tracking #: TZ-123456789</span>
                            </div>
                        </div>
                    </div>
                </section>

                <div class="pt-6 border-t border-yellow-200">
                    <p class="text-sm text-yellow-700 text-center">
                        Need help? Contact our logistics team at
                        <a href="mailto:shipping@techzone.com" class="font-semibold hover:underline">shipping@techzone.com</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</main>

<jsp:include page="footer.jsp"/>

</body>
</html>