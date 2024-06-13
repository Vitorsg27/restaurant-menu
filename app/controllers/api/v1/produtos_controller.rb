module Api
    module V1
      class ProdutosController < ApplicationController
        skip_before_action :verify_authenticity_token
        
        def index
          produtos = Produto.all
          render json: produtos
        end
  
        def show
          produto = Produto.find(params[:id])
          render json: produto
        end
  
        def create
          produto = Produto.new(produto_params)
          if produto.save
            render json: produto, status: :created
          else
            render json: produto.errors, status: :unprocessable_entity
          end
        end
  
        def update
          produto = Produto.find(params[:id])
          if produto.update(produto_params)
            render json: produto
          else
            render json: produto.errors, status: :unprocessable_entity
          end
        end
  
        def destroy
          produto = Produto.find(params[:id])
          produto.destroy
          head :no_content
        end
  
        private
  
        def produto_params
          params.require(:produto).permit(:nome, :descricao, :preco)
        end
      end
    end
  end
  