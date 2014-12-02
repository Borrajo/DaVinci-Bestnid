class CambiarCampoUserId < ActiveRecord::Migration
  def change
  	rename_column(:productos, :usuario_id, :user_id);
  end
end
