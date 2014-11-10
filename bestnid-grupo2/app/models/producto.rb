class Producto < ActiveRecord::Base

	has_many :ofertas, dependent: :destroy
    has_many :preguntas, dependent: :destroy
    
	belongs_to :usuarios

	validates :nombre,presence: true,length: {minimum: 4, maximum: 30}
	validates :descripcion, presence: true,length: {minimum: 10, maximum: 500}
	validates :categoria, presence: true, inclusion: {in: %w(aca van las categorias), message: "%{value} no es una categoria valida"}
end