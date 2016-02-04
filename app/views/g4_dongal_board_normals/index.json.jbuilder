json.array!(@g4_dongal_board_normals) do |g4_dongal_board_normal|
  json.extract! g4_dongal_board_normal, :id, :wr_title, :wr_link, :wr_writer, :wr_created_on
  json.url g4_dongal_board_normal_url(g4_dongal_board_normal, format: :json)
end
