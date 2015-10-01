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

require 'rails_helper'

RSpec.describe Art, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
