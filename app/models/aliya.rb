# == Schema Information
#
# Table name: aliyos
#
#  id            :bigint           not null, primary key
#  aliyah_number :integer          not null
#  parsha_id     :integer
#  start_perek   :integer
#  start_pasuk   :integer
#  end_perek     :integer
#  end_pasuk     :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Aliya < ApplicationRecord
  belongs_to :parsha
  belongs_to :aliya_pesukim, class_name: :AliyaPasuk
  has_many :pesukim, through: :aliya_pesukim
end
