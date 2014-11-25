class OfertasController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def create
    Oferta.create(producto_id: params[ :producto], usuario_id: current_user.id, necesidad: params[:question]);
  end

  def destroy
  end
end
