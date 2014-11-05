class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.string :email
      t.string :telefono
      t.string :clave
      t.datetime :fecha_nacimiento

      t.timestamps
    end
  end
end
