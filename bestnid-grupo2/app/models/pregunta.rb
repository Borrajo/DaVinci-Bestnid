class Pregunta < ActiveRecord::Base
  
  belongs_to :producto, dependent: :destroy
  belongs_to :usuario
end
