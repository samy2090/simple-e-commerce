<x-app-layout>
    <div class="container mx-auto p-6">
        <!-- Form Section -->
        <div class="bg-white shadow-md rounded-lg p-6">
            <h2 class="text-lg font-bold mb-4 ">Edit Content</h2>
            @if ($errors->any())
                <div class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded relative">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
            <form action="{{ route('sitecontent.update',$content->id) }}" method="POST" enctype="multipart/form-data">
                @csrf @method('PUT')

                <!-- Title and Description -->
                <div class="mb-4 flex space-x-4">
                    <!-- Arabic Title -->
                    <div class="flex-1">
                        <label class="block  font-medium mb-2" for="title_ar">Title (Arabic)</label>
                        <input type="text" id="title_ar" name="title_ar" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" placeholder="Enter Arabic Title" value = "{{$content->getTranslation('title','ar')}}" required>
                        <input type="hidden" id="id" name="id" value = {{$content->id}}>
                    </div>
                    <!-- English Title -->
                    <div class="flex-1">
                        <label class="block  font-medium mb-2" for="title_en">Title (English)</label>
                        <input type="text" id="title_en" name="title_en" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" placeholder="Enter English Title" value = "{{$content->getTranslation('title','en')}}" required>
                    </div>
                </div>

                <div class="mb-4 flex space-x-4">
                    <!-- Arabic Description -->
                    <div class="flex-1">
                        <label class="block  font-medium mb-2" for="description_ar">Description (Arabic)</label>
                        <textarea id="description_ar" name="description_ar" rows="4" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" placeholder="Enter Arabic Description"  required> {{$content->getTranslation('description','ar')}} </textarea>
                    </div>
                    <!-- English Description -->
                    <div class="flex-1">
                        <label class="block  font-medium mb-2" for="description_en">Description (English)</label>
                        <textarea id="description_en" name="description_en" rows="4" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" placeholder="Enter English Description"  required>  {{$content->getTranslation('description','en')}} </textarea>
                    </div>
                </div>

                <!-- Content -->
                <div class="mb-4 flex space-x-4">
                    <!-- Arabic Content -->
                    <div class="flex-1">
                        <label class="block  font-medium mb-2" for="content_ar">Content (Arabic)</label>
                        <textarea id="content_ar" name="content_ar" rows="4" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" placeholder="Enter Arabic Content"  >  {{$content->getTranslation('content','ar')}}</textarea>
                    </div>
                    <!-- English Content -->
                    <div class="flex-1">
                        <label class="block  font-medium mb-2" for="content_en">Content (English)</label>
                        <textarea id="content_en" name="content_en" rows="4" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" placeholder="Enter English Content"  >  {{$content->getTranslation('content','en')}} </textarea>
                    </div>
                </div>

                <!-- Type and Link Text -->
                <div class="mb-4 flex space-x-4">
                    <!-- Link Text -->
                    <div class="flex-1">
                        <label class="block  font-medium mb-2" for="link_text">Link</label>
                        <input type="text" id="link_text" name="link" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" placeholder="Enter Link "  value = "{{$content->link}}" >
                    </div>
                    <div class="flex-1">
                        <label class="block  font-medium mb-2" for="link_text">Link Text (Arabic)</label>
                        <input type="text" id="link_text" name="link_text_ar" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" placeholder="Enter Link Text" value = "{{$content->getTranslation('link_text','ar')}}" >
                    </div>
                    <div class="flex-1">
                        <label class="block  font-medium mb-2" for="link_text">Link Text (English)</label>
                        <input type="text" id="link_text" name="link_text_en" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" placeholder="Enter Link Text" value = "{{$content->getTranslation('link_text','en')}}" >
                    </div>
                </div>

                <div class="mb-4 flex space-x-4">
                    <!-- Icon Input -->
                    <div class="flex-1">
                        <label class="block  font-medium mb-2" for="icon">Icon</label>
                        <input type="text" id="icon" name="icon" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" value = "{{$content->icon}}" placeholder="Enter Icon Class or Path">
                    </div>
                    <!-- Type -->
                    <div class="flex-1">
                        <label class="block  font-medium mb-2" for="type">Type</label>
                        <select id="type" name="type" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" required>
                            <option value="" disabled selected>Select  Type</option>
                            <option value="page" {{$content->type == 'page' ? 'selected' : '' }}>Page</option>
                            <option value="content" {{$content->type == 'content' ? 'selected' : '' }}>Content</option>
                        </select>
                    </div>
                    <div class="flex-1">
                        <label class="block  font-medium mb-2" for="type">identifier</label>
                        @if ( $content->identifier != 'advantage' && $content->identifier != 'smart_product' && $content->identifier != 'product')
                        <input type="text" id="identifier" name="identifier"  class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" placeholder="{{str_replace('_', ' ', ucfirst($content->identifier))}}" disabled>
                        <input type="hidden" id="identifier" name="identifier" value="{{$content->identifier}}" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" placeholder="{{str_replace('_', ' ', ucfirst($content->identifier))}}">
                        @else
                        <select id="type" name="identifier" class="w-full bg-gray-700  border-gray-600 rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" required>
                            <option value="" disabled selected>Select Content </option>
                            <option value="product"         {{$content->identifier == 'product' ? 'selected' : ''}}>Product</option>
                            <option value="advantage"       {{$content->identifier == 'advantage' ? 'selected' : ''}}>Advantage</option>
                            <option value="smart_product"   {{$content->identifier == 'smart_product' ? 'selected' : ''}}>Smart Product</option>
                            <option value="page"            {{$content->identifier == 'page' ? 'selected' : ''}}>Page</option>
                        </select>
                        @endif

                    </div>
                </div>

                <!-- Visibility -->
                <div class="mb-4 flex items-center">
                    <input type="checkbox" id="visibility" name="visibility" class="text-blue-500 focus:ring focus:ring-blue-500"  {{ $content->visibility == 1 ? 'checked' : '' }}>
                    <label for="visibility" class="ml-2  font-medium"> Visible </label>
                </div>

                <!-- Image Upload -->
                <div class="mb-4">
                    <label class="block  font-medium mb-2" for="image">Upload Image</label>
                    <input type="file" id="image" name="images[]" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" multiple>
                    @if ( $content->images->first())
                    <div class="bg-gray-800 p-4 rounded-md shadow-md">
                        <h3 class="text-lg font-semibold  mb-4">the current Image</h3>
                        <div class="flex flex-wrap gap-4">
                            @foreach ($content->images->where('filename', '!=', 'home') as $image)
                                <div class="w-32 h-32 bg-gray-700 flex items-center justify-center rounded-md overflow-hidden">
                                    <img src="{{ asset($image->path) }}" alt="Uploaded Image" class="object-cover w-full h-full">
                                </div>
                            @endforeach
                        </div>
                    </div>

                    @endif
                </div>
                <div class="mb-4">
                    <label class="block  font-medium mb-2" for="image">Home Image</label>
                    <input type="file" id="image" name="homeImages[]" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" >
                    @if ( $content->images->first())
                    <div class="bg-gray-800 p-4 rounded-md shadow-md">
                        <h3 class="text-lg font-semibold  mb-4">the current Image</h3>
                        <div class="flex flex-wrap gap-4">
                                <div class="w-32 h-32 bg-gray-700 flex items-center justify-center rounded-md overflow-hidden">
                                    <img src="{{ asset($content->images->firstWhere('filename', 'home')?->path ?? $content->images->first()?->path ?? 'default-image.jpg') }}" alt="Uploaded Image" class="object-cover w-full h-full">
                                    {{-- {{dd($content->images->toArray());}} --}}
                                </div>
                        </div>
                    </div>

                    @endif
                </div>

                <!-- Submit Button -->
                <div class="flex justify-end">
                    <button type="submit" class="px-6 py-2 bg-blue-600  rounded-md hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-opacity-50">Save</button>
                </div>
            </form>
        </div>
    </div>




</x-app-layout>
