

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        .backdisplay{
            font-size: 13px;
            text-decoration: none;
        }
        body {
            background-color: #222; /* Dark background color */
            color: #fff; /* Light text color */
            font-family: Arial, sans-serif; /* Font for text */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        form {
            width: 300px; /* Adjust width as needed */
            padding: 20px;
            background-color: #333; /* Darker background for form */
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3); /* Shadow for depth */
        }
        label {
            display: block;
            margin-bottom: 10px;
        }
        textarea {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            border: 1px solid #555; /* Darker border for input */
            background-color: #444; /* Slightly lighter background for input */
            color: #fff; /* Light text color */
            border-radius: 4px;
            resize: vertical;
        }
        .btn,.backdisplay{
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff; /* Primary button color */
            color: #fff; /* Light text color */
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .btn:hover, .backdisplay:hover{
            background-color: #0056b3; /* Darker color on hover */
        }
    </style>
</head>
<body>
    <form action="{{ route('notes.update', ['contact' => $note->contact_id, 'note' => $note->id]) }}" method="POST">
        @csrf
        @method('PUT')
        <div class="form-group">
            <label for="content">Content:</label>
            <textarea name="body" id="content" class="form-control" rows="5" placeholder="Enter your note..." required>{{ $note->content }}</textarea>
        </div>
        <button type="submit" class="btn btn-primary">Update Note</button>
        <a class="backdisplay" href="{{route('contact.index')}}">Back</a>
    </form>
</body>
</html>
