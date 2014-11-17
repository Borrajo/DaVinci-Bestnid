class Pregunta < ActiveRecord::Base

  belongs_to :productos, dependent: :destroy
  belongs_to :usuarios

end
