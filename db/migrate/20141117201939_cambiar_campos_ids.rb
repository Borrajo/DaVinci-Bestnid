class CambiarCamposIds < ActiveRecord::Migration
  def change
  	rename_column(:productos, :id_owner, :usuario_id);
  	rename_column(:productos, :id_categoria, :categoria_id);
  	rename_column(:productos, :id_comprador, :comprador_id);
  	rename_column(:pregunta, :id_usuario, :usuario_id);
  	rename_column(:pregunta, :id_producto, :producto_id);
  	rename_column(:oferta, :id_usuario, :usuario_id);
  	rename_column(:oferta, :id_producto, :producto_id);
  end
end
