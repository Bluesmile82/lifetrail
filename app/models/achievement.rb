# == Schema Information
#
# Table name: achievements
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Achievement < ActiveRecord::Base
  validates :name, presence: true
end
