class OfertasController < ApplicationController
  def index
    @ofertas= Oferta.all
  end

  def show
  end

  def edit
  end

  def create
    @oferta = Oferta.new(producto_id: params[:producto], usuario_id: current_user.id, necesidad: params[:question], monto: params[:cost]);
  end

  def new
    @oferta = Oferta.new
  end

  def destroy
  end
end
