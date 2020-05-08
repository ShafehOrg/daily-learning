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
class Pasuk < ApplicationRecord
  belongs_to :book
  belongs_to :aliya_pesukim, class_name: :AliyaPasuk, optional: true
  has_many :aliyos, through: :aliya_pesukim
end
