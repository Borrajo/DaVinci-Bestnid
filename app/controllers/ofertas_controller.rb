class OfertasController < ApplicationController
  def index
    @ofertas= Oferta.all
  end

  def show
  end

  def edit
  end

   def create
   @oferta = Oferta.new(oferta_params);
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
    params.require(:oferta).permit(:monto, :producto_id, :necesidad) 
  end
end
