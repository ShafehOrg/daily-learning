# == Schema Information
#
# Table name: pesukim
#
#  id         :bigint           not null, primary key
#  text_he    :string           not null
#  text_en    :string           not null
#  unkelos    :string           not null
#  book_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  number     :integer
#  perek      :integer
#
require 'test_helper'

class PasukTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
