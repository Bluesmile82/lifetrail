json.array!(@songs) do |song|
  json.extract! song, :id, :title, :author, :times, :key, :tempo, :tab, :completeness
  json.url song_url(song, format: :json)
end
