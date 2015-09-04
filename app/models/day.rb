class Day < ActiveRecord::Base
  validate :just_today, on: :create
  GMT = 2
  GMT_SECONDS = GMT * 60 * 60


  def just_today
  end

  def self.today
    Day.select{ |day| day.created_at.to_date == (Time.now + GMT_SECONDS).to_date }.first
  end

  def human_date
    (created_at + GMT_SECONDS).strftime("%A, %e %B %Y")
  end

  def is_html?
    song.match(/^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*/).present?
  end
end
