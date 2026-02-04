<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SiteContentRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'title_ar'          => 'required|string|max:255',
            'title_en'          => 'required|string|max:255',
            'description_ar'    => 'required|string',
            'description_en'    => 'required|string',
            'content_ar'        => 'nullable|string',
            'content_en'        => 'nullable|string',
            'identifier'        => 'required|string',
            'slug'              => 'nullable|string',
            'link_text_ar'      => 'nullable|string',
            'link_text_en'      => 'nullable|string',
            'type'              => 'required|string|in:page,content,solution,product,smart_product',
            'icon'              => 'nullable|string',
        ];
    }
}
