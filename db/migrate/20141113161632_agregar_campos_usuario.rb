class AgregarCamposUsuario < ActiveRecord::Migration
  def change
  	add_column(:usuarios, :domicilio, :string);
  	add_column(:usuarios, :num_tarjeta, :string);
  	add_column(:usuarios, :titular_tarjeta, :string);
  	add_column(:usuarios, :venc_tarjeta, :string);
  end
end