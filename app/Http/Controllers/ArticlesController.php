<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Articles;

class ArticlesController extends Controller
{
    protected function index()
    {
        $articles= Articles::all();
        return view("pages.articles")->with("articles", $articles);
    }
}