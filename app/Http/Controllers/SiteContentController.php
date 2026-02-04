<?php

namespace App\Http\Controllers;

use App\Models\Image;
use App\Models\SiteContent;
use Illuminate\Support\Str;
use App\Models\SiteSettings;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use App\Http\Requests\SiteContentRequest;

class SiteContentController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $contents = SiteContent::all();
        return view('siteContent.siteContent', compact('contents'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('siteContent.addSiteContent');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(SiteContentRequest  $request)
    {
        DB::beginTransaction();
        try{
            $validated = $request->validated();
            $content = new SiteContent();
            $content->title         = ['ar'=>$request->title_ar , 'en'=>$request->title_en];
            $content->description   = ['ar'=>$request->description_ar , 'en'=>$request->description_en];
            $content->content       = ['ar'=>$request->content_ar , 'en'=>$request->content_en];
            $content->slug          = Str::slug($request->title_en);
            $content->link          = $request->link;
            $content->link_text     = ['ar'=>$request->link_text_ar , 'en'=>$request->link_text_en];
            $content->identifier    = str_replace(' ', '_',$request->identifier);
            $content->type          = $request->type;
            $content->visibility    = $request->visibility == 'on' ? 1 : 0;
            $content->icon          = $request->icon;
            $content->save();
            // insert img
            if($request->hasfile('images'))
            {
                foreach($request->file('images') as $image)
                {
                    $name = str_replace(' ', '_', $image->getClientOriginalName());;
                    $path = $image->storeAs('attachments/images/', $image->getClientOriginalName(),'upload_attachments');

                    // insert in image_table
                    $image= new Image();
                    $image->filename        = $name;
                    $image->content_id      = $content->id;
                    $image->path            = $path;
                    $image->save();
                }
            }
            if($request->hasfile('homeImages'))
            {
                foreach($request->file('homeImages') as $image)
                {
                    $name = str_replace(' ', '_', $image->getClientOriginalName());;
                    $path = $image->storeAs('attachments/images/', $image->getClientOriginalName(),'upload_attachments');

                    // insert in image_table
                    $image= new Image();
                    $image->filename        = 'home';
                    $image->content_id      = $content->id;
                    $image->path            = $path;
                    $image->save();
                }
            }
            DB::commit();  ####### for done the insert of both tables together or fail togother 
            
            toastr()->success('Data has been saved successfully!', ['title' => 'Congrats', 'timeOut' => 5000]);

            return redirect()->route('sitecontent.index');
        }
        catch(\Exception $e){
            return redirect()->back()->withErrors(['error'=> $e->getMessage()]);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(SiteContent $siteContent)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $content = SiteContent::findOrFail($id);
        return view('siteContent.editSiteContent', compact('content'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(SiteContentRequest  $request, SiteContent $siteContent)
    {
        try {
            $validatedData = $request->validated();
            $content = SiteContent::findOrFail($request->id);
            $content->title         = ['ar'=>$request->title_ar , 'en'=>$request->title_en];
            $content->description   = ['ar'=>$request->description_ar , 'en'=>$request->description_en];
            $content->content       = ['ar'=>$request->content_ar , 'en'=>$request->content_en];
            $slug = $content->slug  = Str::slug($request->title_en);
            $baseUrl = url('/');
            $content->link          = $request->link;
            $content->link_text     = ['ar'=>$request->link_text_ar , 'en'=>$request->link_text_en];
            $content->identifier    = str_replace(' ', '_',$request->identifier);
            $content->type          = $request->type;
            $content->visibility    = $request->visibility == 'on' ? 1 : 0;
            $content->icon          = $request->icon;
            $content->save();

            if ($request->hasFile('images')) {
                // $images = $content->images;
                // foreach ($images as $image) {
                //     if (Storage::disk('upload_attachments')->exists($image->path)) {
                //         Storage::disk('upload_attachments')->delete($image->path);
                //     }
                //     $image->delete();
                // }

                $images = $content->images;
                foreach ($images as $image) {
                    $image->delete();
                }
                foreach ($request->file('images') as $image) {
                    $name = str_replace(' ', '_', $image->getClientOriginalName());
                    $path = $image->storeAs('attachments/images', $image->getClientOriginalName(), 'upload_attachments');
                    $newImage = new Image();
                    $newImage->filename = $name;
                    $newImage->content_id = $content->id;
                    $newImage->path = $path;
                    $newImage->save();
                }
            }
            if ($request->hasFile('homeImages')) {
                // $images = $content->images;
                // foreach ($images as $image) {
                //     if (Storage::disk('upload_attachments')->exists($image->path)) {
                //         Storage::disk('upload_attachments')->delete($image->path);
                //     }
                //     $image->delete();
                // }

                $homeImage = $content->images->firstWhere('filename', 'home');
                $homeImage->delete();
                foreach ($request->file('homeImages') as $image) {
                    $name = str_replace(' ', '_', $image->getClientOriginalName());
                    $path = $image->storeAs('attachments/images', $image->getClientOriginalName(), 'upload_attachments');
                    $newImage = new Image();
                    $newImage->filename = 'home';
                    $newImage->content_id = $content->id;
                    $newImage->path = $path;
                    $newImage->save();
                }
            }

            toastr()->success('Data has been saved successfully!', ['title' => 'Congrats', 'timeOut' => 5000]);

            return redirect()->route('sitecontent.index');
        }
        catch(\Exception $e){
            return redirect()->back()->withErrors(['error'=>$e->getMessage()]);
        }

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        SiteContent::findOrFail($id)->delete();
        toastr()->success('Data has been saved successfully!', ['title' => 'Congrats', 'timeOut' => 5000]);
        return redirect()->route('sitecontent.index');
    }


    public function getPage($slug = null)
    {
        try{
        $slug        = $slug;
        $pageData    = SiteContent::where('slug',$slug)->first();
        $contentData = [
            'siteSettings'   => SiteSettings::first(),
            'heroSection'    => SiteContent::where('identifier', 'heroSection')->where('visibility', '1')->first(),
            'induction'      => SiteContent::where('identifier', 'induction')->where('visibility', '1')->first(),
            'about'          => SiteContent::where('identifier', 'about')->where('visibility', '1')->first(),
            'mission'        => SiteContent::where('identifier', 'mission')->where('visibility', '1')->first(),
            'vision'         => SiteContent::where('identifier', 'vision')->where('visibility', '1')->first(),
            'solution_product_title'        => SiteContent::where('identifier', 'solution_product_title')->where('visibility', '1')->first(),
            'framworks'      => SiteContent::where('identifier', 'framworks')->where('visibility', '1')->first(),
            'advantagesPage_content'        => SiteContent::where('identifier', 'advantagesPage_content')->where('visibility', '1')->first(),
            'productsPage_content'          => SiteContent::where('identifier', 'productsPage_content')->where('visibility', '1')->first(),
            'SmartHomeComponents_content'   => SiteContent::where('identifier', 'SmartHomeComponents_content')->where('visibility', '1')->first(),
            'supported_brands'              => SiteContent::where('identifier', 'supported_brands')->where('visibility', '1')->first(),
            'remote_app'     => SiteContent::where('identifier', 'remote_app')->where('visibility', '1')->first(),
            'pages'          => SiteContent::where('type', 'page')->where('visibility', '1')->get(),
            'solutions'      => SiteContent::where('identifier', 'solution')->where('visibility', '1')->get(),
            'advantages'     => SiteContent::where('identifier', 'advantage')->where('visibility', '1')->get(),
            'products'       => SiteContent::where('identifier', 'product')->where('visibility', '1')->get(),
            'smart_products' => SiteContent::where('identifier', 'smart_product')->where('visibility', '1')->get(),
        ];

        if ($slug) {
            $pageData = SiteContent::where('slug', $slug)->first();
            return view('front.index', compact('contentData', 'pageData', 'slug'));
        } else {
            $slug = 'home';
            $pageData = SiteContent::where('slug', $slug)->first(); 
            return view('front.index', compact('contentData', 'pageData', 'slug'));
        }
    }
    catch(\Exception $e){
        return redirect()->back()->withErrors(['error'=>$e->getMessage()]);
    }
}

}
