class Oferta < ActiveRecord::Base

	validates :necesidad,
		presence: true,
		length:{minimum: 10, maximum: 200}
	end
	
end
