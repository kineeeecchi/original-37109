class CreateAims < ActiveRecord::Migration[6.0]
  def change
    create_table :aims do |t|
      t.string    :goal
      t.string    :protein,  null: false
      t.string    :calorie
      t.references :user,           null: false, foreign_key: true

      t.timestamps
    end
  end
end
