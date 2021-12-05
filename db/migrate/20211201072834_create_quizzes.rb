class CreateQuizzes < ActiveRecord::Migration[6.0]
  def change
    create_table :quizzes do |t|
      t.string   :question,   null: false
      t.string   :answer_1,   null: false
      t.string   :answer_2,   null: false
      t.string   :answer_3,   null: false
      t.integer  :answer_num, null: false
      t.text     :explain,    null: false

      t.timestamps
    end
  end
end
