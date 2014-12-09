class CambioTipoDatetime < ActiveRecord::Migration
  def change
  	change_column :productos, :fecha_de_compra, :datetime
  end
end
