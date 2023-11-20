class CreateFrecuencies < ActiveRecord::Migration[7.1]
  def change
    create_table :frecuencies do |t|
      t.text :title, null: false
      t.text :description, null: false
      t.integer :monthly_amount, null: false
      t.numeric :base_price, null: false

      t.timestamps
    end
  end
end
