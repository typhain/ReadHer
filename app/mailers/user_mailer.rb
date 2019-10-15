class UserMailer < ApplicationMailer
  default from: 'ReadHer'

  def welcome_send(user)
    @user = user
     mail( :to => @user.email,
     :subject => 'Bienvenue sur ReadHer :)' )
   end
end
