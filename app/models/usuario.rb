class Usuario < ActiveRecord::Base

	has_many :ofertas
	has_many :productos
    has_many :preguntas
    
	validates :nombre, presence: true, length: {minimum: 2, maximum: 30}

	validates :apellido, presence: true, length: {minimum: 2, maximum: 30}

	validates :email, presence: true, uniqueness: true

	validates :clave, presence: true, length:{minimum: 6, maximum: 50}

	validates :telefono, presence: true, numericality: { only_integer: true }, length: { minimum:10 , maximum: 50 }

	validates :edad, presence: true 
	validates_exclusion_of :edad, :in => 0..17, :message => "Debes ser mayor a 18"


end