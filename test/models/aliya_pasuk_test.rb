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
require 'test_helper'

class AliyaPasukTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
