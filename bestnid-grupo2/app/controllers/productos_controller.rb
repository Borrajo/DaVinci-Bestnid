class ProductosController < ApplicationController



  def index
  end

  def create
  end

  def destroy
  end

  def edit
  end

  def show 
       @producto = Producto.find(params[:id]) 
  end

  def search
  end

  
end
