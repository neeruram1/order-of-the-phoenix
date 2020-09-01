class SearchController < ApplicationController
  def index
    house = params[:house]

    conn = Faraday.new(url: "https://www.potterapi.com/v1/") do |f|
      f.params[:key] = ENV['POTTER_API_KEY']
    end

    response = conn.get("characters?orderOfThePhoenix=true&house=#{house}")
    binding.pry
  end
end
