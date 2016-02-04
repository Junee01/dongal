class G4DongalBoardArt < ActiveRecord::Base
	validates :wr_title,:wr_link, :uniqueness => true
	belongs_to :dongal_board
end
