class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :email, :password, :username
  has_many :shouts
  has_many :likes
  has_many :liked_shouts, :through => :likes, :source => :shout
 
  #validates :username, :presence => true
  validates :username, :uniqueness => true
  #validates :username, :length => {:minimum=>2,:maximum=>10}

end
