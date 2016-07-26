# == Schema Information
#
# Table name: days
#
#  id                 :integer          not null, primary key
#  feeling            :text
#  song               :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  desire             :text
#  pain               :text
#  pain_level         :integer
#  dreams             :string
#  poem               :string
#  new                :string
#  artist             :string
#  journal            :string
#  advice             :string
#  pain_level_evening :integer
#

class Day < ActiveRecord::Base
  validate :just_today, on: :create
  GMT = 2
  GMT_SECONDS = GMT * 60 * 60
  has_many :memories
  has_many :questions
  has_many :answers
  has_many :advices
  has_many :arts
  has_many :songs
  has_many :wishes
  has_many :thought_logs
  accepts_nested_attributes_for :memories
  accepts_nested_attributes_for :questions
  accepts_nested_attributes_for :wishes
  accepts_nested_attributes_for :answers
  accepts_nested_attributes_for :advices
  accepts_nested_attributes_for :songs
  accepts_nested_attributes_for :arts
  accepts_nested_attributes_for :thought_logs

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

  def start_time
    created_at
  end

  def events_of_the_day
    today = created_at || Date.today
    case today.wday
    when 0 #Sunday
      "Jam en Black sheep, Bonnefoi y Floris bar"
    when 1 #Monday
      "Jam Bizon, Sound Jazz Club, La Tricoterie, Bar d'Ixelles"
    when 2 #Tuesday
      "Jam Lava Café"
    when 3 #Wednesday
      "Jam Floréo"
    when 4 #Thursday
      "Jam Delirium, Café Kafka"
    when 5 #Friday
      ""
    when 6 #Saturday
      ""
    end
  end
end
