json.array!(@dongal_boards) do |dongal_board|
  json.extract! dongal_board, :id, :board_name, :board_title, :board_color
  json.url dongal_board_url(dongal_board, format: :json)
end
