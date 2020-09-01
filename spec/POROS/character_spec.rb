require "rails_helper"

describe Character do
  it "exists" do
    attrs = {
      name: "Aberforth Dumbledore",
      house: "Gryffindor",
      role: "Owner, Hog's Head Inn",
      patronus: "goat"
    }

    character = Character.new(attrs)

    expect(character).to be_a Character
    expect(character.name).to eq("Aberforth Dumbledore")
    expect(character.role).to eq("Owner, Hog's Head Inn")
    expect(character.house).to eq("Gryffindor")
    expect(character.patronus).to eq("goat")
  end
end
