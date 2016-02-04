json.array!(@g4_dongal_board_pharms) do |g4_dongal_board_pharm|
  json.extract! g4_dongal_board_pharm, :id, :wr_title, :wr_link, :wr_writer, :wr_created_on
  json.url g4_dongal_board_pharm_url(g4_dongal_board_pharm, format: :json)
end
