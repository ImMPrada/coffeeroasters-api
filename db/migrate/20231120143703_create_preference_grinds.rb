class CreatePreferenceGrinds < ActiveRecord::Migration[7.1]
  def change
    create_table :preference_grinds do |t|
      t.references :preference, null: false, foreign_key: true
      t.references :grind, null: false, foreign_key: true

      t.timestamps
    end
  end
end
