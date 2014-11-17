class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :nombre
      t.string :descripcion
      t.integer :id_owner
      t.datetime :fecha_finalizacion
      t.integer :cantidad_preguntas
      t.integer :id_comprador
      t.string :foto
      t.integer :id_categoria

      t.timestamps
    end
  end
end
