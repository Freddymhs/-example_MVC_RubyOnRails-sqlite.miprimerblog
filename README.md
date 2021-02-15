# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
Ruby on rails 
VScode ruby

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# archivos principales
routes.rb
app/controller/
app/view
app/model
db/schema.rb

# crear controladores    (plural)
rails generate controller Welcome index      
```
rails generate controller Articles   !==     rails destroy controller Articles 
```

# crear modelos  
se crea un modelo base en la carpeta models/   //se encarga de modificar LOS DATOS
se cre una migracion en db/migrate    // se encarga de modificar ESTRUCTURA DE BASE DE DATOS

```
rails generate model Article title:string status:integer 
```

# ejecutar migraciones
rails db:migrate         !==   rails db:rollback

# webpack esta integrado?
./bin/webpack-dev-server    // un script webpack para que compile la vista

# EXTRAS
ACTIVE RECORDS  => modelos que interactuan con la base de datos para hacer peticiones.
rails action_text:install => texto enriquecido       => rails db:migrate    
parciales => son vitas que necesitan de un vista completa para desplegarse     =>  _archivo.html.erb   <%= render "carpeta/archivo" %>
before_action && after_action => metodos de un Controlador para realizar una acciones especificas antes o despues.



# en consola
rails console
Article.find(2)
rails routes
app/javascript  // webpack

ctrl+t :D