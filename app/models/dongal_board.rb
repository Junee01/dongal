class DongalBoard < ActiveRecord::Base
 	validates :board_name, :uniqueness => true
        has_many :dongal_notices

        DongalBoard.create( :board_name => "arts", :board_title => "예술대", :board_type => "college", :board_color => "CDFF41")
        DongalBoard.create( :board_name => "bs", :board_title => "불교대", :board_type => "college", :board_color => "E8960C")
        DongalBoard.create( :board_name => "edus", :board_title => "사범대", :board_type => "college", :board_color => "550CE8")
        DongalBoard.create( :board_name => "engineers", :board_title => "공과대", :board_type => "college", :board_color => "0DDAFF")
        DongalBoard.create( :board_name => "entrances", :board_title => "입학", :board_type => "univ", :board_color => "ECFF76")
        DongalBoard.create( :board_name => "globals", :board_title => "국제", :board_type => "univ", :board_color => "FFE8BB")
        DongalBoard.create( :board_name => "laws", :board_title => "법과대", :board_type => "college", :board_color => "E86B63")
        DongalBoard.create( :board_name => "liberals", :board_title => "문과대", :board_type => "college", :board_color => "B57AFF")
        DongalBoard.create( :board_name => "lives", :board_title => "바이오시스템대", :board_type => "college", :board_color => "CCC663")
        DongalBoard.create( :board_name => "normals", :board_title => "일반", :board_type => "univ", :board_color => "63C6E8")
        DongalBoard.create( :board_name => "pharms", :board_title => "약학대", :board_type => "college", :board_color => "6DFF6F")
        DongalBoard.create( :board_name => "proceedings", :board_title => "학술", :board_type => "univ", :board_color => "FF8166")
        DongalBoard.create( :board_name => "sbas", :board_title => "경영대", :board_type => "college", :board_color => "C230E8")
        DongalBoard.create( :board_name => "scholars", :board_title => "장학", :board_type => "univ", :board_color => "457BFF")
        DongalBoard.create( :board_name => "sciences", :board_title => "이과대", :board_type => "college", :board_color => "33E8A6")
        DongalBoard.create( :board_name => "socials", :board_title => "사회과학대", :board_type => "college", :board_color => "B3FF38")
        DongalBoard.create( :board_name => "studies", :board_title => "학사", :board_type => "univ", :board_color => "CC234A")
end
