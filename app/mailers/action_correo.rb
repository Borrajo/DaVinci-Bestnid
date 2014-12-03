class ActionCorreo < ActionMailer::Base
  default from: "bestnid.corp@gmail.com"

  def bienvenido_email(user)
  	@user = user
  	@url = 'Bestnid-grupo2.herokuapp.com'
  	mail(to: 'juampacabezon@hotmail.com', subject: 'Bienvenido a Bestnid')
end
end
