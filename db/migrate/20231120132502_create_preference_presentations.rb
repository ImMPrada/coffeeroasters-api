class CreatePreferencePresentations < ActiveRecord::Migration[7.1]
  def change
    create_table :preference_presentations do |t|
      t.references :preference, null: false, foreign_key: true
      t.references :presentation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
