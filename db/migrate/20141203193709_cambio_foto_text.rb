class CambioFotoText < ActiveRecord::Migration
  def change
  	change_column :productos, :foto, :text
  end
end
