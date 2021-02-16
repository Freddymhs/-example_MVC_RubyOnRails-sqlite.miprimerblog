Rails.application.routes.draw do

  devise_for :users
  root :to => "welcome#index" #root to: "home#index"
  get '/' , to: "welcome#index"  #default
  get '/articles/index' , to:  "articles#index"  # as: :vertodos






  #C
  get  'articles/new' , to: "articles#new"    # as: :crearnuevo  
  post 'articles' , to: "articles#create" #porque es obligatorio???????                                # crear articulos
  #R
  get 'articles/:identificador' , to: "articles#show"                         #mostrar articulo con su consulta sql
  #U
  get 'articles/:identificador/edit' , to: "articles#edit"                    #editar articulo
  patch 'articles/:identificador' , to: "articles#update" , :as =>  :article    # actualizacion
  #D
  delete 'articles/:identificador' , to: "articles#destroy"

end
#localhost:3000/articles/1/edit
# articles/new
# articles/:identificador
# articles/:identificador/edit
# articles/:identificador