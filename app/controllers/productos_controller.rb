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
    @pregunta = Pregunta.find(params[:id])
  end

  def update
     @pregunta = Pregunta.find(params[:id])
      if @pregunta.update_attributes(pregunta_params)
        #no pueden usarse tildes en los flashes
        flash[:success] = "Tu respuesta fue realizada con exito"
        redirect_to producto_path(params[:pregunta][:producto_id])
      else
        render 'edit'
        #no pueden usarse tildes en los flashes
        flash[:danger] = "No se pudo generar la respuesta y no sabemos porque :S"
        redirect_to pregunta_path(params[:pregunta][:producto_id])
      end
  end

#Aca esta lo qeu te decía  si logras asociar una view para este metodo ya estaríamos 
  def ver
    if params[:inicio] && [:fin]
        @productos = Producto.where(:created_at => params[:inicio].beginning_of_day..params[:fin].end_of_day)
    end
  end

  def show 
    if(@producto.finalizado)
       if (!user_signed_in? || current_user.id != @producto.user_id)
        redirect_to productos_path
       end
     end
  end

  private 
  
  def producto_params
   params.require(:producto).permit(:nombre, :descripcion, :usuario_id, :categoria_id, :fecha_finalizacion, :foto) 
  end
  
  def pregunta_params
    params.require(:pregunta).permit(:pregunta, :producto_id, :usuario_id, :respuesta, :fecha_respuesta) 
  end

  def get_producto
    @producto = Producto.find(params[:id])
  end
end
