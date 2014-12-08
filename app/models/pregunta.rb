class Pregunta < ActiveRecord::Base

  default_scope -> {order("id")} 
  
  	scope :no_contestadas, -> {where("respuesta IS NULL")} 

  belongs_to :productos, dependent: :destroy
  belongs_to :user


end
