class CreateG4DongalBoardEngineers < ActiveRecord::Migration
  def change
    create_table :g4_dongal_board_engineers do |t|
      t.string :wr_title
      t.string :wr_link
      t.string :wr_writer
      t.integer :wr_hit
      t.date :wr_created_on

      t.timestamps null: false
    end
  end
end
