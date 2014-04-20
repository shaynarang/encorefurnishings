# Encore Furnishings

This is an e-commerce site for Encore Furnishings, a furniture restoration, painting, and staining service in Nashville, TN.

## Features:
<ol>
<li> User can Facebook like and share </li>
<li> User can view About, Services, Products, Blog, and Contact pages </li>
<li> User can contact Encore Furnishings about a particular product </li>
<li> User can comfortably access application via tablet and mobile devices </li>
<li> Admin can manage products </li>
</ol>

##Project Status:

As of 04/20/14, this project is fully-functional and has been deployed to encorefurnishings.herokuapp.com.

## Development Overview

### Tool Chain
  * RVM
  * Ruby 2.0.0
  * PostgreSQL 9.3.4

### Project Setup
  1. Install things in the tool chain
  2. Run `bundle`
  3. Create config/database.yml for your particular setup (there is an example file: config/database.example.yml)
  4. Create config/application.yml for your particular setup (there is an example file: config/application.example.yml)
  5. Run `rake db:create:all` and `rake db:migrate` to set up your database
  6. Run `rake` and confirm that all of the tests are passing for you

##Author:

Akshay 'Shay' Narang

##License:

Copyright (c) 2014 Akshay 'Shay' Narang

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.