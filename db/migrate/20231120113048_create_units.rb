class CreateUnits < ActiveRecord::Migration[7.1]
  def change
    create_table :units do |t|
      t.string :used_symbol, null: false
      t.text :description
      t.decimal :grames, null: false

      t.timestamps
    end
  end
end
