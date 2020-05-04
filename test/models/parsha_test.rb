# == Schema Information
#
# Table name: parshios
#
#  id          :bigint           not null, primary key
#  title_en    :string           not null
#  title_he    :string           not null
#  title_he_tr :string           not null
#  description :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'test_helper'

class ParshaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
