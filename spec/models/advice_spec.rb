# == Schema Information
#
# Table name: advices
#
#  id         :integer          not null, primary key
#  text       :string
#  day_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Advice, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
