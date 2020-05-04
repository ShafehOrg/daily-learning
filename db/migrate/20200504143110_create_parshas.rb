class CreateParshas < ActiveRecord::Migration[5.2]
  def change
    create_table :parshios do |t|
      t.string :title_en, null: false
      t.string :title_he, null: false
      t.string :title_he_tr, null: false
      t.string :description, null: false
      
      t.timestamps
    end
  end
end
