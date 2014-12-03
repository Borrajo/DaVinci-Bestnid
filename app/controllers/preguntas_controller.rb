class PreguntasController < ApplicationController
  def index
  end

  def create
     @pregunta = Pregunta.new(pregunta_params)
     if @pregunta.save
      #no pueden usarse tildes en los flashes
      flash[:success] = "Tu pregunta fue realiza con exito"
     redirect_to producto_path(params[:pregunta][:producto_id])
     ActionCorreo.bienvenido_email(User.find(@pregunta.usuario_id)).deliver
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
    params.require(:pregunta).permit(:pregunta, :producto_id, :usuario_id) 
  end
end
