class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :posts
  has_many :comments
  has_many :reactions

  def to_s
    self.email
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
