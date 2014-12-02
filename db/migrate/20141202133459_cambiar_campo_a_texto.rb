class CambiarCampoATexto < ActiveRecord::Migration
  def change
  	change_column :oferta, :necesidad, :text
  	change_column :pregunta, :respuesta, :text
  	change_column :pregunta, :pregunta, :text
  	change_column :productos, :descripcion, :text
  end
end
