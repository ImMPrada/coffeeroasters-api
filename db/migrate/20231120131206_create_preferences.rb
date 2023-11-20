class CreatePreferences < ActiveRecord::Migration[7.1]
  def change
    create_table :preferences do |t|
      t.text :title, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
