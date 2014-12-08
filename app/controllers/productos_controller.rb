class ProductosController < ApplicationController
  before_action :get_producto, only: [:show, :destroy]
  def index
    if params[:search]
      @producto_a = Producto.search(params[:search]).order("created_at DESC")
    else
      @producto_a = Producto.order("created_at DESC")
    end
    if params[:categoria]
      @producto_a = Producto.where(categoria_id: params[:categoria])
    end
    if params[:orden]
        @producto_a = Producto.order(params[:orden])
    end
  end

  def create

    @producto = Producto.new(producto_params)
    @producto.finalizado = false
    puts @producto.fecha_finalizacion.class
    if params[:fecha_finalizacion]
      @producto.fecha_finalizacion = Time.now + params[:fecha_finalizacion].to_i.day
    end
    @producto.user_id = current_user.id
 
    if @producto.save
      redirect_to @producto
    else
      render 'new'
    end
  end

  def new
   @producto = Producto.new
  end

  def destroy
  end

def edit
end

#Aca esta lo qeu te decía  si logras asociar una view para este metodo ya estaríamos 
  def ver
    if params[:inicio] && [:fin]
        @productos = Producto.where(:created_at => params[:inicio].beginning_of_day..params[:fin].end_of_day)
    end
  end

  def show 
    if(@producto.finalizado)
       if (!user_signed_in? || current_user.id != @producto.usuario_id)
        redirect_to productos_path
       end
     end
  end

  private 
  
  def producto_params
   params.require(:producto).permit(:nombre, :descripcion, :usuario_id, :categoria_id, :fecha_finalizacion, :foto) 
  end

  def get_producto
    @producto = Producto.find(params[:id])
  end
end
