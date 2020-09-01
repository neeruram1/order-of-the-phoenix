class SearchResults

  def self.members_by_house(house)
    json = PotterService.members_by_house(house)
    @members = json.map do |member_data|
      Member.new(member_data)
    end
  end
end
