class CreateAliyos < ActiveRecord::Migration[5.2]
  def change
    create_table :aliyos do |t|
      t.integer :aliyah_number, null: false
      t.integer :parsha_id, not_null: true
      t.integer :start_perek_id, not_null: true
      t.integer :start_pasuk_id, not_null: true
      t.integer :end_perek_id, not_null: true
      t.integer :end_pasuk_id, not_null: true

      t.index :parsha_id

      t.timestamps
    end
  end
end
