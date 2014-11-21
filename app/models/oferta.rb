class Oferta < ActiveRecord::Base

  belongs_to :productos, dependent: :destroy
  
	validates :necesidad,
		presence: true,
		length:{minimum: 10, maximum: 200}
	
end
