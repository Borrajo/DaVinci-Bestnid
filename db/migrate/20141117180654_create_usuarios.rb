class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.string :email
      t.string :telefono
      t.string :clave
      t.string :foto
      t.integer :edad
      t.string :domicilio
      t.string :numero_tarjeta
      t.string :titular_tarjeta
      t.string :vencimiento_tarjeta

      t.timestamps
    end
  end
end
