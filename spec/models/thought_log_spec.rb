# == Schema Information
#
# Table name: thought_logs
#
#  id                  :integer          not null, primary key
#  situation           :string
#  emotion             :string
#  thought             :string
#  response            :string
#  result              :string
#  alternative_thought :string
#  day_id              :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'rails_helper'

RSpec.describe ThoughtLog, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
