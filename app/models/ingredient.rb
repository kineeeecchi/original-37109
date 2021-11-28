class Ingredient < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  with_options presence: true do
    validates :name
    validates :protein
    validates :calorie
  end

  validates :category_id, numericality: { other_than: 1 , message: "can't be blank"}
  
end
