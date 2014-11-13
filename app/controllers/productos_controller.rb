class ProductosController < ApplicationController
  before_action :get_producto, only: [:show, :destroy]

  def index
    if params[:search]
      @producto_a = Producto.search(params[:search]).order("created_at DESC")
    else
      @producto_a = Producto.order("created_at DESC")
    end
    if params[:categoria]
      @producto_a = Producto.where(categoria: params[:categoria])
    end
    if params[:orden]
        @producto_a = Producto.order(params[:orden])
    end
  end

  def create 
  end

  def destroy
  end

  def edit
  end

  def show 
     
  end

  private 
  def get_producto
    @producto = Producto.find(params[:id])
  end

  def fin 
    
  end

  
end
