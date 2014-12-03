class CambioTipoFechaNacimiento < ActiveRecord::Migration
  def change
  	remove_column :users, :edad
  	add_column :users, :fecha_nacimiento, :datetime
  end
end