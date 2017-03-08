class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :messages
  has_many :chatrooms, through: :messages

  before_save { |user| user.username.downcase! }
  validates_presence_of :username
  validates_uniqueness_of :username, case_sensitive: false
end
