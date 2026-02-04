<x-app-layout>
    <div class="container mx-auto p-6">
        <!-- Form Section -->
        <div class=" shadow-md rounded-lg p-6 bg-white">
            <h2 class="text-lg font-bold mb-4">Add New Content</h2>
            @if ($errors->any())
                <div class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded relative">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
            <form action="{{ route('sitecontent.store') }}" method="POST" enctype="multipart/form-data">
                @csrf

                <!-- Title and Description -->
                <div class="mb-4 flex space-x-4">
                    <!-- Arabic Title -->
                    <div class="flex-1">
                        <label class="block  font-medium mb-2" for="title_ar">Title (Arabic)</label>
                        <input type="text" id="title_ar" name="title_ar" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" placeholder="Enter Arabic Title" required>
                    </div>
                    <!-- English Title -->
                    <div class="flex-1">
                        <label class="block  font-medium mb-2" for="title_en">Title (English)</label>
                        <input type="text" id="title_en" name="title_en" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" placeholder="Enter English Title" required>
                    </div>
                </div>

                <div class="mb-4 flex space-x-4">
                    <!-- Arabic Description -->
                    <div class="flex-1">
                        <label class="block  font-medium mb-2" for="description_ar">Description (Arabic)</label>
                        <textarea id="description_ar" name="description_ar" rows="4" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" placeholder="Enter Arabic Description" required></textarea>
                    </div>
                    <!-- English Description -->
                    <div class="flex-1">
                        <label class="block  font-medium mb-2" for="description_en">Description (English)</label>
                        <textarea id="description_en" name="description_en" rows="4" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" placeholder="Enter English Description" required></textarea>
                    </div>
                </div>

                <!-- Content -->
                <div class="mb-4 flex space-x-4">
                    <!-- Arabic Content -->
                    <div class="flex-1">
                        <label class="block  font-medium mb-2" for="content_ar">Content (Arabic)</label>
                        <textarea id="content_ar" name="content_ar" rows="4" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" placeholder="Enter Arabic Content" ></textarea>
                    </div>
                    <!-- English Content -->
                    <div class="flex-1">
                        <label class="block  font-medium mb-2" for="content_en">Content (English)</label>
                        <textarea id="content_en" name="content_en" rows="4" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" placeholder="Enter English Content" ></textarea>
                    </div>
                </div>

                <!-- Type and Link Text -->
                <div class="mb-4 flex space-x-4">
                    <!-- Link Text -->
                    <div class="flex-1">
                        <label class="block  font-medium mb-2" for="link_text">Link</label>
                        <input type="text" id="link_text" name="link" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" placeholder="Enter Link " >
                    </div>
                    <div class="flex-1">
                        <label class="block  font-medium mb-2" for="link_text">Link Text (Arabic)</label>
                        <input type="text" id="link_text" name="link_text_ar" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" placeholder="Enter Link Text" >
                    </div>
                    <div class="flex-1">
                        <label class="block  font-medium mb-2" for="link_text">Link Text (English)</label>
                        <input type="text" id="link_text" name="link_text_en" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" placeholder="Enter Link Text" >
                    </div>
                </div>

                <div class="mb-4 flex space-x-4">
                    <!-- Icon Input -->
                    <div class="flex-1">
                        <label class="block  font-medium mb-2" for="icon">Icon</label>
                        <input type="text" id="icon" name="icon" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" placeholder="Enter Icon Class or Path">
                    </div>
                    <!-- Type -->
                    <div class="flex-1">
                        <label class="block  font-medium mb-2" for="type">Type</label>
                        <select id="type" name="type" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" required>
                            <option value="" disabled selected>Select Type</option>
                            <option value="page">Page</option>
                            <option value="content">Content</option>
                        </select>
                    </div>
                    <div class="flex-1">
                        <label class="block  font-medium mb-2" for="type">identifier</label>
                        <select id="type" name="identifier" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" required>
                            <option value="" disabled selected>Select Content </option>
                            <option value="product">Product</option>
                            <option value="advantage">Advantage</option>
                            <option value="smart_product">Smart Product</option>
                            <option value="page">Page</option>
                        </select>
                    </div>
                </div>

                <!-- Visibility -->
                <div class="mb-4 flex items-center">
                    <input type="checkbox" id="visibility" name="visibility" class="text-blue-500 focus:ring focus:ring-blue-500" >
                    <label for="visibility" class="ml-2  font-medium"> Visible</label>
                </div>

                <!-- Image Upload -->
                <div class="mb-4">
                    <label class="block  font-medium mb-2" for="image">Upload Image</label>
                    <input type="file" id="image" name="images[]" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" multiple>
                </div>
                <div class="mb-4">
                    <label class="block  font-medium mb-2" for="image">Home Image</label>
                    <input type="file" id="image" name="homeImages[]" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" >
                </div>

                <!-- Submit Button -->
                <div class="flex justify-end">
                    <button type="submit" class="px-6 py-2 bg-blue-600  rounded-md hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-opacity-50">Save</button>
                </div>
            </form>
        </div>
    </div>



</x-app-layout>
