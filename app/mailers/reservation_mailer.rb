class ReservationMailer < ApplicationMailer
     default from: 'notifications@example.com'
 
  def welcome_email(user, reservation)
    @user = user
    @reservation = reservation
    mail(to: @user.email, subject: 'Bienvenue sur notre site')
  end
end
