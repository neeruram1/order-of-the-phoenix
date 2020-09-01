class SearchController < ApplicationController
  def index
    house = params[:house]

    conn = Faraday.new(url: "https://www.potterapi.com/v1/") do |f|
      f.params[:key] = ENV['POTTER_API_KEY']
    end

    response = conn.get("characters?orderOfThePhoenix=true&house=#{house}")
    results = JSON.parse(response.body, symbolize_names: true)
    @characters = results.map do |character_data|
      Character.new(character_data)
    end
  end
end
