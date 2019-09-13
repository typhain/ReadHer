class UserMailer < ApplicationMailer
  default from: 'no-reply@monsite.fr'
  
  def welcome_send(user)
    @user = user
     mail( :to => @user.email,
     :subject => 'Thanks for signing up for our amazing app' )
   end
end
