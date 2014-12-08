class AgregarFechaDeCompra < ActiveRecord::Migration
  def change
  	add_column :productos, :fecha_de_compra, :date
  	rename_column :oferta, :usuario_id, :user_id
  	rename_column :pregunta, :usuario_id, :user_id
  end
end
