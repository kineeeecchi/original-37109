class CreateManagements < ActiveRecord::Migration[6.0]
  def change
    create_table :managements do |t|
      t.string     :name,           null: false
      t.float      :protein,        null: false
      t.float      :calorie,        null: false
      t.references :user,           null: false, foreign_key: true

      t.timestamps
    end
  end
end
