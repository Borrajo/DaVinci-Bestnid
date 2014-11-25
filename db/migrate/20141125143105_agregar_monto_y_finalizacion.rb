class AgregarMontoYFinalizacion < ActiveRecord::Migration
  def change
  	add_column :oferta, :monto, :integer
  	add_column :productos, :finalizado, :boolean
  end
end
