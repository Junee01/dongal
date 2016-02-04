json.array!(@g4_dongal_board_studies) do |g4_dongal_board_study|
  json.extract! g4_dongal_board_study, :id, :wr_title, :wr_link, :wr_writer, :wr_created_on
  json.url g4_dongal_board_study_url(g4_dongal_board_study, format: :json)
end
