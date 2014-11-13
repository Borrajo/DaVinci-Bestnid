class CategoriasController < ApplicationController
  def index
  	@categoria = Categoria.find(params[:id]) 
  end
end
