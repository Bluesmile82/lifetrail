# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  text        :string
#  day_id      :integer
#  question_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Answer < ActiveRecord::Base
  belongs_to :day
  belongs_to :question
end
