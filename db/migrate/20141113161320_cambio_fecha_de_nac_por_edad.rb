class CambioFechaDeNacPorEdad < ActiveRecord::Migration
  def change
  	remove_column(:usuarios, :fecha_nacimiento);
  	add_column(:usuarios, :edad, :integer);
  end
end
