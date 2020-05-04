class CreateTehillim < ActiveRecord::Migration[5.2]
  def change
    create_table :tehillim do |t|
      t.integer :day_number, null: false
      t.integer :start_perek_id, not_null: true
      t.integer :start_pasuk_id
      t.integer :end_perek_id, not_null: true
      t.integer :end_pasuk_id

      t.timestamps
    end
  end
end
