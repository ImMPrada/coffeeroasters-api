class CreateTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :types do |t|
      t.text :title, null: false
      t.text :description, null: false
      
      t.timestamps
    end
  end
end
