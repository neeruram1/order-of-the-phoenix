class PotterService

  def self.members_by_house(house)
    conn = Faraday.new(url: "https://www.potterapi.com/v1/") do |f|
      f.params[:key] = ENV['POTTER_API_KEY']
    end

    response = conn.get("characters?orderOfThePhoenix=true&house=#{house}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
