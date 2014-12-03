class PreguntasController < ApplicationController
  def index
  end

  def create
     @pregunta = Pregunta.new(pregunta_params)
     if @pregunta.save
      #no pueden usarse tildes en los flashes
      ActionCorreo.bienvenido_email(current_user).deliver
      flash[:success] = "Tu pregunta fue realizada con exito"
     redirect_to producto_path(params[:pregunta][:producto_id])
   end
  end

  def destroy
  end

  def answer
  end

  def show
  end

  def edit
    
  end

  private
  def pregunta_params
    params.require(:pregunta).permit(:pregunta, :producto_id, :usuario_id, :respuesta, :fecha_respuesta) 
  end
end
