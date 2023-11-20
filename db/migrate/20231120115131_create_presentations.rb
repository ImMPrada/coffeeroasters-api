class CreatePresentations < ActiveRecord::Migration[7.1]
  def change
    create_table :presentations do |t|
      t.text :title, null: false
      t.text :description, null: false
      t.integer :amount, null: false
      t.references :unit, null: false, foreign_key: true
      t.numeric :price, null: false

      t.timestamps
    end
  end
end
