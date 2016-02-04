json.array!(@g4_dongal_board_arts) do |g4_dongal_board_art|
  json.extract! g4_dongal_board_art, :id, :wr_title, :wr_link, :wr_writer, :wr_created_on
  json.url g4_dongal_board_art_url(g4_dongal_board_art, format: :json)
end
