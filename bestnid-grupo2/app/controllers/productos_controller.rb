class ProductosController < ApplicationController

  def index
    if params[:search]
      @producto_a = Producto.search(params[:search]).order("created_at DESC")
    else
      @producto_a = Producto.order("created_at DESC")
    end
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
    @producto = Producto.find(params[:id]) 
  end

  
end
