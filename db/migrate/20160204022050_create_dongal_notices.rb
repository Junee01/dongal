class CreateDongalNotices < ActiveRecord::Migration
  def change
    create_table :dongal_notices do |t|
      t.integer :wr_id
      t.string :wr_title
      t.string :wr_writer
      t.string :bo_table
      t.date :update_time
      t.string :check
    end
  end
end
