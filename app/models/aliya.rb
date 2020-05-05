# == Schema Information
#
# Table name: aliyos
#
#  id             :bigint           not null, primary key
#  aliyah_number  :integer          not null
#  parsha_id      :integer
#  start_perek_id :integer
#  start_pasuk_id :integer
#  end_perek_id   :integer
#  end_pasuk_id   :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Aliya < ApplicationRecord
  belongs_to :parsha
  belongs_to :aliya_pesukim, class_name: :AliyaPasuk
  has_many :pesukim, through: :aliya_pesukim
end
