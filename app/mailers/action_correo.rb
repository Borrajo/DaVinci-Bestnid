class ActionCorreo < ActionMailer::Base
  default from: "from@example.com"

  def bienvenido_email(user)
  	@user = user
  	@url = 'Bestnid-grupo2.herokuapp.com'
  	mail(to: @user.email, subject: 'Bienvenido a Bestnid')
end
