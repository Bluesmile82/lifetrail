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

require 'rails_helper'

RSpec.describe Memory, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
