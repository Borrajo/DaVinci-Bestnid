class ProductosController < ApplicationController

  before_action :get_producto, only: [:index, :show]

  def get_producto
    @producto = Producto.find(params[:id])  
  end

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
