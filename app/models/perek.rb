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
class Perek < ApplicationRecord
  belongs_to :book
  has_many :pesukim
end
