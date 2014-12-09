class CambioUserFoto < ActiveRecord::Migration
  def change
  	change_column :users, :foto, :text
  end
end
