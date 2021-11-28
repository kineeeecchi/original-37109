class Post < ApplicationRecord
  belongs_to :user

  validates :content, presences: true

end
