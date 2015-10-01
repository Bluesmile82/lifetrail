# == Schema Information
#
# Table name: arts
#
#  id         :integer          not null, primary key
#  url        :string
#  author     :string
#  title      :string
#  day_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Art < ActiveRecord::Base
  belongs_to :day
end
