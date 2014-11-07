class Usuario < ActiveRecord::Base

	has_many :ofertas
	has_many :productos
	has_many :preguntas

	validates :nombre, presence: true, length: {minimum: 2, maximum: 30}

	validates :apellido, presence: true, length: {minimum: 2, maximum: 30}

	validates :email, presence: true, uniqueness: true

	validates :clave, presence: true, length:{minimum: 6, maximum: 50}

	validates :telefono, presence: true, numericality: { only_integer: true }, length: { minimum:10 , maximum: 50 }

	validates :fecha_nacimiento, presence: true

end