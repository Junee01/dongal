json.array!(@g4_dongal_board_socials) do |g4_dongal_board_social|
  json.extract! g4_dongal_board_social, :id, :wr_title, :wr_link, :wr_writer, :wr_created_on
  json.url g4_dongal_board_social_url(g4_dongal_board_social, format: :json)
end
