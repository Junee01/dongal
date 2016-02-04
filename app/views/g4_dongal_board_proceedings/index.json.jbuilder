json.array!(@g4_dongal_board_proceedings) do |g4_dongal_board_proceeding|
  json.extract! g4_dongal_board_proceeding, :id, :wr_title, :wr_link, :wr_writer, :wr_created_on
  json.url g4_dongal_board_proceeding_url(g4_dongal_board_proceeding, format: :json)
end
