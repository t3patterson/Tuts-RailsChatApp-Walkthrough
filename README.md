# Chat App Walk Thru
##Learning objectives
  - rails conventions
  - Router ---> Model View Controller
  - setting up a database 
  - performing CRUD actions on database


###App Name - Chirp Box
###Lesson Materials
- css style sheet for Chirp box
- html for chirp box

###Configuration
1) gem files
2) 

###1) Generate Controller
- convention is that controller is plural name
- controller generates a bunch of directories and files
  - `controllers/chirpboxes_controller.rb`
  - `views/chirpboxes/` 
  - ...others for testing

###2) Create Index View
- we use html.erb files to embed ruby code, you'll see what that means later
- convention is that view name matches the html.erb file (i.e. action-index  --> view index.html.erb)
- in controller `render("chirpboxes/index")

###3) Configure the router to point to the controller/action which which will render the view
- routes drive everything, they are like a switch board for requests coming into your web app.
- «controller»/«action» --- `chirpboxes/index`
- assign root_path

###4) Install Bootstrap & configure css
- gem 'bootstrap-sass', '~> 3.3.5'
- c+p the css on the project

###5) populate chirpboxes/index.html.erb with dummy data
- {name: "«username»" , message: "«message»"} 

###6) populate html elements dynamically from data on the controller
 - create array of hashes with `user` and `message` properties 

```
@chirps = [
      {name: "Travis", message: "hye guuys"},
      {name: "Carol", message: "hey there travis"},
      {name: "Adam", message: "hellloooo everyone"},
      {name: "Travis", message: "welcome to the chat party"}
    ]
```

###7) Would be better if all this were data in a db - so create a model

###8) Setup db schema in migration file
- create db - `rake db:setup`
```
  t.column :name, :string, null: false
  t.column :message, :string, null: false
  t.timestamps null: false
```
- migrate to the new schema: `rake db:migrate`

###9) Seed the data


###10) Set up @form_for to save to database

###11) Set up the route to point to the controller
 - in the controller, create logic to save

###12) Prettify the form w/ bootstrap-html

###13) Walk thru the app with them


