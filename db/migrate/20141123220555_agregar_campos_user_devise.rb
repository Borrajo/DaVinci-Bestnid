class AgregarCamposUserDevise < ActiveRecord::Migration
  def change

  	add_column :users, :nombre, :string
  	add_column :users, :apellido, :string
  	add_column :users, :telefono, :string
  	add_column :users, :foto, :string
  	add_column :users, :edad, :integer
  	add_column :users, :domicilio, :string
  	add_column :users, :numero_tarjeta, :string
  	add_column :users, :titular_tarjeta, :string
  	add_column :users, :vencimiento_tarjeta, :string
  
  end
end
