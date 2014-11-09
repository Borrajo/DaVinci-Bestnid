class CambioDeIds < ActiveRecord::Migration
  def change
  	rename_column(:pregunta, :id_producto, :producto_id);
  	rename_column(:pregunta, :id_preguntador, :usuario_id);
  end
end
