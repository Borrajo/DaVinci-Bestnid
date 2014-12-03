class AgregarCampoAdmin < ActiveRecord::Migration
  def change
  	add_column :users, :admin, :boolean, :default => false
  	change_column :users, :fecha_nacimiento, :date
  end
end
