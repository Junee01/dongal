require 'nokogiri'
require 'open-uri'

class G4DongalBoardNormal < ActiveRecord::Base
	validates :wr_title,:wr_link, :uniqueness => true
	belongs_to :dongal_board

	#일반공지
	normal_url1 = "https://www.dongguk.edu/mbs/kr/jsp/board/list.jsp?boardId=3646&search=&column=&categoryDepth=&categoryId=0&boardType=01&listType=01&command=list&id=kr_010802000000&mcategoryId=0&spage=1"
	normal_url2 = "https://www.dongguk.edu/mbs/kr/jsp/board/list.jsp?boardId=3646&search=&column=&categoryDepth=&categoryId=0&boardType=01&listType=01&command=list&id=kr_010802000000&mcategoryId=0&spage=2"
	normal_url3 = "https://www.dongguk.edu/mbs/kr/jsp/board/list.jsp?boardId=3646&search=&column=&categoryDepth=&categoryId=0&boardType=01&listType=01&command=list&id=kr_010802000000&mcategoryId=0&spage=3"
	normal_url4 = "https://www.dongguk.edu/mbs/kr/jsp/board/list.jsp?boardId=3646&search=&column=&categoryDepth=&categoryId=0&boardType=01&listType=01&command=list&id=kr_010802000000&mcategoryId=0&spage=4"
	#배열에 때려박는다.
	normal_urls = [normal_url1,normal_url2,normal_url3,normal_url4]
	#배열을 for문으로 돈다.
	normal_urls.each do |url|
		#노코기리로 html전체를 data에 때려박는다.
		data = Nokogiri::HTML(open(url))
		#css별로 파싱하여 필요한 데이터만 가져온다.
		@notices = data.css('tbody tr')
		#꿑까지 돈다.
		@notices.each do |notice|
			#첫번째 요소가 숫자라면 우리가 대상으로 하는 공지이므로 수집한다. 아니면 안한다.
			if notice.css('td')[0].text.strip =~ /\A\d+\z/
			G4DongalBoardNormal.create(
				#타이틀 설정
				:wr_title => notice.css('td.title a').text.strip,
				#링크 설정
				:wr_link => "http://www.dongguk.edu/mbs/kr/jsp/board/" + notice.css('td.title a')[0]['href'].strip,
				#작성자 설정
				:wr_writer => notice.css('td')[2].text.strip,
				#조회수 설정
				:wr_hit => notice.css('td')[4].text.strip,
				#작성일 설정
				:wr_created_on => notice.css('td')[3].text.strip
				)
			else
				next
			end
		end
	end

	#학사공지
	study_url1 = "http://www.dongguk.edu/mbs/kr/jsp/board/list.jsp?boardId=3638&search=&column=&categoryDepth=&categoryId=0&boardType=01&listType=01&command=list&id=kr_010801000000&mcategoryId=0&spage=1"
	study_url2 = "http://www.dongguk.edu/mbs/kr/jsp/board/list.jsp?boardId=3638&search=&column=&categoryDepth=&categoryId=0&boardType=01&listType=01&command=list&id=kr_010801000000&mcategoryId=0&spage=2"
	study_url3 = "http://www.dongguk.edu/mbs/kr/jsp/board/list.jsp?boardId=3638&search=&column=&categoryDepth=&categoryId=0&boardType=01&listType=01&command=list&id=kr_010801000000&mcategoryId=0&spage=3"
	study_url4 = "http://www.dongguk.edu/mbs/kr/jsp/board/list.jsp?boardId=3638&search=&column=&categoryDepth=&categoryId=0&boardType=01&listType=01&command=list&id=kr_010801000000&mcategoryId=0&spage=4"
	#배열에 때려박는다.
	study_urls = [study_url1,study_url2,study_url3,study_url4]
	#배열을 for문으로 돈다.
	study_urls.each do |url|
		#노코기리로 html전체를 data에 때려박는다.
		data = Nokogiri::HTML(open(url))
		#css별로 파싱하여 tbody안에 있는 tr 내용들만 가져온다.
		@notices = data.css('tbody tr')
		#각 tr을 for문으로 끝까지 돈다.
		@notices.each do |notice|
			#첫번째 요소가 숫자라면 우리가 대상으로 하는 공지이므로 수집한다. 아니면 안한다.
			if notice.css('td')[0].text.strip =~ /\A\d+\z/
			G4DongalBoardStudy.create(
				#타이틀 설정
				:wr_title => notice.css('td.title a').text.strip,
				#링크 설정
				:wr_link => "http://www.dongguk.edu/mbs/kr/jsp/board/" + notice.css('td.title a')[0]['href'].strip,
				#작성자 설정
				:wr_writer => notice.css('td')[2].text.strip,
				#조회수 설정
				:wr_hit => notice.css('td')[4].text.strip,
				#작성일 설정
				:wr_created_on => notice.css('td')[3].text.strip
				)
			else
				next
			end
		end
	end

	#장학공지
	scholar_url1 = "https://www.dongguk.edu/mbs/kr/jsp/board/list.jsp?boardId=3662&search=&column=&categoryDepth=&categoryId=0&boardType=01&listType=01&command=list&id=kr_010804000000&mcategoryId=0&spage=1"
	scholar_url2 = "https://www.dongguk.edu/mbs/kr/jsp/board/list.jsp?boardId=3662&search=&column=&categoryDepth=&categoryId=0&boardType=01&listType=01&command=list&id=kr_010804000000&mcategoryId=0&spage=2"
	scholar_url3 = "https://www.dongguk.edu/mbs/kr/jsp/board/list.jsp?boardId=3662&search=&column=&categoryDepth=&categoryId=0&boardType=01&listType=01&command=list&id=kr_010804000000&mcategoryId=0&spage=3"
	scholar_url4 = "https://www.dongguk.edu/mbs/kr/jsp/board/list.jsp?boardId=3662&search=&column=&categoryDepth=&categoryId=0&boardType=01&listType=01&command=list&id=kr_010804000000&mcategoryId=0&spage=4"
	#배열에 때려박는다.
	scholar_urls = [scholar_url1,scholar_url2,scholar_url3,scholar_url4]
	#배열을 for문으로 돈다.
	scholar_urls.each do |url|
		#노코기리로 html전체를 data에 때려박는다.
		data = Nokogiri::HTML(open(url))
		#css별로 파싱하여 tbody안에 있는 tr 내용들만 가져온다.
		@notices = data.css('tbody tr')
		#각 tr을 for문으로 끝까지 돈다.
		@notices.each do |notice|
			#첫번째 요소가 숫자라면 우리가 대상으로 하는 공지이므로 수집한다. 아니면 안한다.
			if notice.css('td')[0].text.strip =~ /\A\d+\z/
			G4DongalBoardScholar.create(
				#타이틀 설정
				:wr_title => notice.css('td.title a').text.strip,
				#링크 설정
				:wr_link => "http://www.dongguk.edu/mbs/kr/jsp/board/" + notice.css('td.title a')[0]['href'].strip,
				#작성자 설정
				:wr_writer => notice.css('td')[2].text.strip,
				#조회수 설정
				:wr_hit => notice.css('td')[4].text.strip,
				#작성일 설정
				:wr_created_on => notice.css('td')[3].text.strip
				)
			else
				next
			end
		end
	end

	#국제공지
	global_url1 = "https://www.dongguk.edu/mbs/kr/jsp/board/list.jsp?boardId=9457435&search=&column=&categoryDepth=&categoryId=0&boardType=01&listType=01&command=list&id=kr_010807000000&mcategoryId=0&spage=1"
	global_url2 = "https://www.dongguk.edu/mbs/kr/jsp/board/list.jsp?boardId=9457435&search=&column=&categoryDepth=&categoryId=0&boardType=01&listType=01&command=list&id=kr_010807000000&mcategoryId=0&spage=2"
	global_url3 = "https://www.dongguk.edu/mbs/kr/jsp/board/list.jsp?boardId=9457435&search=&column=&categoryDepth=&categoryId=0&boardType=01&listType=01&command=list&id=kr_010807000000&mcategoryId=0&spage=3"
	global_url4 = "https://www.dongguk.edu/mbs/kr/jsp/board/list.jsp?boardId=9457435&search=&column=&categoryDepth=&categoryId=0&boardType=01&listType=01&command=list&id=kr_010807000000&mcategoryId=0&spage=4"
	#배열에 때려박는다.
	global_urls = [global_url1,global_url2,global_url3,global_url4]
	#배열을 for문으로 돈다.
	global_urls.each do |url|
		#노코기리로 html전체를 data에 때려박는다.
		data = Nokogiri::HTML(open(url))
		#css별로 파싱하여 tbody안에 있는 tr 내용들만 가져온다.
		@notices = data.css('tbody tr')
		#각 tr을 for문으로 끝까지 돈다.
		@notices.each do |notice|
			#첫번째 요소가 숫자라면 우리가 대상으로 하는 공지이므로 수집한다. 아니면 안한다.
			if notice.css('td')[0].text.strip =~ /\A\d+\z/
			G4DongalBoardGlobal.create(
				#타이틀 설정
				:wr_title => notice.css('td.title a').text.strip,
				#링크 설정
				:wr_link => "http://www.dongguk.edu/mbs/kr/jsp/board/" + notice.css('td.title a')[0]['href'].strip,
				#작성자 설정
				:wr_writer => notice.css('td')[2].text.strip,
				#조회수 설정
				:wr_hit => notice.css('td')[4].text.strip,
				#작성일 설정
				:wr_created_on => notice.css('td')[3].text.strip
				)
			else
				next
			end
		end
	end

	#학술/행사공지
	proceed_url1 = "https://www.dongguk.edu/mbs/kr/jsp/board/list.jsp?boardId=11533472&search=&column=&categoryDepth=&categoryId=0&boardType=01&listType=01&command=list&id=kr_010808000000&mcategoryId=0&spage=1"
	proceed_url2 = "https://www.dongguk.edu/mbs/kr/jsp/board/list.jsp?boardId=11533472&search=&column=&categoryDepth=&categoryId=0&boardType=01&listType=01&command=list&id=kr_010808000000&mcategoryId=0&spage=2"
	proceed_url3 = "https://www.dongguk.edu/mbs/kr/jsp/board/list.jsp?boardId=11533472&search=&column=&categoryDepth=&categoryId=0&boardType=01&listType=01&command=list&id=kr_010808000000&mcategoryId=0&spage=2"
	proceed_url4 = "https://www.dongguk.edu/mbs/kr/jsp/board/list.jsp?boardId=11533472&search=&column=&categoryDepth=&categoryId=0&boardType=01&listType=01&command=list&id=kr_010808000000&mcategoryId=0&spage=2"
	#배열에 때려박는다.
	proceed_urls = [proceed_url1,proceed_url2,proceed_url3,proceed_url4]
	#배열을 for문으로 돈다.
	proceed_urls.each do |url|
		#노코기리로 html전체를 data에 때려박는다.
		data = Nokogiri::HTML(open(url))
		#css별로 파싱하여 tbody안에 있는 tr 내용들만 가져온다.
		@notices = data.css('tbody tr')
		#각 tr을 for문으로 끝까지 돈다.
		@notices.each do |notice|
			#첫번째 요소가 숫자라면 우리가 대상으로 하는 공지이므로 수집한다. 아니면 안한다.
			if notice.css('td')[0].text.strip =~ /\A\d+\z/
			G4DongalBoardProceeding.create(
				#타이틀 설정
				:wr_title => notice.css('td.title a').text.strip,
				#링크 설정
				:wr_link => "http://www.dongguk.edu/mbs/kr/jsp/board/" + notice.css('td.title a')[0]['href'].strip,
				#작성자 설정
				:wr_writer => notice.css('td')[2].text.strip,
				#조회수 설정
				:wr_hit => notice.css('td')[4].text.strip,
				#작성일 설정
				:wr_created_on => notice.css('td')[3].text.strip
				)
			else
				next
			end
		end
	end

	#입학공지
	entrance_url1 = "https://www.dongguk.edu/mbs/kr/jsp/board/list.jsp?boardId=3654&search=&column=&categoryDepth=&categoryId=0&boardType=01&listType=01&command=list&id=kr_010803000000&mcategoryId=0&spage=1"
	entrance_url2 = "https://www.dongguk.edu/mbs/kr/jsp/board/list.jsp?boardId=3654&search=&column=&categoryDepth=&categoryId=0&boardType=01&listType=01&command=list&id=kr_010803000000&mcategoryId=0&spage=2"
	entrance_url3 = "https://www.dongguk.edu/mbs/kr/jsp/board/list.jsp?boardId=3654&search=&column=&categoryDepth=&categoryId=0&boardType=01&listType=01&command=list&id=kr_010803000000&mcategoryId=0&spage=3"
	entrance_url4 = "https://www.dongguk.edu/mbs/kr/jsp/board/list.jsp?boardId=3654&search=&column=&categoryDepth=&categoryId=0&boardType=01&listType=01&command=list&id=kr_010803000000&mcategoryId=0&spage=4"
	#배열에 때려박는다.
	entrance_urls = [entrance_url1,entrance_url2,entrance_url3,entrance_url4]
	#배열을 for문으로 돈다.
	entrance_urls.each do |url|
		#노코기리로 html전체를 data에 때려박는다.
		data = Nokogiri::HTML(open(url))
		#css별로 파싱하여 tbody안에 있는 tr 내용들만 가져온다.
		@notices = data.css('tbody tr')
		#각 tr을 for문으로 끝까지 돈다.
		@notices.each do |notice|
			#첫번째 요소가 숫자라면 우리가 대상으로 하는 공지이므로 수집한다. 아니면 안한다.
			if notice.css('td')[0].text.strip =~ /\A\d+\z/
			G4DongalBoardEntrance.create(
				#타이틀 설정
				:wr_title => notice.css('td.title a').text.strip,
				#링크 설정
				:wr_link => "http://www.dongguk.edu/mbs/kr/jsp/board/" + notice.css('td.title a')[0]['href'].strip,
				#작성자 설정
				:wr_writer => notice.css('td')[2].text.strip,
				#조회수 설정
				:wr_hit => notice.css('td')[4].text.strip,
				#작성일 설정
				:wr_created_on => notice.css('td')[3].text.strip
				)
			else
				next
			end
		end
	end

	#불교대학
	b_url1 = "http://bs.dongguk.edu/bbs/board.php?bo_table=bs5_1&page=1"
	b_url2 = "http://bs.dongguk.edu/bbs/board.php?bo_table=bs5_1&page=2"
	b_url3 = "http://bs.dongguk.edu/bbs/board.php?bo_table=bs5_1&page=3"
	#배열에 때려박는다.
	b_urls = [b_url1,b_url2,b_url3]
	#배열을 for문으로 돈다.
	b_urls.each do |url|
		#노코기리로 html전체를 data에 때려박는다.
		data = Nokogiri::HTML(open(url))
		#css별로 파싱하여 tbody안에 있는 tr 내용들만 가져온다.
		@notices = data.css('table')[2].css('tr')
		#각 tr을 for문으로 끝까지 돈다.
		@notices.each do |notice|
			#첫번째 요소가 숫자라면 우리가 대상으로 하는 공지이므로 수집한다. 아니면 안한다.
			if notice.css('td')[0].css('span').text.strip =~ /\A\d+\z/
			G4DongalBoardB.create(
				#타이틀 설정
				:wr_title => notice.css('td')[1].css('a').text.strip,
				#링크 설정
				:wr_link => "http://edu.dongguk.edu/" + notice.css('td')[1].css('a')[0]['href'].strip.sub(/../,""),
				#작성자 설정
				:wr_writer => notice.css('td')[2].css('span').text.strip,
				#조회수 설정
				:wr_hit => notice.css('td')[3].css('span').text.strip,
				#작성일 설정
				:wr_created_on => notice.css('td')[4].css('span').text.strip
				)
			else
				next
			end
		end
	end

	#문과대학
	liberal_url1 = "http://liberal.dongguk.edu/bbs/board.php?bo_table=lib4_1&page=1"
	liberal_url2 = "http://liberal.dongguk.edu/bbs/board.php?bo_table=lib4_1&page=2"
	liberal_url3 = "http://liberal.dongguk.edu/bbs/board.php?bo_table=lib4_1&page=3"
	#배열에 때려박는다.
	liberal_urls = [liberal_url1,liberal_url2,liberal_url3]
	#배열을 for문으로 돈다.
	liberal_urls.each do |url|
		#노코기리로 html전체를 data에 때려박는다.
		data = Nokogiri::HTML(open(url))
		#css별로 파싱하여 tbody안에 있는 tr 내용들만 가져온다.
		@notices = data.css('table')[2].css('tr')
		#각 tr을 for문으로 끝까지 돈다.
		@notices.each do |notice|
			#첫번째 요소가 숫자라면 우리가 대상으로 하는 공지이므로 수집한다. 아니면 안한다.
			if notice.css('td')[0].css('span').text.strip =~ /\A\d+\z/
			G4DongalBoardLiberal.create(
				#타이틀 설정
				:wr_title => notice.css('td')[1].css('a').text.strip,
				#링크 설정
				:wr_link => "http://liberal.dongguk.edu/" + notice.css('td')[1].css('a')[0]['href'].strip.sub(/../,""),
				#작성자 설정
				:wr_writer => notice.css('td')[2].css('span').text.strip,
				#조회수 설정
				:wr_hit => notice.css('td')[3].css('span').text.strip,
				#작성일 설정
				:wr_created_on => notice.css('td')[4].css('span').text.strip
				)
			else
				next
			end
		end
	end

	#이과공지
	science_url1 = "http://science.dongguk.edu/bbs/board.php?bo_table=sci3_1&page=1"
	science_url2 = "http://science.dongguk.edu/bbs/board.php?bo_table=sci3_1&page=2"
	science_url3 = "http://science.dongguk.edu/bbs/board.php?bo_table=sci3_1&page=3"
	#배열에 때려박는다.
	science_urls = [science_url1,science_url2,science_url3]
	#배열을 for문으로 돈다.
	science_urls.each do |url|
		#노코기리로 html전체를 data에 때려박는다.
		data = Nokogiri::HTML(open(url))
		#css별로 파싱하여 tbody안에 있는 tr 내용들만 가져온다.
		@notices = data.css('table')[2].css('tr')
		#각 tr을 for문으로 끝까지 돈다.
		@notices.each do |notice|
			#첫번째 요소가 숫자라면 우리가 대상으로 하는 공지이므로 수집한다. 아니면 안한다.
			if notice.css('td')[0].css('span').text.strip =~ /\A\d+\z/
			G4DongalBoardScience.create(
				#타이틀 설정
				:wr_title => notice.css('td')[1].css('a').text.strip,
				#링크 설정
				:wr_link => "http://science.dongguk.edu/" + notice.css('td')[1].css('a')[0]['href'].strip.sub(/../,""),
				#작성자 설정
				:wr_writer => notice.css('td')[2].css('span').text.strip,
				#조회수 설정
				:wr_hit => notice.css('td')[3].css('span').text.strip,
				#작성일 설정
				:wr_created_on => notice.css('td')[4].css('span').text.strip
				)
			else
				next
			end
		end
	end

	#법과공지
	law_url1 = "http://law.dongguk.edu/bbs/board.php?bo_table=law2_1&page=1"
	law_url2 = "http://law.dongguk.edu/bbs/board.php?bo_table=law2_1&page=2"
	law_url3 = "http://law.dongguk.edu/bbs/board.php?bo_table=law2_1&page=3"
	#배열에 때려박는다.
	law_urls = [law_url1,law_url2,law_url3]
	#배열을 for문으로 돈다.
	law_urls.each do |url|
		#노코기리로 html전체를 data에 때려박는다.
		data = Nokogiri::HTML(open(url))
		#css별로 파싱하여 tbody안에 있는 tr 내용들만 가져온다.
		@notices = data.css('table')[3].css('tr')
		#각 tr을 for문으로 끝까지 돈다.
		@notices.each do |notice|
			#첫번째 요소가 숫자라면 우리가 대상으로 하는 공지이므로 수집한다. 아니면 안한다.
			if notice.css('td')[0].css('span').text.strip =~ /\A\d+\z/
			G4DongalBoardLaw.create(
				#타이틀 설정
				:wr_title => '[' + notice.css('td')[1].css('span a').text + ']' + notice.css('td')[1].css('a')[1].text.strip,
				#링크 설정
				:wr_link => "http://law.dongguk.edu" + notice.css('td')[1].css('a')[1]['href'].strip.sub(/../,""),
				#작성자 설정
				:wr_writer => notice.css('td')[2].css('span').text.strip,
				#조회수 설정
				:wr_hit => notice.css('td')[3].css('span').text.strip,
				#작성일 설정
				:wr_created_on => notice.css('td')[4].css('span').text.strip
				)
			else
				next
			end
		end
	end

	#사회과학대학
	social_url1 = "http://social.dongguk.edu/bbs/board.php?bo_table=social3_1&page=1"
	social_url2 = "http://social.dongguk.edu/bbs/board.php?bo_table=social3_1&page=2"
	social_url3 = "http://social.dongguk.edu/bbs/board.php?bo_table=social3_1&page=3"
	#배열에 때려박는다.
	social_urls = [social_url1,social_url2,social_url3]
	#배열을 for문으로 돈다.
	social_urls.each do |url|
		#노코기리로 html전체를 data에 때려박는다.
		data = Nokogiri::HTML(open(url))
		#css별로 파싱하여 tbody안에 있는 tr 내용들만 가져온다.
		@notices = data.css('table')[2].css('tr')
		#각 tr을 for문으로 끝까지 돈다.
		@notices.each do |notice|
			#첫번째 요소가 숫자라면 우리가 대상으로 하는 공지이므로 수집한다. 아니면 안한다.
			if notice.css('td')[0].css('span').text.strip =~ /\A\d+\z/
			G4DongalBoardSocial.create(
				#타이틀 설정
				:wr_title => notice.css('td')[1].css('a').text.strip,
				#링크 설정
				:wr_link => "http://social.dongguk.edu/" + notice.css('td')[1].css('a')[0]['href'].strip.sub(/../,""),
				#작성자 설정
				:wr_writer => notice.css('td')[2].css('span').text.strip,
				#조회수 설정
				:wr_hit => notice.css('td')[3].css('span').text.strip,
				#작성일 설정
				:wr_created_on => notice.css('td')[4].css('span').text.strip
				)
			else
				next
			end
		end
	end

	#경영대학
	sba_url1 = "http://sba.dongguk.edu/bbs/board.php?bo_table=sba4_1&page=1"
	sba_url2 = "http://sba.dongguk.edu/bbs/board.php?bo_table=sba4_1&page=2"
	sba_url3 = "http://sba.dongguk.edu/bbs/board.php?bo_table=sba4_1&page=3"
	#배열에 때려박는다.
	sba_urls = [sba_url1,sba_url2,sba_url3]
	#배열을 for문으로 돈다.
	sba_urls.each do |url|
		#노코기리로 html전체를 data에 때려박는다.
		data = Nokogiri::HTML(open(url))
		#css별로 파싱하여 tbody안에 있는 tr 내용들만 가져온다.
		@notices = data.css('table')[2].css('tr')
		#각 tr을 for문으로 끝까지 돈다.
		@notices.each do |notice|
			#첫번째 요소가 숫자라면 우리가 대상으로 하는 공지이므로 수집한다. 아니면 안한다.
			if notice.css('td')[0].css('span').text.strip =~ /\A\d+\z/
			G4DongalBoardSba.create(
				#타이틀 설정
				:wr_title => notice.css('td')[1].css('a').text.strip,
				#링크 설정
				:wr_link => "http://sba.dongguk.edu/" + notice.css('td')[1].css('a')[0]['href'].strip.sub(/../,""),
				#작성자 설정
				:wr_writer => notice.css('td')[2].css('span').text.strip,
				#조회수 설정
				:wr_hit => notice.css('td')[3].css('span').text.strip,
				#작성일 설정
				:wr_created_on => notice.css('td')[4].css('span').text.strip
				)
			else
				next
			end
		end
	end

	#바이오시스템대학
	life_url1 = "http://life.dongguk.edu/bbs/board.php?bo_table=life4_1&page=1"
	life_url2 = "http://life.dongguk.edu/bbs/board.php?bo_table=life4_1&page=2"
	life_url3 = "http://life.dongguk.edu/bbs/board.php?bo_table=life4_1&page=3"
	#배열에 때려박는다.
	life_urls = [life_url1,life_url2,life_url3]
	#배열을 for문으로 돈다.
	life_urls.each do |url|
		#노코기리로 html전체를 data에 때려박는다.
		data = Nokogiri::HTML(open(url))
		#css별로 파싱하여 tbody안에 있는 tr 내용들만 가져온다.
		@notices = data.css('table')[2].css('tr')
		#각 tr을 for문으로 끝까지 돈다.
		@notices.each do |notice|
			#첫번째 요소가 숫자라면 우리가 대상으로 하는 공지이므로 수집한다. 아니면 안한다.
			if notice.css('td')[0].css('span').text.strip =~ /\A\d+\z/
			G4DongalBoardLife.create(
				#타이틀 설정
				:wr_title => notice.css('td')[1].css('a').text.strip,
				#링크 설정
				:wr_link => "http://life.dongguk.edu/" + notice.css('td')[1].css('a')[0]['href'].strip.sub(/../,""),
				#작성자 설정
				:wr_writer => notice.css('td')[2].css('span').text.strip,
				#조회수 설정
				:wr_hit => notice.css('td')[3].css('span').text.strip,
				#작성일 설정
				:wr_created_on => notice.css('td')[4].css('span').text.strip
				)
			else
				next
			end
		end
	end

	#공과대학
	engineer_url1 = "http://engineer.dongguk.edu/bbs/board.php?bo_table=en6_1&page=1"
	engineer_url2 = "http://engineer.dongguk.edu/bbs/board.php?bo_table=en6_1&page=2"
	engineer_url3 = "http://engineer.dongguk.edu/bbs/board.php?bo_table=en6_1&page=3"
	#배열에 때려박는다.
	engineer_urls = [engineer_url1,engineer_url2,engineer_url3]
	#배열을 for문으로 돈다.
	engineer_urls.each do |url|
		#노코기리로 html전체를 data에 때려박는다.
		data = Nokogiri::HTML(open(url))
		#css별로 파싱하여 tbody안에 있는 tr 내용들만 가져온다.
		@notices = data.css('table')[2].css('tr')
		#각 tr을 for문으로 끝까지 돈다.
		@notices.each do |notice|
			#첫번째 요소가 숫자라면 우리가 대상으로 하는 공지이므로 수집한다. 아니면 안한다.
			if notice.css('td')[0].css('span').text.strip =~ /\A\d+\z/
			G4DongalBoardEngineer.create(
				#타이틀 설정
				:wr_title => notice.css('td')[1].css('a').text.strip,
				#링크 설정
				:wr_link => "http://engineer.dongguk.edu/" + notice.css('td')[1].css('a')[0]['href'].strip.sub(/../,""),
				#작성자 설정
				:wr_writer => notice.css('td')[2].css('span').text.strip,
				#조회수 설정
				:wr_hit => notice.css('td')[3].css('span').text.strip,
				#작성일 설정
				:wr_created_on => notice.css('td')[4].css('span').text.strip
				)
			else
				next
			end
		end
	end

	#사범공지
	edu_url1 = "http://edu.dongguk.edu/bbs/board.php?bo_table=edu3_1&page=1"
	edu_url2 = "http://edu.dongguk.edu/bbs/board.php?bo_table=edu3_1&page=2"
	edu_url3 = "http://edu.dongguk.edu/bbs/board.php?bo_table=edu3_1&page=3"
	#배열에 때려박는다.
	edu_urls = [edu_url1,edu_url2,edu_url3]
	#배열을 for문으로 돈다.
	edu_urls.each do |url|
		#노코기리로 html전체를 data에 때려박는다.
		data = Nokogiri::HTML(open(url))
		#css별로 파싱하여 tbody안에 있는 tr 내용들만 가져온다.
		@notices = data.css('table')[2].css('tr')
		#각 tr을 for문으로 끝까지 돈다.
		@notices.each do |notice|
			#첫번째 요소가 숫자라면 우리가 대상으로 하는 공지이므로 수집한다. 아니면 안한다.
			if notice.css('td')[0].css('span').text.strip =~ /\A\d+\z/
			G4DongalBoardEdu.create(
				#타이틀 설정
				:wr_title => notice.css('td')[1].css('a').text.strip,
				#링크 설정
				:wr_link => "http://edu.dongguk.edu/" + notice.css('td')[1].css('a')[0]['href'].strip.sub(/../,""),
				#작성자 설정
				:wr_writer => notice.css('td')[2].css('span').text.strip,
				#조회수 설정
				:wr_hit => notice.css('td')[3].css('span').text.strip,
				#작성일 설정
				:wr_created_on => notice.css('td')[4].css('span').text.strip
				)
			else
				next
			end
		end
	end

	#예술대학
	art_url1 = "http://art.dongguk.edu/bbs/board.php?bo_table=art4_1&page=1"
	art_url2 = "http://art.dongguk.edu/bbs/board.php?bo_table=art4_1&page=2"
	art_url3 = "http://art.dongguk.edu/bbs/board.php?bo_table=art4_1&page=3"
	#배열에 때려박는다.
	art_urls = [art_url1,art_url2,art_url3]
	#배열을 for문으로 돈다.
	art_urls.each do |url|
		#노코기리로 html전체를 data에 때려박는다.
		data = Nokogiri::HTML(open(url))
		#css별로 파싱하여 tbody안에 있는 tr 내용들만 가져온다.
		@notices = data.css('table')[2].css('tr')
		#각 tr을 for문으로 끝까지 돈다.
		@notices.each do |notice|
			#첫번째 요소가 숫자라면 우리가 대상으로 하는 공지이므로 수집한다. 아니면 안한다.
			if notice.css('td')[0].css('span').text.strip =~ /\A\d+\z/
			G4DongalBoardArt.create(
				#타이틀 설정
				:wr_title => notice.css('td')[1].css('a').text.strip,
				#링크 설정
				:wr_link => "http://art.dongguk.edu/" + notice.css('td')[1].css('a')[0]['href'].strip.sub(/../,""),
				#작성자 설정
				:wr_writer => notice.css('td')[2].css('span').text.strip,
				#조회수 설정
				:wr_hit => notice.css('td')[3].css('span').text.strip,
				#작성일 설정
				:wr_created_on => notice.css('td')[4].css('span').text.strip
				)
			else
				next
			end
		end
	end

	#약학대학
	pharm_url1 = "http://pharm.dongguk.edu/bbs/board.php?bo_table=pharm5_1&page=1"
	pharm_url2 = "http://pharm.dongguk.edu/bbs/board.php?bo_table=pharm5_1&page=2"
	pharm_url3 = "http://pharm.dongguk.edu/bbs/board.php?bo_table=pharm5_1&page=3"
	#배열에 때려박는다.
	pharm_urls = [pharm_url1,pharm_url2,pharm_url3]
	#배열을 for문으로 돈다.
	pharm_urls.each do |url|
		#노코기리로 html전체를 data에 때려박는다.
		data = Nokogiri::HTML(open(url))
		#css별로 파싱하여 tbody안에 있는 tr 내용들만 가져온다.
		@notices = data.css('table')[2].css('tr')
		#각 tr을 for문으로 끝까지 돈다.
		@notices.each do |notice|
			#첫번째 요소가 숫자라면 우리가 대상으로 하는 공지이므로 수집한다. 아니면 안한다.
			if notice.css('td')[0].css('span').text.strip =~ /\A\d+\z/
			G4DongalBoardPharm.create(
				#타이틀 설정
				:wr_title => notice.css('td')[1].css('a').text.strip,
				#링크 설정
				:wr_link => "http://pharm.dongguk.edu/" + notice.css('td')[1].css('a')[0]['href'].strip.sub(/../,""),
				#작성자 설정
				:wr_writer => notice.css('td')[2].css('span').text.strip,
				#조회수 설정
				:wr_hit => notice.css('td')[3].css('span').text.strip,
				#작성일 설정
				:wr_created_on => notice.css('td')[4].css('span').text.strip
				)
			else
				next
			end
		end
	end
end
