class Producto < ActiveRecord::Base

	has_many :ofertas, dependent: :destroy

	belongs_to :usuarios

	validates :nombre,presence: true,length: {minimum: 4, maximum: 30}

	validates :descripcion, presence: true,length: {minimum: 10, maximum: 500}
end