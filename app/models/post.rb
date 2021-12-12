class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image

  validates :content, presence: { message: "or Image can't be blank"}, unless: :was_attached?

  def was_attached?
    self.image.attached?
  end

end
