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
	
	G4DongalBoardArt.find_each() do |f|
                DongalNotice.create(
                        :wr_id => f.id,
                        :bo_table => "arts",
                        :update_time => f.wr_created_on,
                        :check => f.wr_link
                )
        end
        G4DongalBoardB.find_each() do |f|
                DongalNotice.create(
                        :wr_id => f.id,
                        :bo_table => "bs",
                        :update_time => f.wr_created_on,
                        :check => f.wr_link
                )
        end
        G4DongalBoardEdu.find_each() do |f|
                DongalNotice.create(
                        :wr_id => f.id,
                        :bo_table => "edus",
                        :update_time => f.wr_created_on,
                        :check => f.wr_link
                )
        end
        G4DongalBoardEngineer.find_each() do |f|
                DongalNotice.create(
                        :wr_id => f.id,
                        :bo_table => "engineers",
                        :update_time => f.wr_created_on,
                        :check => f.wr_link
                )
        end

	G4DongalBoardEntrance.find_each() do |f|
                DongalNotice.create(
                        :wr_id => f.id,
                        :bo_table => "entrances",
                        :update_time => f.wr_created_on,
                        :check => f.wr_link
                )
        end
        G4DongalBoardGlobal.find_each() do |f|
                DongalNotice.create(
                        :wr_id => f.id,
                        :bo_table => "globals",
                        :update_time => f.wr_created_on,
                        :check => f.wr_link
                )
        end
        G4DongalBoardLaw.find_each() do |f|
                DongalNotice.create(
                        :wr_id => f.id,
                        :bo_table => "laws",
                        :update_time => f.wr_created_on,
                        :check => f.wr_link
                )
        end
        G4DongalBoardLiberal.find_each() do |f|
                DongalNotice.create(
                        :wr_id => f.id,
                        :bo_table => "liberals",
                        :update_time => f.wr_created_on,
                        :check => f.wr_link
                )
        end

	G4DongalBoardLife.find_each() do |f|
                DongalNotice.create(
                        :wr_id => f.id,
                        :bo_table => "lives",
                        :update_time => f.wr_created_on,
                        :check => f.wr_link
                )
        end
        G4DongalBoardNormal.find_each() do |f|
                DongalNotice.create(
                        :wr_id => f.id,
                        :bo_table => "normals",
                        :update_time => f.wr_created_on,
                        :check => f.wr_link
                )
        end
        G4DongalBoardPharm.find_each() do |f|
                DongalNotice.create(
                        :wr_id => f.id,
                        :bo_table => "pharms",
                        :update_time => f.wr_created_on,
                        :check => f.wr_link
                )
        end
        G4DongalBoardProceeding.find_each() do |f|
                DongalNotice.create(
                        :wr_id => f.id,
                        :bo_table => "proceedings",
                        :update_time => f.wr_created_on,
                        :check => f.wr_link
                )
        end

	G4DongalBoardSba.find_each() do |f|
                DongalNotice.create(
                        :wr_id => f.id,
                        :bo_table => "sbas",
                        :update_time => f.wr_created_on,
                        :check => f.wr_link
                )
        end
        G4DongalBoardScholar.find_each() do |f|
                DongalNotice.create(
                        :wr_id => f.id,
                        :bo_table => "scholars",
                        :update_time => f.wr_created_on,
                        :check => f.wr_link
                )
        end
        G4DongalBoardScience.find_each() do |f|
                DongalNotice.create(
                        :wr_id => f.id,
                        :bo_table => "sciences",
                        :update_time => f.wr_created_on,
                        :check => f.wr_link
                )
        end
        G4DongalBoardSocial.find_each() do |f|
                DongalNotice.create(
                        :wr_id => f.id,
                        :bo_table => "socials",
                        :update_time => f.wr_created_on,
                        :check => f.wr_link
                )
        end

	G4DongalBoardStudy.find_each() do |f|
                DongalNotice.create(
                        :wr_id => f.id,
                        :bo_table => "studies",
                        :update_time => f.wr_created_on,
                        :check => f.wr_link
                )
        end	
end	
