json.array!(@g4_dongal_board_engineers) do |g4_dongal_board_engineer|
  json.extract! g4_dongal_board_engineer, :id, :wr_title, :wr_link, :wr_writer, :wr_created_on
  json.url g4_dongal_board_engineer_url(g4_dongal_board_engineer, format: :json)
end
