class Oferta < ActiveRecord::Base

  default_scope -> {order("id")}

  belongs_to :productos
  belongs_to :users
  
  validates :necesidad,presence: true

  validates :user_id, :uniqueness => {:scope => :producto_id, message: "Solo puede ofertar una vez por producto" }
	
end



