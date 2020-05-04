class CreatePesukim < ActiveRecord::Migration[5.2]
  def change
    create_table :pesukim do |t|
      t.string :text_he, null: false
      t.string :text_en, null: false
      t.string :unkelos, null: false
      t.integer :perek_id, not_null: true

      t.timestamps
    end
  end
end
