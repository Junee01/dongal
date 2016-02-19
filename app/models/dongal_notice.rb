class DongalNotice < ActiveRecord::Base
	validates :check, :uniqueness => true
        belongs_to :dongal_board
        has_many :g4_dongal_board_arts
        has_many :g4_dongal_board_bs
        has_many :g4_dongal_board_edus
        has_many :g4_dongal_board_engineers
        has_many :g4_dongal_board_entrances
        has_many :g4_dongal_board_globals
        has_many :g4_dongal_board_laws
        has_many :g4_dongal_board_liberals
        has_many :g4_dongal_board_lives
        has_many :g4_dongal_board_normals
        has_many :g4_dongal_board_pharms
        has_many :g4_dongal_board_proceedings
        has_many :g4_dongal_board_sbas
        has_many :g4_dongal_board_scholars
        has_many :g4_dongal_board_sciences
        has_many :g4_dongal_board_socials
        has_many :g4_dongal_board_studies		
end	
