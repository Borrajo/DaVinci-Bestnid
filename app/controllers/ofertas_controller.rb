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
     if @oferta.save
      flash[:success] = "Tu oferta fue realiza con exito"
     redirect_to producto_path(params[:oferta][:producto_id])
   else
    flash[:danger] = "Ya ofertaste en este producto"
    redirect_to producto_path(params[:oferta][:producto_id])
    end
  end

  def new
  end

  def destroy
  end

  private

  def oferta_params
    params.require(:oferta).permit(:monto, :producto_id, :necesidad, :usuario_id) 
  end
end
