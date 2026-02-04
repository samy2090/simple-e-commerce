<x-app-layout>
    <div class="container mx-auto p-4 ">
        @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
        <!-- Button to Open Form Page -->
        <div class="mb-4">
            <a href="{{route('sitecontent.create')}}" class="px-6 py-2 bg-green-600 text-white rounded-md  focus:outline-none focus:ring-2 focus:ring-green-500">Add New Content</a>
        </div>

        <!-- Table Section -->
        <div class=" shadow-lg rounded-lg p-6 mt-6 bg-white">
            <h2 class="text-lg font-bold mb-4 text-center">Content Table</h2>
            <table class="w-full table-auto border-collapse border bg-white ">
                <thead>
                    <tr class="bg-white">
                        <th class="border  px-4 py-2 text-center">Title</th>
                        <th class="border  px-4 py-2 text-center">Visibility</th>
                        <th class="border  px-4 py-2 text-center">Type</th>
                        <th class="border  px-4 py-2 text-center">Identifier</th>
                        <th class="border  px-4 py-2 text-center">Link</th>
                        <th class="border  px-4 py-2 text-center">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Example Row (Replace with dynamic content) -->
                    @foreach ($contents as $content)
                    <tr class="">
                        <td class="border  px-4 py-2 text-center">{{$content->getTranslation('title','en')}}</td>
                        <td class="border  px-4 py-2 text-center" >{{ $content->visibility== 1 ? 'visible' : 'hiddin' }}</td>
                        <td class="border  px-4 py-2 text-center">{{ $content->type }}</td>
                        <td class="border  px-4 py-2 text-center">{{str_replace('_',' ',ucfirst($content->identifier)) }}</td>
                        <td class="border  px-4 py-2 text-center">{{ $content->link }}</td>
                        <td class="border  px-4 py-2 text-center">
                            <a href="{{ route('sitecontent.edit', $content->id) }}"
                                class="px-4 py-2 bg-blue-600 text-white rounded-md hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500">
                                Edit
                            </a>
                            <button class="px-4 py-2 bg-red-600 text-white rounded-md hover:bg-red-700 focus:outline-none focus:ring-2 focus:ring-red-500" onclick="openModal({{ $content->id }})" >Delete</button>
                            <!-- Modal -->
                            <div id="deleteModal{{ $content->id }}" class="fixed inset-0 bg-gray-900 bg-opacity-50 hidden items-center justify-center z-50">
                                <div class="bg-gray-800 p-6 rounded-lg shadow-lg w-1/3">
                                    <h3 class="text-xl font-semibold text-white text-center mb-4">Are you sure you want to delete this item?</h3>
                                    <div class="flex justify-between">
                                        <button class="px-4 py-2 bg-gray-500 text-white rounded-md hover:bg-gray-600" onclick="closeModal({{ $content->id }})">Cancel</button>
                                        <form action="{{ route('sitecontent.destroy', $content->id) }}" method="POST">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="px-4 py-2 bg-red-600 text-white rounded-md hover:bg-red-700">Delete</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>

        </div>
    </div>

    <script>
        function openModal(contentId) {
            document.getElementById('deleteModal' + contentId).classList.remove('hidden');
        }

        function closeModal(contentId) {
            document.getElementById('deleteModal' + contentId).classList.add('hidden');
        }
    </script>
</x-app-layout>
