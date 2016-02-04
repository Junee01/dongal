json.array!(@g4_dongal_board_entrances) do |g4_dongal_board_entrance|
  json.extract! g4_dongal_board_entrance, :id, :wr_title, :wr_link, :wr_writer, :wr_created_on
  json.url g4_dongal_board_entrance_url(g4_dongal_board_entrance, format: :json)
end
