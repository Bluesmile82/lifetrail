# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  url        :string
#  author     :string
#  title      :string
#  day_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Song < ActiveRecord::Base
  belongs_to :day

  def is_html?
    url.match(/^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*/).present?
  end
end
