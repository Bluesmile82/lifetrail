class Day < ActiveRecord::Base
  validate :just_today, on: :create

  def just_today
  end

  def self.today
    Day.select{|day| day.created_at.to_date == Date.today}.first
  end

  def human_date
    created_at.strftime("%A, %e %B %Y")
  end

  def is_html?
    song.match(/^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*/).present?
  end
end
