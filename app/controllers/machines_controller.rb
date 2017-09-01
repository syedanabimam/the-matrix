# require 'url_api'

class MachinesController < ApplicationController

  def get_machines
    agents_json = HTTParty.get("http://localhost:3200/api/v1/agents", :headers => { 'Content-Type' => 'application/json', 'Accept' => 'application/json'})
    @agents = JSON.parse(agents_json.body, symbolize_names: true)

    sentinels_json = HTTParty.get("http://localhost:3200/api/v1/sentinels", :headers => { 'Content-Type' => 'application/json', 'Accept' => 'application/json'})
    @sentinels = JSON.parse(sentinels_json.body, symbolize_names: true)
  end
end
