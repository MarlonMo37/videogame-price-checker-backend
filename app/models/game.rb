class Game < ApplicationRecord

    def self.games
        url = URI("https://api.rawg.io/api/platforms?key=9f9d2e7b7d54451099ba16f0a97cf395")

        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE

        request = Net::HTTP::Get.new(url)
        # request["x-rapidapi-key"] = '9f9d2e7b7d54451099ba16f0a97cf395'
        # request["x-rapidapi-host"] = 'rawg-video-games-database.p.rapidapi.com'
        
        response = http.request(request)
        req = JSON.parse(response.read_body)
        byebug
        puts response.read_body
    end
end
