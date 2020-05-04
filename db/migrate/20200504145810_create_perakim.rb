class CreatePerakim < ActiveRecord::Migration[5.2]
  def change
    create_table :perakim do |t|
      t.integer :perek_number, null: false
      t.integer :book_id, not_null: true
      
      t.index :book_id

      t.timestamps
    end
  end
end
