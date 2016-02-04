class CreateDongalBoards < ActiveRecord::Migration
  def change
    create_table :dongal_boards do |t|
      t.string :board_name
      t.string :board_title
      t.string :board_type
      t.string :board_color
    end
  end
end
