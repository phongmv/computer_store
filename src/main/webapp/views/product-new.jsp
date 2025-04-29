<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add New Product - TechZone</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        .file-upload:hover .file-upload-label {
            background-color: #fcd34d;
        }
        .preview-image {
            transition: transform 0.3s ease;
        }
        .preview-image:hover {
            transform: scale(1.03);
        }
    </style>
</head>
<body class="bg-yellow-50 text-gray-800">

<jsp:include page="header.jsp"/>

<!-- Form Section -->
<div class="container mx-auto px-4 py-10 mt-16">
    <div class="max-w-3xl mx-auto bg-white shadow-2xl rounded-2xl p-8 border-2 border-yellow-100">
        <div class="text-center mb-8">
            <h1 class="text-3xl font-bold text-yellow-900">
                <i class="fas fa-plus-circle mr-2 text-yellow-600"></i>Add New Product
            </h1>
            <p class="text-yellow-700 mt-2">Fill in the details to add a new product to the store</p>
        </div>

        <form action="${pageContext.request.contextPath}/product-new" method="post" enctype="multipart/form-data" class="space-y-8">
            <!-- Product Name -->
            <div class="space-y-2">
                <label class="block text-sm font-semibold text-yellow-800">
                    <i class="fas fa-tag mr-2 text-yellow-600"></i>Product Name
                </label>
                <input type="text" id="name" name="name" required
                       class="w-full rounded-xl border-2 border-yellow-200 focus:border-yellow-500 focus:ring-2 focus:ring-yellow-300 p-3 placeholder-yellow-400">
            </div>

            <!-- Price & Stock -->
            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                <div class="space-y-2">
                    <label class="block text-sm font-semibold text-yellow-800">
                        <i class="fas fa-dollar-sign mr-2 text-yellow-600"></i>Price
                    </label>
                    <div class="relative">
                        <span class="absolute left-3 top-1/2 -translate-y-1/2 text-yellow-500">$</span>
                        <input type="number" id="price" name="price" step="0.01" min="0" required
                               class="w-full pl-8 rounded-xl border-2 border-yellow-200 focus:border-yellow-500 focus:ring-2 focus:ring-yellow-300 p-3">
                    </div>
                </div>

                <div class="space-y-2">
                    <label class="block text-sm font-semibold text-yellow-800">
                        <i class="fas fa-boxes mr-2 text-yellow-600"></i>Stock
                    </label>
                    <input type="number" id="stock" name="stock" step="1" min="0" required
                           class="w-full rounded-xl border-2 border-yellow-200 focus:border-yellow-500 focus:ring-2 focus:ring-yellow-300 p-3">
                </div>
            </div>

            <!-- Description -->
            <div class="space-y-2">
                <label class="block text-sm font-semibold text-yellow-800">
                    <i class="fas fa-align-left mr-2 text-yellow-600"></i>Description
                </label>
                <textarea id="description" name="description" rows="4"
                          class="w-full rounded-xl border-2 border-yellow-200 focus:border-yellow-500 focus:ring-2 focus:ring-yellow-300 p-3"></textarea>
            </div>

            <!-- Category -->
            <div class="space-y-2">
                <label class="block text-sm font-semibold text-yellow-800">
                    <i class="fas fa-list-alt mr-2 text-yellow-600"></i>Category
                </label>
                <select id="category" name="category"
                        class="w-full rounded-xl border-2 border-yellow-200 focus:border-yellow-500 focus:ring-2 focus:ring-yellow-300 p-3 appearance-none bg-select-arrow">
                    <option value="Laptops">Laptops</option>
                    <option value="Desktops">Desktops</option>
                    <option value="Accessories">Accessories</option>
                </select>
            </div>

            <!-- Image Upload -->
            <div class="space-y-2">
                <label class="block text-sm font-semibold text-yellow-800">
                    <i class="fas fa-camera mr-2 text-yellow-600"></i>Product Image
                </label>
                <div class="file-upload">
                    <label for="image" class="file-upload-label cursor-pointer">
                        <div class="w-full border-2 border-dashed border-yellow-300 rounded-xl p-6 text-center hover:border-yellow-400 transition">
                            <i class="fas fa-cloud-upload-alt text-3xl text-yellow-500 mb-2"></i>
                            <p class="text-yellow-700 font-medium">Click to upload product image</p>
                            <p class="text-sm text-yellow-600">PNG, JPG, JPEG (Max 5MB)</p>
                        </div>
                    </label>
                    <input type="file" id="image" name="image" accept="image/*" class="hidden" onchange="previewImage(event)">
                </div>
                <div class="mt-4 text-center">
                    <img id="imagePreview" src="#" alt="Preview"
                         class="preview-image hidden max-h-64 rounded-xl border-2 border-yellow-200 mx-auto shadow-md">
                </div>
            </div>

            <!-- Action Buttons -->
            <div class="flex flex-col md:flex-row justify-end gap-4 pt-8">
                <a href="${pageContext.request.contextPath}/home"
                   class="flex items-center justify-center px-6 py-3 border-2 border-yellow-500 text-yellow-700 rounded-xl hover:bg-yellow-50 transition-all">
                    <i class="fas fa-times mr-2"></i>Cancel
                </a>
                <button type="submit"
                        class="flex items-center justify-center px-8 py-3 bg-gradient-to-r from-yellow-500 to-amber-600 text-white rounded-xl font-semibold hover:from-yellow-600 hover:to-amber-700 transition-all transform hover:-translate-y-0.5 shadow-lg hover:shadow-xl">
                    <i class="fas fa-save mr-2"></i>Save Product
                </button>
            </div>
        </form>
    </div>
</div>

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
        alert("Please select a valid image file (PNG, JPG, JPEG).");
        preview.classList.add('hidden');
      }
    }
  }
</script>

</body>
</html>