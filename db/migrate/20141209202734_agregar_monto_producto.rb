class AgregarMontoProducto < ActiveRecord::Migration
  def change
  	add_column :productos, :monto, :integer
  end
end
