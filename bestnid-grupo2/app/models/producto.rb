class Producto < ActiveRecord::Base

	validates :nombre,presence: true,length: {minimum: 4, maximum: 30}

	validates :descripcion, presence: true,length: {minimum: 10, maximum: 500}
end