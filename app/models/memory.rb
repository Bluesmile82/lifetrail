# == Schema Information
#
# Table name: memories
#
#  id         :integer          not null, primary key
#  person_id  :integer
#  day_id     :integer
#  text       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Memory < ActiveRecord::Base
  belongs_to :person
  belongs_to :day
end
