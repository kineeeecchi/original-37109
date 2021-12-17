class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :nickname
    # validates :gender
    validates :birthday
  end
  validates :nickname, presence: true, length: { maximum: 6 }

  has_many :managements
  has_many :posts
  has_many :comments
  has_one :aim
end
