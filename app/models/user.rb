class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
<<<<<<< HEAD
  has_one :library
  has_many :crushes
  has_one_attached :avatar
=======
         
  has_one :library, dependent: :destroy
  has_many :crushes, dependent: :destroy

  after_create :create_library

  def create_library
    Library.create(user_id: id)
  end

>>>>>>> 61a2e45c4ca102ca31e755a277f532d1d6bcf7f8
end

def show
  #links the new user to its avatar
  user.avatar.attach(params[:avatar])
  @user = User.find(params[:id])
end 
