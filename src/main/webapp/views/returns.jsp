<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Returns & Exchanges Policy - Clothing Store</title>
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
            <i class="fas fa-undo-alt mr-2"></i> Returns & Exchanges Policy
        </h1>

        <section>
            <h2 class="text-xl font-semibold text-blue-500 mb-2">Return Conditions</h2>
            <p class="text-gray-700 leading-relaxed">
                Items can be returned within <strong>14 days</strong> of receiving the order. Products must be
                <strong>unused, unwashed</strong>, with all original tags and packaging intact. For hygiene reasons,
                items like undergarments, swimwear, and socks cannot be returned or exchanged.
            </p>
        </section>

        <section>
            <h2 class="text-xl font-semibold text-blue-500 mb-2">Exchange Policy</h2>
            <p class="text-gray-700 leading-relaxed">
                You may exchange products for another size, color, or style if available. Exchanges must also meet the
                return conditions outlined above. If the item is unavailable, a refund will be issued instead.
            </p>
        </section>

        <section>
            <h2 class="text-xl font-semibold text-blue-500 mb-2">Return Process</h2>
            <ol class="list-decimal list-inside space-y-2 text-gray-700">
                <li>Contact our customer service team via email or phone to initiate a return.</li>
                <li>Securely package the items, ensuring tags and hygiene seals are intact, and ship them to our return address.</li>
                <li>Once received and inspected, we will process your refund or exchange, and notify you of the decision.</li>
            </ol>
        </section>

        <section>
            <h2 class="text-xl font-semibold text-blue-500 mb-2">Refunds</h2>
            <p class="text-gray-700 leading-relaxed">
                Refunds are processed to your original payment method within <strong>3–5 business days</strong> after
                we receive and inspect your return. Please note that original shipping fees are non-refundable.
            </p>
        </section>
    </div>
</main>

<jsp:include page="footer.jsp"/>

</body>
</html>
