<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add New Product</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body class="bg-gray-50 text-gray-800">

<jsp:include page="header.jsp"/>

<!-- Form Section -->
<div class="container mx-auto px-4 py-10 mt-16">
    <div class="max-w-2xl mx-auto bg-white shadow-lg rounded-xl p-8">
        <h1 class="text-3xl font-bold mb-6 text-center text-gray-800">Add New Product</h1>

        <form action="${pageContext.request.contextPath}/product-new" method="post" enctype="multipart/form-data" class="space-y-6">
            <!-- Name -->
            <div>
                <label for="name" class="block text-sm font-semibold">Product Name</label>
                <input type="text" id="name" name="name" required
                       class="mt-1 w-full rounded-lg border-gray-300 shadow-sm focus:ring-blue-500 focus:border-blue-500 p-2">
            </div>

            <!-- Price -->
            <div>
                <label for="price" class="block text-sm font-semibold">Price ($)</label>
                <input type="number" id="price" name="price" step="0.01" min="0" required
                       class="mt-1 w-full rounded-lg border-gray-300 shadow-sm focus:ring-blue-500 focus:border-blue-500 p-2">
            </div>

            <!-- Stock -->
            <div>
                <label for="stock" class="block text-sm font-semibold">Stock</label>
                <input type="number" id="stock" name="stock" step="1" min="0" required
                       class="mt-1 w-full rounded-lg border-gray-300 shadow-sm focus:ring-blue-500 focus:border-blue-500 p-2">
            </div>

            <!-- Description -->
            <div>
                <label for="description" class="block text-sm font-semibold">Description</label>
                <textarea id="description" name="description" rows="3"
                          class="mt-1 w-full rounded-lg border-gray-300 shadow-sm focus:ring-blue-500 focus:border-blue-500 p-2"></textarea>
            </div>

            <!-- Category -->
            <div>
                <label for="category" class="block text-sm font-semibold">Category</label>
                <select id="category" name="category"
                        class="mt-1 w-full rounded-lg border-gray-300 shadow-sm focus:ring-blue-500 focus:border-blue-500 p-2">
                    <option value="Laptops">Laptops</option>
                    <option value="Desktops">Desktops</option>
                    <option value="Accessories">Accessories</option>
                </select>
            </div>

            <!-- Image Upload -->
            <div>
                <label for="image" class="block text-sm font-semibold">Product Image</label>
                <input type="file" id="image" name="image" accept="image/*"
                       class="mt-1 w-full text-sm text-gray-500 file:mr-4 file:py-2 file:px-4 file:rounded-md file:border-0 file:font-semibold file:bg-blue-50 file:text-blue-700 hover:file:bg-blue-100"
                       onchange="previewImage(event)">
                <div class="mt-4">
                    <img id="imagePreview" src="#" alt="Image Preview"
                         class="hidden max-h-64 rounded-lg border border-gray-300 mx-auto"/>
                </div>
            </div>

            <!-- Buttons -->
            <div class="flex justify-end space-x-4 pt-6">
                <a href="${pageContext.request.contextPath}/home"
                   class="px-4 py-2 border border-gray-300 rounded-lg text-gray-700 hover:bg-gray-100 transition">
                    Cancel
                </a>
                <button type="submit"
                        class="px-5 py-2 bg-blue-600 text-white rounded-lg font-semibold hover:bg-blue-700 transition">
                    <i class="fas fa-save mr-2"></i>Save Product
                </button>
            </div>
        </form>
    </div>
</div>

<!-- Preview JS -->
<script>
  function previewImage(event) {
    const input = event.target;
    const preview = document.getElementById('imagePreview');

    if (input.files && input.files[0]) {
      const file = input.files[0];

      if (file.type.startsWith("image/")) {
        const reader = new FileReader();
        reader.onload = function(e) {
          preview.src = e.target.result;
          preview.classList.remove('hidden');
        };
        reader.readAsDataURL(file);
      } else {
        alert("Please select a valid image file.");
        preview.classList.add('hidden');
      }
    }
  }
</script>

</body>
</html>
