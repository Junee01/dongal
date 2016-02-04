json.array!(@g4_dongal_board_edus) do |g4_dongal_board_edu|
  json.extract! g4_dongal_board_edu, :id, :wr_title, :wr_link, :wr_writer, :wr_created_on
  json.url g4_dongal_board_edu_url(g4_dongal_board_edu, format: :json)
end
