<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index()
    {
        $posts = Post::all();
        return response()->json($posts);
    }

    public function show($id)
    {
        $post = Post::find($id);
        if (!$post) {
            return response()->json(['message' => 'Post not found'], 404);
        }
        return response()->json($post);
    }

    public function userPosts($id)
    {
        $posts = Post::where('user_id', $id)->get();
        return response()->json($posts);
    }
    public function post(Request $request)
    {
        $request->validate([
            '*.title' => 'required|string|max:255',
            '*.content' => 'required|string',
            '*.user_id' => 'required|integer'
        ]);

        try {
            $posts = collect($request->all())->map(function ($post) {
                return Post::create($post);
            });

            return response()->json($posts, 201);
        } catch (\Exception $e) {
            return response()->json(['message' => $e->getMessage()], 500);
        }
    }
    public function update(Request $request, $id)
    {
        $post = Post::find($id);
        if (!$post) {
            return response()->json(['message' => 'Post not found'], 404);
        }

        $request->validate([
            'title' => 'required|string|max:255',
            'content' => 'required|string',
            'user_id' => 'required|integer'
        ]);

        $post->update([
            'title' => $request->title,
            'content' => $request->content,
            'user_id' => $request->user_id
        ]);

        return response()->json($post);
    }

    public function destroy($id)
    {
        $post = Post::find($id);
        if (!$post) {
            return response()->json(['message' => 'Post not found'], 404);
        }

        $post->delete();
        return response()->json(['message' => 'Post deleted']);
    }
}
