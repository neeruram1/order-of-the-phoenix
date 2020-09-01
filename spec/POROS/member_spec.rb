require "rails_helper"

describe Member do
  it "exists" do
    attrs = {
      name: "Aberforth Dumbledore",
      house: "Gryffindor",
      role: "Owner, Hog's Head Inn",
      patronus: "goat"
    }

    member = Member.new(attrs)

    expect(member).to be_a Member
    expect(member.name).to eq("Aberforth Dumbledore")
    expect(member.role).to eq("Owner, Hog's Head Inn")
    expect(member.house).to eq("Gryffindor")
    expect(member.patronus).to eq("goat")
  end

  it ".has_role?" do
    attrs = {
      name: "Aberforth Dumbledore",
      house: "Gryffindor",
      patronus: "goat"
    }

    member = Member.new(attrs)
    expect(member.has_role?).to eq(false)
  end

  it ".has_patronus?" do
    attrs = {
      name: "Aberforth Dumbledore",
      house: "Gryffindor",
      role: "Owner, Hog's Head Inn",
    }

    member = Member.new(attrs)
    expect(member.has_patronus?).to eq(false)
  end
end
