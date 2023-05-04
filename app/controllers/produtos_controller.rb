class ProdutosController < ApplicationController
  def index
    @produtos = Produto.all
  end

  def create
    produto = params.require(:produto).permit(:nome, :descricao, :preco, :quantidade)
    Produto.create produto

  end

  def destroy
    remove_id = params[:id]
    Produto.destroy remove_id
    redirect_to root_url
  end

  def busca
    @nome = params[:nome]
    @produtos = Produto.where "nome like ?", "%#{@nome}%"


  end
end
