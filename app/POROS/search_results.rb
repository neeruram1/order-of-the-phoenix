class SearchResults
  
  def order_of_the_phoenix_members(house)
    conn = Faraday.new(url: "https://www.potterapi.com/v1/") do |f|
      f.params[:key] = ENV['POTTER_API_KEY']
    end

    response = conn.get("characters?orderOfThePhoenix=true&house=#{house}")
    results = JSON.parse(response.body, symbolize_names: true)
    @members = results.map do |member_data|
      Member.new(member_data)
    end
  end
end
