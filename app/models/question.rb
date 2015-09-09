# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  personal   :boolean
#  text       :string
#  day_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Question < ActiveRecord::Base
  belongs_to :day
  has_many :answers
  accepts_nested_attributes_for :answers
end
