json.array!(@g4_dongal_board_laws) do |g4_dongal_board_law|
  json.extract! g4_dongal_board_law, :id, :wr_title, :wr_link, :wr_writer, :wr_created_on
  json.url g4_dongal_board_law_url(g4_dongal_board_law, format: :json)
end
