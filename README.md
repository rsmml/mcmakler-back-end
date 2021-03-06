# README

- [About App](https://github.com/rsmml/mcmakler-back-end//blob/master/README.md#about-app)
- [How to install project locally](https://github.com/rsmml/mcmakler-back-end//blob/master/README.md#install-app-locally)
- [Back-end in Rails API](https://github.com/rsmml/mcmakler-back-end//blob/master/README.md#back-end)
- [Font-end in Vue.js](https://github.com/rsmml/mcmakler-back-end//blob/master/README.md#front-end)

# About App:
[↑ Go To Top ↑](https://github.com/rsmml/mcmakler-back-end//blob/master/README.md#readme)

* Ruby version

  ```ruby
  2.6.5
  ```
* System dependencies

  ```ruby
  bundle install
  ```
  ```ruby
  yarn install
  ```

* Database creation

  ```ruby
  rails db:create db:migrate
  ```

* Database initialization

  ```ruby
  rails db:seed
  ```

* Heroku

  [McMakler Challenge](https://mcmakler-challenge-rsmml.herokuapp.com/)
  User: ```kisha@orn-bradtke.net```
  Pass: ```123123```

# Install App Locally
[↑ Go To Top ↑](https://github.com/rsmml/mcmakler-back-end//blob/master/README.md#readme)

- **[GitHub Repo Back-end](https://github.com/rsmml/mcmakler-back-end/)**
- **[GitHub Repo Front-end](https://github.com/rsmml/mcmakler-front-end)**

- Back-end:
Clone the repo with this command:
(Go to a directory where you will like to put this project, like for example ```~ && cd Desktop/``` )
```ruby
git clone git@github.com:rsmml/mcmakler-back-end.git mcmakler-challenge-be
```
```ruby
cd mcmakler-challenge-be
```
- Front-end:
Clone the repo with this command:
(Go to a directory where you will like to put this project, like for example ```~ && cd Desktop/``` )
```ruby
git clone git@github.com:rsmml/mcmakler-front-end.git mcmakler-challenge-fe
```
```ruby
cd mcmakler-challenge-fe
```


- You can also download the app with the following link:
  - [Get Back-end app here](https://github.com/rsmml/mcmakler-back-end/archive/master.zip)
  - [Get Front-end app here](https://github.com/rsmml/mcmakler-front-end/archive/master.zip)

  - Unzip file.
  - Open Terminal.
  - Change Directory to the project folder **spectrm-challenge-master**

### Install App:

This project is built in
  ```ruby
  ruby '2.6.5'
  ```

  * In order to check the ruby version installed in your machine run:
    ```ruby
    ruby -v
    ```

  If you are running another version of Ruby, we can easily change it with **rbenv**

  **rbenv Instalation:**

  on the command line run:

  (Install **[BREW](https://brew.sh/)**, if you don't have it.)

  ```ruby
  brew install rbenv
  ```

  to check if it worked run:

  ```ruby
  rbenv --version
  ```

  **Install Ruby**

  Once rbenv is installed we have to install the Ruby version to be able to run
  this app localy. Run on the terminal:

  To check Ruby versions available:
  ```ruby
  rbenv install --list
  ```

  Install Ruby 2.6.5:
  ```ruby
  rbenv install 2.6.5
  ```
  ```ruby
  rbenv global 2.6.5
  ```

  And voilá :confetti_ball: the ruby version we need is installed. You
  can go back to your preferred Ruby version by doing
  ```ruby
  rbenv install RUBY_VERSION
  ```
  ```ruby
  rbenv global RUBY_VERSION
  ```

* Make sure you are using the desired Ruby version to install.
  ```ruby
  ruby --version
  ```

* To see if you already have Bundler installed
  ```ruby
  bundler --version
  ```
  or
  ```ruby
  bundle --version
  ```

* This will install the bundler gem in Ruby 2.6.5
  ```ruby
  gem install bundler
  ```


* Don't forget to run
  ```ruby
  bundle install
  ```
  ```ruby
  yarn install
  ```

If this doesn't work, you might need to install another tools or software
that some of the gems require. Follow the messages and install them.
Run **bundle** until everything is OK !


* **Set up Database**

The following command will create databases based on database.yml ,
load schema.rb, and seed the data by running seeds.rb.

```ruby
  rails db:setup
```

Run ```bundle install```, ```yarn install``` & ```rails db:migrate``` in case there are pending migrations. But I believe
it won't be necesary.


You don't have PostgreSQL, no problem:

```ruby
brew install postgresql
```

You can always check before with **postgres -V** if it is installed or not.
Then run:

```ruby
brew services start postgresql
```

* Once everything is Ok! you should be able to start the server.

Run now ```rails s``` and by default, the
server for the API will be hosted on ```http://localhost:3000```

It shold be running in ```localhost:3000``` to be able to fetch and send data
from Postman. Run

```ruby
rails s --p 3000
```
in case the default port is not 3000.

Yeey :tada: now it's time to install the front-end app:

## Instalation Fron-End App:

cd to the directory mcmakler-challenge-fe
```ruby
cd mcmakler-challenge-fe
```
Assuming that **Vue** and **vue-cli** are installed in your machine run:
```ruby
yarn install
```
If not:
```ruby
npm install vue
```
```ruby
yarn global add @vue/cli
```
and then run
```ruby
yarn install
```
To run the app:
```ruby
yarn dev
```
This should be running in
```
http://localhost:8080
```

# BACK END:
[↑ Go To Top ↑](https://github.com/rsmml/mcmakler-back-end//blob/master/README.md#readme)

- **[GitHub Repo Back-end](https://github.com/rsmml/mcmakler-back-end/)**

- Create of a new rails API app, with postgreSQL for DB.

  ```ruby
  rails new mcmakler-back-end --database postgresql
  ```

- **User**

  I create a ```sessions``` controller and ```registrations``` controller for the
  sign-in and sing-up functions. This controllers will also store the id of the user
  logged_in in the ```Sessions``` that then will be applyed to the ```@current_user```
  created on the ```concerns```.

- **Properties**

  A ```Property``` model was created, linked to the ```User``` model, so only users
  registered will add apartments to the DB. The model has some somple validations.

  The ```properties controller```, which is placed on the ```/api/v1/``` directory
  has the basic CRUD actions that will return a JSON.


- **Get USER in order to log-in**

Because when you install the APP there is no DB we have to create one and run the seed.rb file
that will create 50 new apartments, and 5 new users with unknowns id.
In order to know one of the user email, we will take the last instance of User created, and from it, we will
take the email.

Go to the terminal, cd to ```mcmakler-challenge-be``` and run:

```ruby
rails c
```
Once the ruby console is open, run

```ruby
User.last.email
```
You should get a string value like this: "user@user.com"
This is the user e-mail for the log-in, the password is: ```123123```
Keep it secret 🤫:no_mouth:


# FRONT END:
[↑ Go To Top ↑](https://github.com/rsmml/mcmakler-back-end//blob/master/README.md#readme)

- **[GitHub Repo Front-end](https://github.com/rsmml/mcmakler-front-end)**

Even though I have knowleadge on React, I decided to use Vue.js to create this front-end app
due to that I was working with it more latelly and I feel more confortable with that.

This app uses ```vue-axios``` in order to comunicate with the DB of the API.
I used the strategy to store the User id that comes from the API on the localStorage
in order to get it at the moment to do the ```POST``` request that will connect the user
with the ```Property``` created.

