<x-app-layout>
    <div class="container mx-auto p-6">
        <!-- Form Section -->
        <div class="bg-white shadow-md rounded-lg p-6">
            <h2 class="text-lg font-bold mb-4 ">Update Site Settings</h2>
            @if ($errors->any())
                <div class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded relative">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif

            <form action="{{ route('sitesettings.update', $siteSetting->id) }}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')

                <!-- Title -->
                <div class="mb-4">
                    <label class="block  font-medium mb-2" for="title">Title</label>
                    <input type="text" id="title" name="title" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" placeholder="Enter Title" value="{{ $siteSetting->title }}" required>
                </div>

                <!-- Links -->
                <div class="mb-4 flex space-x-4">
                    <div class="flex-1">
                        <label class="block  font-medium mb-2" for="facebookLink">Facebook Link</label>
                        <input type="url" id="facebookLink" name="facebookLink" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" placeholder="Enter Facebook Link" value="{{ $siteSetting->facebookLink }}">
                    </div>
                    <div class="flex-1">
                        <label class="block  font-medium mb-2" for="instaLink">Instagram Link</label>
                        <input type="url" id="instaLink" name="instaLink" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" placeholder="Enter Instagram Link" value="{{ $siteSetting->instaLink }}">
                    </div>
                    <div class="flex-1">
                        <label class="block  font-medium mb-2" for="xLink">Twitter Link</label>
                        <input type="url" id="xLink" name="xLink" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" placeholder="Enter Twitter Link" value="{{ $siteSetting->xLink }}">
                    </div>
                </div>

                <div class="mb-4 flex space-x-4">
                    <div class="flex-1">
                        <label class="block  font-medium mb-2" for="mail">Email</label>
                        <input type="email" id="mail" name="mail" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" placeholder="Enter Email" value="{{ $siteSetting->mail }}">
                    </div>
                    <div class="flex-1">
                        <label class="block  font-medium mb-2" for="mobileAppLink">Mobile App Link</label>
                        <input type="url" id="mobileAppLink" name="mobileAppLink" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" placeholder="Enter Mobile App Link" value="{{ $siteSetting->mobileAppLink }}">
                    </div>
                </div>

                <!-- Description -->
                <div class="mb-4">
                    <label class="block  font-medium mb-2" for="description">Description</label>
                    <textarea id="description" name="description" rows="4" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4" placeholder="Enter Description">{{ $siteSetting->description }}</textarea>
                </div>

                {{-- <!-- Logo Upload -->
                <div class="mb-4">
                    <label class="block  font-medium mb-2" for="logo">Upload Logo</label>
                    <input type="file" id="logo" name="logo" class="w-full  rounded-md focus:ring focus:ring-blue-500 focus:ring-opacity-50 mb-4">
                    @if($siteSetting->logo_path)
                        <img src="{{ asset('storage/' . $siteSetting->logo_path) }}" alt="Current Logo" class="mt-2">
                    @endif
                </div> --}}

                <!-- Submit Button -->
                <div class="flex justify-end">
                    <button type="submit" class="px-6 py-2 bg-blue-600  rounded-md hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-opacity-50">Update</button>
                </div>
            </form>



        </div>
    </div>
</x-app-layout>
