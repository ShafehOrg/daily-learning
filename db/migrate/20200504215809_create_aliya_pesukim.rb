class CreateAliyaPesukim < ActiveRecord::Migration[5.2]
  def change
    create_table :aliya_pesukim do |t|
      t.belongs_to :aliya
      t.belongs_to :pasuk
      
      t.timestamps
    end
  end
end
