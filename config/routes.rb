Rails.application.routes.draw do
  root :to => "welcome#index"
  get '/' , to: "welcome#index"  #default
  post 'articles' , to: "articles#create" #porque es obligatorio???????
  get  'articles/new' , to: "articles#new"                                    # crear articulos
  get 'articles/:identificador' , to: "articles#show"                         #mostrar articulo con su consulta sql
  get 'articles/:identificador/edit' , to: "articles#edit"                    #editar articulo
  patch 'articles/:identificador' , to: "articles#update" , :as =>  :article    # actualizacion
  delete 'articles/:identificador' , to: "articles#destroy"
 # https://www.youtube.com/watch?v=wSNTT8MLI90&t=3297s


 
end
