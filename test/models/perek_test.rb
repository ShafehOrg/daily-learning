# == Schema Information
#
# Table name: perakim
#
#  id           :bigint           not null, primary key
#  perek_number :integer          not null
#  book_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require 'test_helper'

class PerekTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
