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
require 'test_helper'

class AliyaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
