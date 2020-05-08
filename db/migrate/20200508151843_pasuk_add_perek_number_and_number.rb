class PasukAddPerekNumberAndNumber < ActiveRecord::Migration[5.2]
  def change
    add_column :pesukim, :number, :integer
    add_column :pesukim, :perek, :integer
  end
end
