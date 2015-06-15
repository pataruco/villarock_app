# Villarock APP
## Why

I am currently (June 2015) a student at the Web Development Immersive at General Assembly in London.

This app is our 2nd major project for the course.

The technical requirements were:

* Use an ORM with PostgreSQL.
* Create an API using at least 3 models and the relevant RESTful routes.
* Include all major CRUD functions in your API/controllers.
* Consume your own API by making your front-end AJAXY (Optional).
* Craft thoughtful user stories for your app.
* Use version control! Commit to git early and often and push to GitHub so you won't lose you code. 
* Test Drive your application with tests for both models & features.
*￼￼￼￼￼￼￼￼￼￼￼￼￼￼￼Layout and style your site with clean, well-formatted HTML & CSS. You can write your own CSS or use a framework like Foundation or Bootstrap.

## What it is?

I am creating this app to solve a common and frequently encountered problem, namely what :

* What the heck we are going to eat during the week?! 
* Which recipes are we going to prepare? 
* Which ingredients do we need? 
* What do we have in stock, and what we need to buy?

## Minimal Viable Product Specification:
This app will have, at least, the following capabilities:

*1. Display the days of the week.
* 2. Display the recipes for every meal (breakfast, lunch and dinner).
* 3. Recipes: display the title, preparation and ingredients .
* 4. Ingredients: display the list of ingredients available on the database.
* 5. In stock: display the list of the ingredients available to cook.
* 6. To buy: display the list of the ingredients do we need to buy.

## Bonus features:

* Add tags for weeks for season browsing.
* Add tag for recipes for kind of ingredient e.g. meat.
* Display the prices of the products via mySupermarket Basket API

## How I did it:
First, I planned how I would nest all the resources in [models](http://pataruco.s3.amazonaws.com/ga/villarock_app/models_3.pdf) and then I did the wireframes.

I wrote down this in document called [pitch](http://pataruco.s3.amazonaws.com/ga/villarock_app/pitch_villarock.pdf) and I sent it to the instructors to hear about their feedback, after their approval I wrote on [Trello] (https://trello.com/b/rQ58vGmX/viilarock-app) the steps needed to complete the project.

## Technologies
I built all the app on Ruby on Rails, I used the Gem `simple_form` to help me with the creation of the objects, because I had too many problems using 2 instance variables in the built in form on Rails.

Also, I found instructions in the  Ruby documentation explaining how make something called ‘[enum status](http://edgeapi.rubyonrails.org/classes/ActiveRecord/Enum.html)’ which changes the status of an object when you call the method. I implemented it  on the model Meal to choose between the three different meals that you can have: breakfast, lunch and dinner.