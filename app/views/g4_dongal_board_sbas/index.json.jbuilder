json.array!(@g4_dongal_board_sbas) do |g4_dongal_board_sba|
  json.extract! g4_dongal_board_sba, :id, :wr_title, :wr_link, :wr_writer, :wr_created_on
  json.url g4_dongal_board_sba_url(g4_dongal_board_sba, format: :json)
end
