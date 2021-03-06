# == Schema Information
#
# Table name: books
#
#  id          :bigint           not null, primary key
#  title_en    :string           not null
#  title_he    :string           not null
#  title_he_tr :string           not null
#  description :string           not null
#  section_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Book < ApplicationRecord
  belongs_to :section
  has_many :pesukim
  has_many :parshios

  def self.find_title_he_tr(query)
    query.split.map(&:capitalize).join(' ')
  end
end
