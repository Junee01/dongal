json.array!(@g4_dongal_board_scholars) do |g4_dongal_board_scholar|
  json.extract! g4_dongal_board_scholar, :id, :wr_title, :wr_link, :wr_writer, :wr_created_on
  json.url g4_dongal_board_scholar_url(g4_dongal_board_scholar, format: :json)
end
