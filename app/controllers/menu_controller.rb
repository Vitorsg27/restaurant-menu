class MenuController < ApplicationController
  def index
    if params[:categoria]
      @produtos = Produto.where(categoria: params[:categoria])
    else
      @produtos = Produto.all
    end
  end
end
  