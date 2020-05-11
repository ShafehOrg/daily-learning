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
class Aliya < ApplicationRecord
  belongs_to :parsha
  belongs_to :aliya_pesukim, class_name: :AliyaPasuk, optional: true
  has_many :pesukim, through: :aliya_pesukim

  def text(book_id)
    Pasuk
      .select(:id,:text_he, :number, :perek)
      .where('pesukim.book_id = ?', book_id)
      .where('(
        pesukim.perek = ? AND pesukim.number >= ? OR  
      pesukim.perek > ? AND pesukim.perek < ? OR
      pesukim.perek = ? AND pesukim.number <= ?
      AND  ? < ?)
      or
      ( ? = ? AND pesukim.number >= ? AND pesukim.number <= ? )', 
      self.start_perek, self.start_pasuk, self.start_perek, self.end_perek, c, self.end_pasuk, self.start_perek, self.start_perek, self.start_perek, self.start_perek, self.start_pasuk, self.end_pasuk
      )
      .order(:perek, :number)
      .group_by(&:perek)
  end
end
