class AgregarCampoFoto < ActiveRecord::Migration
  def change
  	add_column :productos, :foto, :string
  	add_column :usuarios, :foto, :string
  end
end
