# == Schema Information
#
# Table name: people
#
#  id             :integer          not null, primary key
#  name           :string
#  city           :string
#  last_date_seen :date
#  mood           :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  personality    :string
#  likes          :string
#  birthday       :date
#

class Person < ActiveRecord::Base
  validates :name, uniqueness: true, presence: true
  validates :last_date_seen, presence: true
  def color
    time_no_see = Date.today - last_date_seen
    case
    when time_no_see < 4 then "green"
    when time_no_see > 4 && time_no_see < 15 then "blue"
    when time_no_see > 15 then "red"
    end
  end
end
