json.array!(@g4_dongal_board_globals) do |g4_dongal_board_global|
  json.extract! g4_dongal_board_global, :id, :wr_title, :wr_link, :wr_writer, :wr_created_on
  json.url g4_dongal_board_global_url(g4_dongal_board_global, format: :json)
end
