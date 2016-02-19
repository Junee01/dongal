require 'net/http'

class ConnectRequest
	def self.request
		Net::HTTP.get(URI('http://0.0.0.0:3000'))
		Net::HTTP.get(URI('http://0.0.0.0:3000/dongal_notices'))
	end
end
