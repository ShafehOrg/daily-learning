# == Schema Information
#
# Table name: tehillim
#
#  id             :bigint           not null, primary key
#  day_number     :integer          not null
#  start_perek_id :integer
#  start_pasuk_id :integer
#  end_perek_id   :integer
#  end_pasuk_id   :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Tehillim < ApplicationRecord
end
