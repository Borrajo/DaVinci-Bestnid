class OfertasController < ApplicationController
  def index
    @ofertas= Oferta.all
  end

  def show
  end

  def edit
  end

   def create
   @oferta = Oferta.new(oferta_params)
   @oferta.usuario_id = current_user.id
     if @oferta.save
     redirect_to productos_path
      end
  end

  def new
  end

  def destroy
  end

  private

  def oferta_params
    params.require(:oferta).permit(:monto, :necesidad) 
  end
end
