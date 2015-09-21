# == Schema Information
#
# Table name: people
#
#  id             :integer          not null, primary key
#  name           :string
#  city           :string
#  last_date_seen :date
#  mood           :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  personality    :string
#  likes          :string
#  birthday       :date
#

class Person < ActiveRecord::Base
attr_accessor :birthday
  validates :name, uniqueness: true, presence: true
end
