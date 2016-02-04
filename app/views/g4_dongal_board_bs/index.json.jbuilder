json.array!(@g4_dongal_board_bs) do |g4_dongal_board_b|
  json.extract! g4_dongal_board_b, :id, :wr_title, :wr_link, :wr_writer, :wr_created_on
  json.url g4_dongal_board_b_url(g4_dongal_board_b, format: :json)
end
