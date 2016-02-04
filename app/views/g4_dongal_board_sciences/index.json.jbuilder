json.array!(@g4_dongal_board_sciences) do |g4_dongal_board_science|
  json.extract! g4_dongal_board_science, :id, :wr_title, :wr_link, :wr_writer, :wr_created_on
  json.url g4_dongal_board_science_url(g4_dongal_board_science, format: :json)
end
