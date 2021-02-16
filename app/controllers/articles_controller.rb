class ArticlesController < ApplicationController
#before_action :find_article
after_action :authenticate_user! 
#after_action :authenticate_user!


def find_article
    Article.find(params[:identificador])
end

def index 
    @article = Article.all
end

def show
    @article = find_article
end




def new  # instancia nuevo objeto 
    @article = Article.new   #instanciado desde el MODELO y enviar el objeto a la vista
    @article.title = "demo"
    @article.status = "0"
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

def edit 
    @article = find_article
end
def update
    @article = find_article
    @article.update({
        title:params[:article][:title] ,
        status:params[:article][:status],
        contenidorichtext:params[:article][:contenidorichtext]
})
redirect_to @article
end

def destroy
  @article = find_article
@article.destroy
redirect_to root_path
end





end
