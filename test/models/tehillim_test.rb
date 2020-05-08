# == Schema Information
#
# Table name: tehillim
#
#  id          :bigint           not null, primary key
#  day_number  :integer          not null
#  start_perek :integer
#  start_pasuk :integer
#  end_perek   :integer
#  end_pasuk   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'test_helper'

class TehillimTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
