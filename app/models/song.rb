class Song < ActiveRecord::Base
  belongs_to :day

  def is_html?
    url.match(/^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*/).present?
  end
end
