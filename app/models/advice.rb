# == Schema Information
#
# Table name: advices
#
#  id         :integer          not null, primary key
#  text       :string
#  day_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Advice < ActiveRecord::Base
belongs_to :day
end
