class ChangePerekPasukRef < ActiveRecord::Migration[5.2]
  def change
    rename_column :aliyos, :start_perek_id, :start_perek
    rename_column :aliyos, :start_pasuk_id, :start_pasuk
    rename_column :aliyos, :end_perek_id, :end_perek
    rename_column :aliyos, :end_pasuk_id, :end_pasuk

    rename_column :tehillim, :start_perek_id, :start_perek
    rename_column :tehillim, :start_pasuk_id, :start_pasuk
    rename_column :tehillim, :end_perek_id, :end_perek
    rename_column :tehillim, :end_pasuk_id, :end_pasuk
  end
end
