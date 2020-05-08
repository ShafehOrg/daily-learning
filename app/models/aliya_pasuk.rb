# == Schema Information
#
# Table name: aliya_pesukim
#
#  id         :bigint           not null, primary key
#  aliya_id   :bigint
#  pasuk_id   :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class AliyaPasuk < ApplicationRecord
  belongs_to :pasuk
  belongs_to :aliya
end
