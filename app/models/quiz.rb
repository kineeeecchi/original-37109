class Quiz < ApplicationRecord

  with_options presence: true do
    validates :question
    validates :answer_1
    validates :answer_2
    validates :answer_3
    validates :answer_num
    validates :explain
  end

end
