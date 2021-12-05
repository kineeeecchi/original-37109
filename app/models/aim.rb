class Aim < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :goal
    validates :protein
  end
end
