class Oferta < ActiveRecord::Base

  belogns_to :productos

	validates :necesidad,
		presence: true,
		length:{minimum: 10, maximum: 200}
	end
	
end
