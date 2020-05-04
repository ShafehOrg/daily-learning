class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title_en, null: false
      t.string :title_he, null: false
      t.string :title_he_tr, null: false
      t.string :description, null: false
      t.integer :section_id, not_null: true

      t.index :section_id

      t.timestamps
    end
  end
end
