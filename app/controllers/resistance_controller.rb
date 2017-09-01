class ResistanceController < ApplicationController
  def get_resistance
    resistance_members_json = HTTParty.get("http://localhost:3100/api/v1/resistance_members", :headers => { 'Content-Type' => 'application/json', 'Accept' => 'application/json'})
    @resistance_members = JSON.parse(resistance_members_json.body, symbolize_names: true)

    resistance_ships_json = HTTParty.get("http://localhost:3100/api/v1/resistance_ships", :headers => { 'Content-Type' => 'application/json', 'Accept' => 'application/json'})
    @resistance_ships = JSON.parse(resistance_ships_json.body, symbolize_names: true)
  end
end
