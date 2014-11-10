class ProductoCambiarCategoriaId < ActiveRecord::Migration
  def change
  	change_column :productos, :categoria, :integer
  end
end