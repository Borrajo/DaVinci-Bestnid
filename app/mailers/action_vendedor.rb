class ActionVendedor < ActionMailer::Base
  default from: "bestnid.corp@gmail.com"

    def info_subasta_vendedor(user1, user2)
	  	@user1 = user1
	  	@user2 = user2
	  	@url = 'Bestnid-grupo2.herokuapp.com'
	  	mail(to: @user.email, subject: 'Subasta concretada')
	end
end
