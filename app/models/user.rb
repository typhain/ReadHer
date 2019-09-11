class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_one :library, dependent: :destroy
  has_many :crushes, dependent: :destroy

  after_create :create_library

  def create_library
    Library.create(user_id: id)
  end

end
