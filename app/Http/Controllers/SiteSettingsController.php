<?php

namespace App\Http\Controllers;

use App\Models\SiteSettings;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class SiteSettingsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $siteSetting = SiteSettings::first();
        return view('siteContent.siteSettings',compact('siteSetting'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(SiteSettings $siteSettings)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(SiteSettings $siteSettings)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, SiteSettings $siteSettings)
    {
        // if ($request->hasFile('logo')) { // Delete the old logo if it exists 
        //     if ($request->logo_path) { 
        //         Storage::disk('public')->delete($request->logo_path); 
        //     }
        //     $logoPath = $request->file('logo')->store('logos', 'public'); 
        // } 
        // else { 
        //     $logoPath = $request->logo_path; 
        // }
        $siteSettings = SiteSettings::findOrFail(1);
        $siteSettings->update([ 'title' => $request->title, 
        'facebookLink' => $request->facebookLink, 
        'instaLink' => $request->instaLink, 
        'xLink' => $request->xLink, 
        'mail' => $request->mail, 
        'mobileAppLink' => $request->mobileAppLink, 
        'description' => $request->description, 
        // 'logo_path' => 'logoPath',
        ]);
        return redirect()->route('sitesettings.index')->with('success', 'Site settings updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(SiteSettings $siteSettings)
    {
        //
    }
}
