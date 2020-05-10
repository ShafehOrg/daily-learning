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
#  book_id     :integer
#
class Parsha < ApplicationRecord
  has_many :aliyos
  belongs_to :book

  def full_aliyos
    result = {}
    aliyos.each_with_index do |aliya, i|
      result[i + 1] = aliya.text(self.book_id)
    end
    result
  end
end
