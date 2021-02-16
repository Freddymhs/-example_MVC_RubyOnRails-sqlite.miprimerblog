# README

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
gema devise para autenticacion de los usuarios

# editar tablas ya creadas?
 en rails el orm trabaja con las tablas, bajo la convencion de que estas en su ID tengan el nombre del "MODELO" en miniscula :) , si la tabla es Users el modelo User y el orm lo maneja como 'user' y tambien todas las tablas deben usar un id para su manejo.
la tabla esta en plural      (Articles)
el modelo en singular        (Article)
orm lo maneja con el nombre del modelo+singular+minuscula  (article)

GENERAR UNA MIGRACION IDEAL :)
agregar campo -> rails generate migration [nombremigracion en PLURAL] [campo:tipodedato] (agregar "campo"  a la tabla articles )
ejemplo
```
alternativa basica => agregar campo -> rails generate migration add_user_id_to_articles user_id:integer   // genera migracion basica      
alternativa rails  => agregar campo -> rails generate migration add_user_id_to_articles user:references    // genera migracion ideal!!
```
REVISAR SI  ,esto genera la migracion ideal asi:
```
 add_reference :articles, :user, null: false, foreign_key: true    (un 'articles' debe tener un 'user'
cambios en migracion antes de ejecutarlo?
add_reference :articles, :user, null: "TRUE"    (un 'articles' puede existir sin un 'user')  de muchos a 0 :) es buena opcion ya que es comun.
```
  extra a la migracion si necesita un valor podemos darle default:'dato' 

CONFIGURAR ASOCIACIONES DE LOS MODELOS
```
has_many :articles (tiene muchos ,  modelo en plural)
belongs_to :user (pertenece      ,  modelo en singular)
```
con esto ya todo esta asociado , pero el controlador ahora debe mostrar datos mas completos por lo que es necesario cambios/mejoras.



# en consola
rails console
Article.find(2)
Article.last
rails routes
app/javascript  // webpack
rails db:reset
ctrl+t :D
