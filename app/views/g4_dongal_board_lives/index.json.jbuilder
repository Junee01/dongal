json.array!(@g4_dongal_board_lives) do |g4_dongal_board_life|
  json.extract! g4_dongal_board_life, :id, :wr_title, :wr_link, :wr_writer, :wr_created_on
  json.url g4_dongal_board_life_url(g4_dongal_board_life, format: :json)
end
