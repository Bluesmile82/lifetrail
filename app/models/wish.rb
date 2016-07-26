# == Schema Information
#
# Table name: wishes
#
#  id         :integer          not null, primary key
#  text       :string
#  day_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Wish < ActiveRecord::Base
  belongs_to :day
end
