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

require 'rails_helper'

RSpec.describe Person, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
