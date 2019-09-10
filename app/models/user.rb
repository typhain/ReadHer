class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :library
  has_many :crushes
  has_one_attached :avatar
end

def show
  #links the new user to its avatar
  user.avatar.attach(params[:avatar])
  @user = User.find(params[:id])
end 

#def edit
#  gravatar_image_url
#end