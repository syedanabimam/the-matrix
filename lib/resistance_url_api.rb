require 'httparty'

class ResistanceUrlApi
  API_URL = 'http://localhost:3100/api/v1/agents'

  def unique_url
    response = HTTParty.get(API_URL)
    # TODO more error checking (500 error, etc)
    json = JSON.parse(response.body)
    json['url']
  end
end
