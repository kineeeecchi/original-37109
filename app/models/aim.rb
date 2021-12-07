class Aim < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :protein
  end
end
