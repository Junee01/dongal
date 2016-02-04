json.array!(@g4_dongal_board_liberals) do |g4_dongal_board_liberal|
  json.extract! g4_dongal_board_liberal, :id, :wr_title, :wr_link, :wr_writer, :wr_created_on
  json.url g4_dongal_board_liberal_url(g4_dongal_board_liberal, format: :json)
end
