class PotterService

  def members_by_house(house)
    to_json("characters?orderOfThePhoenix=true&house=#{house}")
  end

  private

  def conn
    Faraday.new(url: "https://www.potterapi.com/v1/") do |f|
      f.params[:key] = ENV['POTTER_API_KEY']
    end
  end

  def to_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end
