class Producto < ActiveRecord::Base

	has_many :ofertas, dependent: :destroy
    has_many :preguntas, dependent: :destroy
    
	belongs_to :usuarios

	validates :nombre,presence: true,length: {minimum: 4, maximum: 30}, uniqueness: true
	validates :descripcion, presence: true,length: {minimum: 10, maximum: 500}
	
	

	# It returns the articles whose titles contain one or more words that form the query
  	def self.search(query)
    	# where(:title, query) -> This would return an exact match of the query
    	return Producto.where("( LOWER(descripcion) || LOWER(nombre) )  LIKE ?", "%#{query.downcase}%" )
  	end

end