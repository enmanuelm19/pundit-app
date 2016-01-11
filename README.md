# Aplicacion para probar gemas pundit, devise, acts_as_votable y bourbon

* Comandos de inicio
* Tests
* Devise
#### Comandos de inicio
  Para la creacion de la aplicacion e inicializacion de rspec

  > rails new pundit-app
  > rails g rspec:install

#### Tests

  Creamos nuestro primer test para el sign_in *spec/features/sign_in_spec.rb* y
  un helper que realizara las acciones por nosotros en *spec/support/features/session_helper.rb*.

  Configuramos el *rails_helper.rb* para que acepte el *session_helper.rb* con la siguiente linea

  > config.include Features::SessionHelpers, type: :feature

#### Devise

  Generamos e instalamos devise con el siguiente comando:

  > rails g devise:install

  

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.
