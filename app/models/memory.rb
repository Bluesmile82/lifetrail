class Memory < ActiveRecord::Base
  belongs_to :person
  belongs_to :day
end
