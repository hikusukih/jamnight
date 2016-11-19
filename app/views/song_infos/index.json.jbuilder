json.array!(@song_infos) do |song_info|
  json.extract! song_info, :id, :title, :artist
  json.url song_info_url(song_info, format: :json)
end
