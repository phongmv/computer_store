<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Returns & Exchanges Policy - TechZone</title>
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
                    <i class="fas fa-sync-alt mr-2"></i>Returns & Exchanges Policy
                </h1>
            </div>

            <!-- Policy Content -->
            <div class="p-8 space-y-8">
                <section class="space-y-4">
                    <div class="flex items-center space-x-3">
                        <i class="fas fa-check-circle text-2xl text-yellow-600"></i>
                        <h2 class="text-2xl font-semibold text-yellow-800">Return Conditions</h2>
                    </div>
                    <p class="text-gray-700 leading-relaxed pl-10">
                        Items can be returned within <span class="bg-yellow-100 text-yellow-800 px-2 py-1 rounded-full">7 days</span> of receiving the order. Products must be
                        <strong>unused, unwashed</strong>, and returned in their original packaging.
                    </p>
                </section>

                <section class="space-y-4">
                    <div class="flex items-center space-x-3">
                        <i class="fas fa-exchange-alt text-2xl text-yellow-600"></i>
                        <h2 class="text-2xl font-semibold text-yellow-800">Exchange Policy</h2>
                    </div>
                    <p class="text-gray-700 leading-relaxed pl-10">
                        You may exchange products for another size or style if available. Exchanges must also meet the return
                        conditions outlined above.
                    </p>
                </section>

                <section class="space-y-4">
                    <div class="flex items-center space-x-3">
                        <i class="fas fa-list-ol text-2xl text-yellow-600"></i>
                        <h2 class="text-2xl font-semibold text-yellow-800">Return Process</h2>
                    </div>
                    <ol class="list-decimal list-inside space-y-3 text-gray-700 pl-10">
                        <li class="pb-2 border-b border-yellow-100">
                            <span class="font-medium text-yellow-700">Contact Support:</span>
                            Initiate return via email or phone
                        </li>
                        <li class="pb-2 border-b border-yellow-100">
                            <span class="font-medium text-yellow-700">Ship Items:</span>
                            Securely package and send to our return address
                        </li>
                        <li>
                            <span class="font-medium text-yellow-700">Processing:</span>
                            Refund/exchange processed after inspection
                        </li>
                    </ol>
                </section>

                <section class="space-y-4">
                    <div class="flex items-center space-x-3">
                        <i class="fas fa-wallet text-2xl text-yellow-600"></i>
                        <h2 class="text-2xl font-semibold text-yellow-800">Refunds</h2>
                    </div>
                    <p class="text-gray-700 leading-relaxed pl-10">
                        Refunds are processed to your original payment method within
                        <span class="bg-yellow-100 text-yellow-800 px-2 py-1 rounded-full">3–5 business days</span>
                        after we receive your return.
                    </p>
                </section>

                <div class="pt-6 border-t border-yellow-200">
                    <p class="text-sm text-yellow-700 text-center">
                        Need assistance? Contact our support team at
                        <a href="mailto:support@techzone.com" class="font-semibold hover:underline">support@techzone.com</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</main>

<jsp:include page="footer.jsp"/>

</body>
</html>