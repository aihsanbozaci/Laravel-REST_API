# Laravel REST API - CRUD


## Technologies Used

- PHP
- Composer
- Laravel
- Postman
- MySQL


## Prepared Requests


### Show All Posts:

You can make a request to http://localhost:8000/api/posts using the GET method with Postman or just use that URL.

<br />

### Show a User Posts:

You can make a request to http://localhost:8000/api/users/{user_id}/posts using the GET method with Postman or just use that URL.

<br />

### Add Post:
You can make a request to http://localhost:8000/api/posts using the POST method with Postman. Sample data:

```json
[

    {
        "title": "New Post 1",
        "content": "newPost-1",
        "user_id": 2
    },
    {
        "title": "New Post 2",
        "content": "newPost-2",
        "user_id":3
    }
]

```

<br />

### Update Post

You can make a request to http://localhost:8000/api/posts/{post_id} using the PUT method with Postman. Sample data:

```json
{
    "title": "Updated Post",
    "content": "It is a updated post.",
    "user_id": 1
}
```


<br />

### Delete Post

You can make a request to http://localhost:8000/api/posts/{post_id}/ using the DELETE method with Postman or just use that URL.



