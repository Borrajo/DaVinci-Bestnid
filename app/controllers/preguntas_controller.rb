class PreguntasController < ApplicationController
  def index
  end

  def create
     @pregunta = Pregunta.new(pregunta_params)
      if @pregunta.save
      #no pueden usarse tildes en los flashes
      flash[:success] = "Tu pregunta fue realizada con exito"
      ActionCorreo.bienvenido_email(current_user).deliver
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
    @pregunta = Pregunta.find(params[:id])
  end

  def update
     @pregunta = Pregunta.find(params[:id])
      if @pregunta.update_attributes(pregunta_params)
        #no pueden usarse tildes en los flashes
        flash[:success] = "Tu respuesta fue realizada con exito"
        redirect_to pregunta_path(params[:pregunta][:producto_id])
      else
        render 'edit'
        #no pueden usarse tildes en los flashes
        flash[:danger] = "No se pudo generar la respuesta y no sabemos porque :S"
        redirect_to pregunta_path(params[:pregunta][:producto_id])
      end
  end

  private
  def pregunta_params
    params.require(:pregunta).permit(:pregunta, :producto_id, :usuario_id, :respuesta, :fecha_respuesta) 
  end
  def respuesta_params
    params.require(:respuesta).permit(:pregunta, :producto_id, :usuario_id, :respuesta, :fecha_respuesta) 
  end
end
