class Answer < ActiveRecord::Base
  belongs_to :day
  belongs_to :question
end
