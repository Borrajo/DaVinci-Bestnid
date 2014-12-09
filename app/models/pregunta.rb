	class Pregunta < ActiveRecord::Base

  default_scope -> {order("id")} 
  
  	scope :no_contestadas, -> {where("respuesta IS NULL")} 

  belongs_to :producto, dependent: :destroy
  belongs_to :user

  validates :pregunta, uniqueness: true, presence: true
  validates :respuesta, presence: true


end
