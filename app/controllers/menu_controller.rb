class MenuController < ApplicationController
  before_action :set_category

  def index
    if params[:categoria]
      categoria = Category.find_by(name: params[:categoria])
      @produtos = Produto.where(category_id: categoria)
    else
      @produtos = Produto.all
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.all
    end
end
  