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
require 'test_helper'

class AliyaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
