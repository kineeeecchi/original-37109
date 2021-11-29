class Management < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :name
    validates :protein
    validates :calorie
  end

end
