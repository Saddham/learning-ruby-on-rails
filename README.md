# Installation
```
// install ruby version manager
brew install rbenv ruby-build

// run this and follow the printed instructions:
rbenv init

// list latest stable versions:
rbenv install -l

// list all local versions:
rbenv install -L

// install a Ruby version:
rbenv install 3.2.2

// set globak ruby version
rbenv global 3.2.2

// install rails
gem install rails
rbenv rehash
```

# Development
```
// create new ruby on rails project with postgres db
rails new learning-ruby-on-rails -d postgresql

// create db
rails db:create

// start rails server
rails server

// generate a controller
rails generate controller ControllerName actions

// generate a migration (DDL commands)
rails generate migration MigrationName

// generate a model (DML commands)
rails generate model ModelName columns
/*
e.g.
rails generate model Task name:string description:text position:integer completed:boolean
*/

// run db migration to execute DDL commands and change schema
rails db:migrate

// migration status
rails db:migrate:status

// undo all migrations
rails db:migrate VERSION=0

// migrate to a particular version (input is timestamp)
rails db:migrate VERSION=20231116133738

// run only unmigrated migrations
rake db:migrate

// active record -> business object backed by database table
user = User.new
user.first_name = "Kevin"
user.save // SQL INSERT

user.last_name = "Skoglund"
user.save // SQL UPDATE

user.destroy // SWL DELETE

/* 
active record relation -> glorified array that has certain active record
props that make features, such as pagination accessible. Simplifies
generation of complex database queries. Several small queries can be chained
and active relation will combine them. It will devise efficient query plan and queries won't execute until needed
*/
users = User.where(first_name: "Kevin")
users = users.order("last_name ASC").limit(5)
users.each {|user| ...}

// Start rails console for dev env
rails console -e development
```
