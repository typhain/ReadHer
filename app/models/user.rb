class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:facebook]
  devise :confirmable

  has_one :library
  has_many :crushes
  has_one_attached :avatar

  has_one :library, dependent: :destroy
  has_many :crushes, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :comments, dependent: :destroy

  after_create :create_library
  after_create :set_pseudo

  after_create :welcome_send, unless: :skip_sending_welcome_email
  attr_accessor :skip_sending_welcome_email

  def create_library
    Library.create(user_id: id)
  end

  def set_pseudo
    self.update(pseudo: self.email.split('@')[0].capitalize)
  end


  def welcome_send
    UserMailer.welcome_send(self).deliver
  end

  def show
    #links the new user to its avatar
    user.avatar.attach(params[:avatar])
    @user = User.find(params[:id])
  end

  def self.from_facebook(auth)
    where(facebook_id: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.pseudo = auth.info.name
      user.password = Devise.friendly_token[0,20]
      user.skip_confirmation!
    end
  end
end
