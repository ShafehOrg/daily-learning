# == Schema Information
#
# Table name: pesukim
#
#  id         :bigint           not null, primary key
#  text_he    :string           not null
#  text_en    :string           not null
#  unkelos    :string           not null
#  perek_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Pasuk < ApplicationRecord
end
