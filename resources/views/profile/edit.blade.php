<style>
    body {
    font-family: 'Montserrat', sans-serif;
    background-color: #f4f7f6;
    color: #3c3c3b;
    line-height: 1.7;
    padding: 20px;
}

.container {
    margin-top: 40px;
}

h2 {
    font-size: 2rem;
    font-weight: 800;
    color: #333;
    margin-bottom: 15px;
    text-transform: uppercase;
    border-bottom: 3px solid #5E8C6E;
    padding-bottom: 8px;
}

form {
    background: #ffffff;
    border-radius: 15px;
    box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1);
    padding: 25px;
    transition: all 0.3s ease;
}

form:hover {
    transform: translateY(-5px);
    box-shadow: 0 12px 24px rgba(0, 0, 0, 0.15);
}

input[type="text"],
input[type="email"],
input[type="password"] {
    width: 100%;
    padding: 15px;
    margin-top: 12px;
    margin-bottom: 18px;
    border: 1px solid #ddd;
    border-radius: 10px;
    box-sizing: border-box;
    font-size: 1rem;
    background-color: #f9f9f9;
    transition: border-color 0.3s ease, box-shadow 0.3s ease;
}

input[type="text"]:focus,
input[type="email"]:focus,
input[type="password"]:focus {
    border-color: #5E8C6E;
    outline: none;
    box-shadow: 0 0 8px rgba(94, 140, 110, 0.3);
    background-color: #fff;
}

input[type="submit"],
button {
    background-color: #5E8C6E;
    color: #ffffff;
    padding: 14px 25px;
    border: none;
    border-radius: 10px;
    cursor: pointer;
    font-size: 1rem;
    font-weight: 700;
    text-transform: uppercase;
    transition: background-color 0.3s ease, box-shadow 0.3s ease;
}

input[type="submit"]:hover,
button:hover {
    background-color: #4A7257;
    box-shadow: 0 5px 10px rgba(74, 114, 87, 0.4);
}

input[type="submit"]:active,
button:active {
    background-color: #3d5e4a;
    box-shadow: 0 3px 6px rgba(61, 94, 74, 0.4);
}

.py-12 {
    padding: 12px 0;
}

.max-w-7xl {
    max-width: 85%;
    margin: 0 auto;
}

.space-y-6 > * + * {
    margin-top: 24px;
}

.shadow {
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
}

.sm\\:rounded-lg {
    border-radius: 15px;
}

.bg-white {
    background-color: #ffffff;
}

.p-4 {
    padding: 16px;
}

.sm\\:p-8 {
    padding: 32px;
}

.max-w-xl {
    max-width: 600px;
}


</style>

<br>
<br><br><br><br>
@include('administrar.header')

    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Profile') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8 space-y-6">
            <div class="p-4 sm:p-8 bg-white shadow sm:rounded-lg">
                <div class="max-w-xl">
                    @include('profile.partials.update-profile-information-form')
                </div>
            </div>

            <div class="p-4 sm:p-8 bg-white shadow sm:rounded-lg">
                <div class="max-w-xl">
                    @include('profile.partials.update-password-form')
                </div>
            </div>

            <div class="p-4 sm:p-8 bg-white shadow sm:rounded-lg">
                <div class="max-w-xl">
                    @include('profile.partials.delete-user-form')
                </div>
            </div>
        </div>
    </div>

