class ActionVendedor < ActionMailer::Base
  default from: "bestnid.corp@gmail.com"

    def info_subasta_vendedor(user1, user2, monto)
	  	@user1 = user1
	  	@user2 = user2
	  	@monto = monto
	  	@url = 'Bestnid-grupo2.herokuapp.com'
	  	mail(to: @user1.email, subject: 'Subasta concretada')
	end
end
