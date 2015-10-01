# == Schema Information
#
# Table name: days
#
#  id         :integer          not null, primary key
#  feeling    :text
#  song       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  desire     :text
#  pain       :text
#  pain_level :integer
#  dreams     :string
#  poem       :string
#  new        :string
#  artist     :string
#  journal    :string
#  advice     :string
#

class Day < ActiveRecord::Base
  validate :just_today, on: :create
  GMT = 2
  GMT_SECONDS = GMT * 60 * 60
  has_many :questions
  has_many :answers
  has_many :advices
  has_many :arts
  has_many :songs
  accepts_nested_attributes_for :questions
  accepts_nested_attributes_for :answers
  accepts_nested_attributes_for :advices
  accepts_nested_attributes_for :songs
  accepts_nested_attributes_for :arts

  def just_today
    !Day.select{ |day| day.created_at.to_date == (Time.now + GMT_SECONDS).to_date}.any?
  end

  def self.today
    Day.select{ |day| day.created_at.to_date == (Time.now + GMT_SECONDS).to_date }.first
  end

  def human_date
    (created_at + GMT_SECONDS).strftime("%A, %e %B %Y")
  end

  def birthdays
    if created_at
      Person.select{|p|
        if p.birthday
          p.birthday.month == created_at.month && p.birthday.day == created_at.day
        end
      }
    end
  end

  def song
    songs.first
  end

  def art
    arts.first
  end
end
