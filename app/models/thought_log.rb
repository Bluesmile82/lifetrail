# == Schema Information
#
# Table name: thought_logs
#
#  id                  :integer          not null, primary key
#  situation           :string
#  emotion             :string
#  thought             :string
#  response            :string
#  result              :string
#  alternative_thought :string
#  day_id              :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class ThoughtLog < ActiveRecord::Base
  belongs_to :day
end
