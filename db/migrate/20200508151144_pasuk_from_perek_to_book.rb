class PasukFromPerekToBook < ActiveRecord::Migration[5.2]
  def change
    rename_column :pesukim, :perek_id, :book_id
  end
end
