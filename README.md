# Villarock APP
## Why

I am currently (June 2015) a student in Web Development Inmersive at General Assembly at London. 

This app is our 2nd major project.

The technical requirements are:

* Use an ORM with PostgreSQL.
* Create an API using at least 3 models, and the relevant RESTful routes.
* Include all major CRUD functions in your API/controllers.
* Consume your own API by making your front-end AJAXY (or not!).
* Craft thoughtful user stories together.
* Use version control! Commit to git early and often and push to GitHub so you won't lose you code. 
* Test Drive your application with tests for both models & features.￼￼￼￼￼￼￼￼￼￼￼￼￼￼￼Layout and style your site with clean, well-formatted HTML & CSS. You can write your own CSS or use a framework like Foundation or Bootstrap.

## What it is?

I am creating this app to solve common and frequent problem  which take us at least and hour and half every week:

* What the heck we are going to eat during the week?! 
* Which recipes are we going to prepare? 
* Which ingredients do we need? 
* And what we have in stock, and what we need to buy?.

## Minimal value product:
This app will have at least the  following resources:

* weeks:  display the days of the week.
* days: display the recipes for every meal (breakfast, lunch and dinner).
* recipes: display the title, preparation and ingredients .
* ingredients: display the list of ingredients available on the database.
* in stock: display the list of the ingredients available to cook.
* to buy: display the list of the ingredients do we need to buy.

## Bonus features:

* Add tags for weeks for season browsing.
* Add tag for recipes for kind of meat browsing.
* Display the prices of the products via mySupermarket Basket API

## How I did it:
First, I planned how I would nest all the resources in [models](http://pataruco.s3.amazonaws.com/ga/villarock_app/models_3.pdf) and from then I did the wireframes.

I wrote down this in document called [pitch](http://pataruco.s3.amazonaws.com/ga/villarock_app/models_3.pdf) and I sent it to the intructors to hear about their feedback, after their approval I wrote on [Trello](https://trello.com/b/rQ58vGmX/viilarock-app) the steps to accomplished the above



## Technologies
I built all the app on Ruby on Rails, I used the Gem `simple_form` to help me with the creation of the objects, because I had to many problems using 2 instances variables on the form helper built-in on Rails.

Also, I found on Ruby documentation the possibility to make something called ‘[enum status](http://edgeapi.rubyonrails.org/classes/ActiveRecord/Enum.html)’ which change the status of the object when you called the method. I implemented it  on the model Meal to choose between the three different meals that you can have: breakfast, lunch and dinner. 
