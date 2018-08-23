<?php

namespace App\Http\Controllers;

use App\Post;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    /**
     * Posts
     *
     * @return void
     */
    public function showPosts(Request $request)
    {
        $posts = Post::paginate(2);
        dd($posts);
        if ($request->input('page')) {
            return Response::json(View::make('posts', array('posts' => $posts))->render());
        }
        return View::make('blog', array('posts' => $posts));
    }
}
