class ProductoCambiarCategoriaId < ActiveRecord::Migration
  def change
  	remove_column(:productos, :categoria);
  	add_column(:productos, :categoria, :integer);
  end
end