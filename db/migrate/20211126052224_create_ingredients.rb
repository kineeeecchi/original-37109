class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string   :name,           null: false
      t.float    :protein,        null: false
      t.float    :calorie,        null: false
      t.integer  :category_id,    null: false

      t.timestamps
    end
  end
end
