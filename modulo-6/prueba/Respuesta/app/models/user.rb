class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  enum :role, [:admin, :usuario]

  validates :name, presence: true
  # validates :avatar, presence: true

  has_many :applies


  has_one_attached :avatar
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def to_s
    self.name
  end

end
