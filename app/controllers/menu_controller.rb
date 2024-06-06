class MenuController < ApplicationController
    def index
      @produtos = Produto.all
    end
  end
  