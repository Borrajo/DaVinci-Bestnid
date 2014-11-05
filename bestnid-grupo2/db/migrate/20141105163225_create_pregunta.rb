class CreatePregunta < ActiveRecord::Migration
  def change
    create_table :pregunta do |t|
      t.integer :id_preguntador
      t.integer :id_producto
      t.string :pregunta
      t.string :respuesta
      t.datatime :fecha_respuesta

      t.timestamps
    end
  end
end
