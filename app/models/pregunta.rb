class Pregunta < ActiveRecord::Base

  	scope :no_contestadas, -> {where("respuesta IS NULL")} 

  belongs_to :productos, dependent: :destroy
  belongs_to :user


end
