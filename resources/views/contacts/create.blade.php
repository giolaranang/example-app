<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="{{ asset('css/custom.css') }}" rel="stylesheet">
    <title>Create your Contact</title>
</head>
<body>
    <h1>Add a Contact</h1>
    <table>
        <form method="post" action="{{ route('contact.store') }}">
            @csrf
            @method('post')
            <tr>
                <td><label for="name">Name:</label></td>
                <td><input type="text" id="name" name="name" required></td>
            </tr>
            <tr>
                <td><label for="email">Email:</label></td>
                <td><input type="email" id="email" name="email" required></td>
            </tr>
            <tr>
                <td><label for="number">Contact Number:</label></td>
                <td><input type="number" id="number" name="number" required></td>
            </tr>
            <tr>
                <td><label for="address">Address:</label></td>
                <td><input type="text" id="address" name="address" required></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <input type="submit" value="Save a New Contact">
                    <a class="editContactBack" href="{{route('contact.index')}}">Back</a>
                </td>
            </tr>
        </form>
    </table>
</body>
</html>
<style>
    td{
        text-align:left;
    }
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        padding: 20px;
    }
    h1 {
        text-align: center;
    }
    table {
        max-width: 600px;
        margin: 0 auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    table td, table th {
        padding: 10px;
        border: 1px solid #ccc;
    }
    table label {
        font-weight: bold;
    }
    table input[type="text"],
    table input[type="email"],
    table input[type="number"] {
        width: 100%;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    table input[type="submit"],.editContactBack {
        background-color: #007bff;
        color: #fff;
        border: none;
        padding: 10px 20px;
        border-radius: 4px;
        cursor: pointer;
    }
    table input[type="submit"]:hover,.editContactBack:hover {
        background-color: #0056b3;
    }
    .editContactBack{
            font-size: 13px;
            text-decoration: none;
        }
</style>