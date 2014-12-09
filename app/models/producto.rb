class Producto < ActiveRecord::Base

	default_scope -> { order("created_at desc") }

    scope :activos, -> { where("finalizado = false") }

	has_many :ofertas, dependent: :destroy
  has_many :preguntas, dependent: :destroy
    
	belongs_to :user

	validates :nombre,presence: true,length: {minimum: 4, maximum: 30}, uniqueness: true
	validates :descripcion, presence: true,length: {minimum: 10}

	# It returns the articles whose titles contain one or more words that form the query
  	def self.search(query)
    	# where(:title, query) -> This would return an exact match of the query
    	return Producto.where("( LOWER(descripcion) || LOWER(nombre) )  LIKE ?", "%#{query.downcase}%" )
  	end

# evalua la fecha actual con la de finaliazion de publicacion y finaliza o no el producto luego lo actualiza
  def finalizar
      if (Date.today >= self.fecha_finalizacion.to_date)
      	 self.finalizado = true
      	else
      	 self.finalizado = false
      end
      self.save
  end

end
