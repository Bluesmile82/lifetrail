class Achievement < ActiveRecord::Base
  validates :name, presence: true
end
