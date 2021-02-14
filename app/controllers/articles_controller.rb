class ArticlesController < ApplicationController

def new  # instancia nuevo objeto 
    @article = Article.new   #instanciado desde el MODELO y enviar el objeto a la vista
    @article.title = "demo"
    @article.status = "0"
end

def update
    @article = Article.find(params[:identificador])
    @article.update({
        title:params[:article][:title] ,
        status:params[:article][:status],
        contenidorichtext:params[:article][:contenidorichtext]
})
redirect_to @article
end

def create
    ##desde el fromulario tomale field = NAME , name =  "micampoxd"
   @res= Article.create({
        title:params[:article][:title] ,
        status:params[:article][:status],
        contenidorichtext:params[:article][:contenidorichtext]
})
render json: @res

end

def show
    @article = Article.find(params[:identificador])
end

def edit 
    # consola a sql enbase aun usuario en base a su id


    # @article = Article.new({
    #     title:'freddy', status:0 ,contenidorichtext:'contenido a editar'
    # })
    @article = Article.find(params[:identificador])
end
def destroy
@article = Article.find(params[:identificador])
@article.destroy
redirect_to root_path
end





end
