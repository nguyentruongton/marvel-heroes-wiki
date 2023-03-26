<?php

namespace App\Http\Controllers\Api;

use App\Models\Hero;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreHeroRequest;
use App\Http\Requests\UpdateHeroRequest;
use App\Http\Resources\HeroResource;

class HeroController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return HeroResource::collection(Hero::query()->orderBy('id', 'desc')->paginate(9));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreHeroRequest $request)
    {
        $data = $request->validated();
        // $data['password'] = bcrypt($data['password']);
        $hero = Hero::create($data);
        return response(new HeroResource($hero), 201);
    }
    /**
     * Display the specified resource.
     */
    public function show(Hero $hero)
    {
        return new HeroResource($hero);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateHeroRequest $request, Hero $hero)
    {
        $data = $request->validated();
        $hero->update($data);
        return new HeroResource($hero);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Hero $hero)
    {
        $hero->delete();
        return response("", 204);
    }
}
