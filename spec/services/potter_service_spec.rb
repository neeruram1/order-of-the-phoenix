require 'rails_helper'

describe PotterService do
    context "#members_by_house" do
      it "returns attributes for Order of the Phoenix members" do
        service = PotterService.new
        search = service.members_by_house("Gryffindor")
        expect(search).to be_a Array
        expect(search.first).to be_a Hash
        member_data = search.first
        expect(member_data).to have_key :name
        expect(member_data).to have_key :house
        expect(member_data[:name]).to eq('Sirius Black')
      end
    end
end
