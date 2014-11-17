class CreateOferta < ActiveRecord::Migration
  def change
    create_table :oferta do |t|
      t.integer :id_producto
      t.integer :id_usuario
      t.string :necesidad

      t.timestamps
    end
  end
end
